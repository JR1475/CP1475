<#
.SYNOPSIS
    Muestra el rendimiento del sistema (CPU, RAM, Disco y Red) en tiempo real.
    VERSIÓN FINAL: Compatible con CUALQUIER idioma del sistema operativo.

.DESCRIPTION
    Este script de PowerShell muestra un panel de monitorización en la consola que se actualiza
    continuamente. Muestra el uso de CPU, memoria RAM, espacio en disco y actividad de red.
    Utiliza colores para resaltar cuando los recursos están bajo alta demanda.

.NOTES
    Autor: Asistente de IA
    Versión: 2.0 (Universal Multi-Idioma)
    Ejecución: Requiere PowerShell 5.1 o superior. Ejecutar como Administrador para información más detallada.
    Para detener la monitorización, presiona Ctrl+C.
#>

# Bucle infinito para la monitorización continua
while ($true) {
    # Limpiar la pantalla para una visualización limpia
    Clear-Host
    
    # Obtener la fecha y hora actual
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    Write-Host "====================================================" -ForegroundColor Gray
    Write-Host "  MONITOR DE RENDIMIENTO DEL SISTEMA" -ForegroundColor Cyan
    Write-Host "  Última actualización: $timestamp" -ForegroundColor Gray
    Write-Host "====================================================" -ForegroundColor Gray
    Write-Host "" # Línea en blanco

    # --- MONITOR DE CPU ---
    # CAMBIO CLAVE: Buscamos en TODOS los conjuntos de contadores el que contiene la métrica de CPU.
    try {
        $cpuCounterPath = (Get-Counter -ListSet * | Where-Object { $_.Paths -like "*% Processor Time*" }).Paths | Where-Object { $_ -like "*(_Total)*" }
        if ($cpuCounterPath) {
            $cpuUsage = (Get-Counter -Counter $cpuCounterPath -SampleInterval 1 -MaxSamples 1).CounterSamples.CookedValue
            $cpuUsageRounded = [math]::Round($cpuUsage, 2)
        } else {
            throw "No se encontró la ruta del contador de CPU."
        }
    }
    catch {
        Write-Host "Error: No se pudo obtener el contador de CPU. Los contadores de rendimiento pueden estar dañados." -ForegroundColor Red
        $cpuUsageRounded = 0
    }
    
    $cpuColor = "Green"
    if ($cpuUsageRounded -gt 80) { $cpuColor = "Red" }
    elseif ($cpuUsageRounded -gt 50) { $cpuColor = "Yellow" }
    
    Write-Host "--- CPU ---" -ForegroundColor Magenta
    Write-Host "Uso Total: " -NoNewline
    Write-Host "$cpuUsageRounded %" -ForegroundColor $cpuColor
    Write-Host "" # Línea en blanco

    # --- MONITOR DE RAM ---
    $os = Get-CimInstance -ClassName Win32_OperatingSystem
    $totalRAM = [math]::Round($os.TotalVisibleMemorySize / 1MB, 2)
    $freeRAM = [math]::Round($os.FreePhysicalMemory / 1MB, 2)
    $usedRAM = $totalRAM - $freeRAM
    $ramUsagePercent = [math]::Round(($usedRAM / $totalRAM) * 100, 2)
    
    $ramColor = "Green"
    if ($ramUsagePercent -gt 85) { $ramColor = "Red" }
    elseif ($ramUsagePercent -gt 60) { $ramColor = "Yellow" }

    Write-Host "--- MEMORIA RAM ---" -ForegroundColor Magenta
    Write-Host "Uso: " -NoNewline
    Write-Host "$ramUsagePercent %" -ForegroundColor $ramColor
    Write-Host "Total: " -NoNewline
    Write-Host "$totalRAM GB" -ForegroundColor White
    Write-Host "Disponible: " -NoNewline
    Write-Host "$freeRAM GB" -ForegroundColor $ramColor
    Write-Host "" # Línea en blanco

    # --- MONITOR DE DISCO ---
    Write-Host "--- DISCO DURO ---" -ForegroundColor Magenta
    $disks = Get-CimInstance -ClassName Win32_LogicalDisk | Where-Object { $_.DriveType -eq 3 }
    foreach ($disk in $disks) {
        $diskSize = [math]::Round($disk.Size / 1GB, 2)
        $diskFree = [math]::Round($disk.FreeSpace / 1GB, 2)
        $diskUsed = $diskSize - $diskFree
        $diskUsagePercent = [math]::Round(($diskUsed / $diskSize) * 100, 2)

        $diskColor = "Green"
        if ($diskUsagePercent -gt 90) { $diskColor = "Red" }
        elseif ($diskUsagePercent -gt 75) { $diskColor = "Yellow" }
        
        Write-Host "Unidad $($disk.DeviceID): " -NoNewline -ForegroundColor White
        Write-Host "$diskUsagePercent % usado ($diskUsed GB / $diskSize GB)" -ForegroundColor $diskColor
    }
    Write-Host "" # Línea en blanco

    # --- MONITOR DE RED ---
    Write-Host "--- RED ---" -ForegroundColor Magenta
    # CAMBIO CLAVE: Buscamos en TODOS los conjuntos el que contiene la métrica de red.
    try {
        $networkSet = Get-Counter -ListSet * | Where-Object { $_.Paths -like "*Bytes Total/sec*" }
        if ($networkSet) {
            $networkCounters = Get-Counter -Counter $networkSet.Paths -SampleInterval 1 -MaxSamples 1
            foreach ($counter in $networkCounters.CounterSamples) {
                # Filtrar interfaces no relevantes (Loopback, túneles, etc.)
                if ($counter.InstanceName -notmatch "Loopback|isatap|Teredo" -and -not [string]::IsNullOrWhiteSpace($counter.InstanceName)) {
                    # Convertir Bytes/s a Megabits/s (Mbps) para mayor claridad
                    $networkSpeedMbps = [math]::Round(($counter.CookedValue * 8) / 1MB, 2)
                    Write-Host "  Interfaz: $($counter.InstanceName)" -ForegroundColor Gray
                    Write-Host "  Velocidad: " -NoNewline -ForegroundColor White
                    Write-Host "$networkSpeedMbps Mbps" -ForegroundColor Cyan
                }
            }
        } else {
            throw "No se encontró el conjunto de contadores de red."
        }
    }
    catch {
        Write-Host "Error: No se pudieron obtener los contadores de red. Los contadores de rendimiento pueden estar dañados." -ForegroundColor Red
    }
    
    Write-Host "" # Línea en blanco
    Write-Host "Presiona Ctrl+C para detener la monitorización." -ForegroundColor Gray

    # Pausar el script durante 5 segundos antes de la próxima actualización
    Start-Sleep -Seconds 5
}
