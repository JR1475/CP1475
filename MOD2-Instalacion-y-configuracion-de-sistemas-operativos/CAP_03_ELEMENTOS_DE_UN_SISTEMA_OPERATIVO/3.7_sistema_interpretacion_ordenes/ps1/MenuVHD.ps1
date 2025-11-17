<#
.SYNOPSIS
Script de PowerShell para gestionar VHDs de arranque nativo basado en el
ejercicio "Full_install_sysprep.pdf".
Permite crear y eliminar sistemas VHD ("Mañanas" y "Tardes").

.DESCRIPTION
Este script DEBE ejecutarse como Administrador.
Presenta un menú con las siguientes opciones:
1. Limpiar sistema: Elimina los VHDs C:\VHDs\Mananas.vhdx y C:\VHDs\Tardes.vhdx
   y busca y elimina las entradas de BCD correspondientes por su descripción.
2. Crear sistemas VHD: Solicita la ruta a un ISO de Windows 10, luego
   crea, formatea, aplica la imagen (índice 6, como en el PDF) y crea
   entradas de arranque BCD para "Mañanas" y "Tardes".
3. Salir: Termina el script.

.NOTES
Autor: Gemini
Basado en: Full_install_sysprep.pdf
Requisitos: Ejecutar como Administrador.
#>

# --- Verificación de Administrador ---
$principal = [Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()
if (-not $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Warning "Este script debe ejecutarse como Administrador."
    Write-Warning "Haz clic derecho sobre el script y selecciona 'Ejecutar como administrador'."
    Start-Sleep -Seconds 10
    Exit
}

# --- Función Opción 2: Crear Sistemas VHD ---
function Crear-SistemasVHD {
    Write-Host "--- Iniciando Creación de Sistemas VHD ---" -ForegroundColor Cyan

    # 1. Solicitar ruta del ISO
    $isoPath = Read-Host "Introduce la ruta completa a la imagen ISO de Windows 10 (ej: D:\ISOs\Win10_22H2.iso)"
    
    if (-not (Test-Path $isoPath -PathType Leaf)) {
        Write-Error "Error: El archivo ISO no se encuentra en '$isoPath'."
        Start-Sleep -Seconds 5
        return
    }

    # 2. Definir variables (basadas en el PDF)
    $vhdFolder = "C:\VHDs"
    $vhdNames = @("Mananas", "Tardes")
    $vhdSize = 30GB

    # 3. Crear carpeta de VHDs si no existe
    if (-not (Test-Path $vhdFolder)) {
        Write-Host "Creando carpeta $vhdFolder..."
        New-Item -Path $vhdFolder -ItemType Directory | Out-Null
    }

    # 4. Montar ISO de Windows 10
    Write-Host "Montando imagen ISO..."
    try {
        $isoDrive = Mount-DiskImage -ImagePath $isoPath -PassThru | Get-Volume
        $isoLetter = $isoDrive.DriveLetter
        Write-Host "ISO montada en la unidad ${isoLetter}:"
    }
    catch {
        Write-Error "No se pudo montar la imagen ISO. Error: $_"
        Start-Sleep -Seconds 5
        return
    }

    # 5. Verificar ruta de install.wim
    $wimPath = Join-Path -Path "${isoLetter}:\" -ChildPath "sources\install.wim"
    if (-not (Test-Path $wimPath)) {
        Write-Error "Error: No se encuentra 'install.wim' en la ruta ${isoLetter}:\sources\"
        Write-Warning "Desmontando ISO..."
        Dismount-DiskImage -ImagePath $isoPath
        Start-Sleep -Seconds 5
        return
    }

    # 5.5. Obtener y mostrar índices de la imagen
    Write-Host "--- Obteniendo información de las imágenes (Índices) ---" -ForegroundColor Cyan
    try {
        # El comando dism /get-imageinfo puede tener texto que no es UTF-8, usamos Out-String
        dism /Get-ImageInfo /ImageFile:$wimPath | Out-String
    } catch {
        Write-Error "No se pudo obtener la información de la imagen desde '$wimPath'."
        Dismount-DiskImage -ImagePath $isoPath
        Start-Sleep -Seconds 5
        return
    }
    
    $imageIndex = Read-Host "De la lista anterior, introduce el NÚMERO de Índice (Index) que deseas instalar (ej: 6 para Pro)"
    
    # Verificación simple para asegurar que es un número
    if ($imageIndex -notmatch "^\d+$") {
        Write-Error "Índice no válido. Debe ser un número."
        Dismount-DiskImage -ImagePath $isoPath
        Start-Sleep -Seconds 5
        return
    }


    # 6. Bucle para crear cada VHD
    foreach ($name in $vhdNames) {
        Write-Host "--- Procesando $name ---" -ForegroundColor Yellow
        $vhdPath = Join-Path -Path $vhdFolder -ChildPath "$name.vhdx"

        # 6.1. Crear VHD
        if (Test-Path $vhdPath) {
            Write-Warning "El archivo VHD '$vhdPath' ya existe. Se omitirá la creación."
        } else {
            Write-Host "Creando VHD en '$vhdPath'..."
            New-VHD -Path $vhdPath -Dynamic -SizeBytes $vhdSize | Out-Null
        }

        # 6.2. Montar, inicializar y formatear VHD (FASE 5, PASO 6.1)
        Write-Host "Montando y formateando VHD $name..."
        $vhdLetter = $null
        try {
            $disk = Mount-VHD -Path $vhdPath -PassThru | Get-Disk
            Initialize-Disk -Number $disk.Number -PartitionStyle GPT -ErrorAction SilentlyContinue
            $partition = New-Partition -DiskNumber $disk.Number -UseMaximumSize -AssignDriveLetter
            $vhdLetter = $partition.DriveLetter
            Format-Volume -DriveLetter $vhdLetter -FileSystem NTFS -NewFileSystemLabel $name -Confirm:$false -Force -ErrorAction Stop
            Write-Host "VHD $name montado en la unidad ${vhdLetter}:"
        }
        catch {
            Write-Error "Falló el montaje o formato del VHD. Error: $_"
            if ($vhdPath) { Dismount-VHD -Path $vhdPath -ErrorAction SilentlyContinue }
            continue # Saltar al siguiente VHD
        }

        # 6.3. Aplicar imagen DISM (FASE 5, PASO 6.3)
        $applyDir = "${vhdLetter}:\"
        Write-Host "Aplicando imagen de Windows 10 (Índice $imageIndex) a $name en $applyDir..."
        Write-Host "Esto puede tardar entre 10 y 15 minutos."
        
        # Usamos el índice seleccionado por el usuario
        dism /Apply-Image /ImageFile:$wimPath /Index:$imageIndex /ApplyDir:$applyDir /Quiet
        
        if ($LASTEXITCODE -ne 0) {
            Write-Error "Falló la aplicación de DISM. Código de salida: $LASTEXITCODE"
            Dismount-VHD -Path $vhdPath
            continue
        }

        # 6.4. Crear entrada de arranque (FASE 5, PASO 6.3 - Cambiado a método bcdedit /copy)
        Write-Host "Creando entrada de arranque BCD para $name (método bcdedit /copy)..."
        
        try {
            # 1. Copiar la entrada actual. El parámetro /d $name establece la descripción.
            # La salida de bcdedit puede estar en español (ej: "La entrada se ha copiado...")
            $copyOutput = bcdedit /copy "{current}" /d $name
            
            # 2. Extraer el GUID de la salida
            $guid = $null
            if ($copyOutput -match "(\{.*\})") {
                $guid = $matches[1]
            } else {
                Write-Error "No se pudo extraer el GUID de la salida de 'bcdedit /copy'."
                Write-Error "Salida: $copyOutput"
                Dismount-VHD -Path $vhdPath
                continue
            }

            Write-Host "Entrada copiada. Nuevo GUID: $guid"

            # 3. Establecer el 'device' y 'osdevice' apuntando al VHD
            # El formato DEBE ser: vhd=[C:]\VHDs\Mananas.vhdx
            # FIX: Añadimos el prefijo 'vhd=' que bcdedit requiere para rutas de VHD.
            $bcdDevicePath = "vhd=" + $vhdPath.Replace('C:','[C:]')
            
            bcdedit /set $guid device $bcdDevicePath
            if ($LASTEXITCODE -ne 0) {
                Write-Error "Falló 'bcdedit /set device'. Código: $LASTEXITCODE"
                Dismount-VHD -Path $vhdPath
                continue
            }

            bcdedit /set $guid osdevice $bcdDevicePath
            if ($LASTEXITCODE -ne 0) {
                Write-Error "Falló 'bcdedit /set osdevice'. Código: $LASTEXITCODE"
                Dismount-VHD -Path $vhdPath
                continue
            }
            
            Write-Host "Entrada BCD configurada correctamente para $name."

        } catch {
            Write-Error "Falló el bloque de creación BCD. Error: $_"
            Dismount-VHD -Path $vhdPath
            continue
        }


        # 6.5. (Opcional) Renombrar la descripción en BCD
        # Esta sección ya no es necesaria, ya que 'bcdedit /copy /d $name' establece la descripción.
        
        
        # 6.6. Desmontar VHD
        Write-Host "Desmontando VHD $name..."
        Dismount-VHD -Path $vhdPath

        Write-Host "--- Proceso para $name completado ---" -ForegroundColor Green
    }

    # 7. Desmontar ISO
    Write-Host "Desmontando imagen ISO..."
    Dismount-DiskImage -ImagePath $isoPath

    Write-Host "Proceso de creación completado." -ForegroundColor Green
    Start-Sleep -Seconds 5
}

# --- Función Opción 1: Limpiar Sistema ---
function Limpiar-SistemasVHD {
    Write-Host "--- Iniciando Limpieza del Sistema ---" -ForegroundColor Cyan

    $vhdFolder = "C:\VHDs"
    $vhdNames = @("Mananas", "Tardes") # También limpiaremos "Mediodia" del PDF
    
    foreach ($name in $vhdNames) {
        Write-Host "--- Procesando limpieza de $name ---" -ForegroundColor Yellow
        $vhdPath = Join-Path -Path $vhdFolder -ChildPath "$name.vhdx"

        # 1. Buscar y eliminar entrada BCD por descripción
        Write-Host "Buscando entrada BCD con descripción '$name'..."
        
        # Parseamos la salida de bcdedit para encontrar el GUID por la descripción
        $guidLine = bcdedit /enum | Select-String -Pattern "description\s+$name" -Context 3,0 | Select-String 'identifier' | Select-Object -First 1
        
        if ($guidLine) {
            $guid = $guidLine.ToString().Split(' ')[-1].Trim()
            Write-Host "Entrada BCD encontrada: $guid. Eliminando..."
            bcdedit /delete $guid /f # /f para forzar la eliminación
            if ($LASTEXITCODE -eq 0) {
                Write-Host "Entrada BCD eliminada." -ForegroundColor Green
            } else {
                Write-Error "Falló la eliminación de la entrada BCD."
            }
        } else {
            Write-Warning "No se encontró ninguna entrada BCD con la descripción '$name'."
        }

        # 2. Eliminar archivo VHD
        if (Test-Path $vhdPath) {
            Write-Host "Eliminando archivo VHD: $vhdPath"
            try {
                Remove-Item -Path $vhdPath -Force -ErrorAction Stop
                Write-Host "Archivo VHD eliminado." -ForegroundColor Green
            }
            catch {
                Write-Error "No se pudo eliminar el VHD. ¿Está montado? Error: $_"
            }
        } else {
            Write-Warning "No se encontró el archivo VHD en '$vhdPath'."
        }
    }

    Write-Host "Limpieza completada." -ForegroundColor Green
    Start-Sleep -Seconds 5
}


# --- Bucle Principal del Menú ---
while ($true) {
    Clear-Host
    Write-Host "==============================================="
    Write-Host "   Gestor de VHDs (Ejercicio PDF)"
    Write-Host "==============================================="
    Write-Host "1. Limpiar sistema (Eliminar VHDs y BCDs 'Mañanas' y 'Tardes')"
    Write-Host "2. Crear sistemas VHD ('Mañanas' y 'Tardes')"
    Write-Host "3. Salir"
    Write-Host
    
    $choice = Read-Host "Selecciona una opción (1, 2 o 3)"

    switch ($choice) {
        '1' {
            Limpiar-SistemasVHD
        }
        '2' {
            Crear-SistemasVHD
        }
        '3' {
            Write-Host "Saliendo..."
            Exit
        }
        default {
            Write-Warning "Opción no válida. Por favor, introduce 1, 2 o 3."
            Start-Sleep -Seconds 2
        }
    }
}
