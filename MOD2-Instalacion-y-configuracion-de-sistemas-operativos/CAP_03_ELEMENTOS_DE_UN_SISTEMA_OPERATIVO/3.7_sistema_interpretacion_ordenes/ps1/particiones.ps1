<# 
    PARTICIONES.PS1
    Muestra información detallada de las particiones del sistema.
#>

Clear-Host
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "     INFORMACION DE PARTICIONES DE DISCO   " -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan

# Obtener discos físicos
$disks = Get-Disk

# Obtener particiones y asociarlas con discos y volúmenes
foreach ($disk in $disks) {

    Write-Host "`nDISCO $($disk.Number)" -ForegroundColor Yellow
    Write-Host "Modelo: $($disk.FriendlyName)"
    Write-Host "Tipo: $($disk.MediaType)"
    Write-Host "Tamaño: $([math]::Round($disk.Size/1GB,2)) GB"

    Write-Host "`n--- PARTICIONES ---" -ForegroundColor Green

    $particiones = Get-Partition -DiskNumber $disk.Number

    foreach ($p in $particiones) {
        $vol = $null
        try { 
            $vol = Get-Volume -Partition $p -ErrorAction Stop 
        } catch {}

        Write-Host "`nPartición $($p.PartitionNumber)" -ForegroundColor Cyan
        Write-Host "Tipo: $($p.Type)"
        Write-Host "Offset: $($p.Offset)"
        Write-Host "Tamaño: $([math]::Round($p.Size/1GB,2)) GB"

        if ($vol) {
            $freePercent = [math]::Round(($vol.SizeRemaining / $vol.Size) * 100, 2)

            Write-Host "Unidad: $($vol.DriveLetter)"
            Write-Host "Sistema de archivos: $($vol.FileSystem)"
            Write-Host "Etiqueta: $($vol.FileSystemLabel)"
            Write-Host "Espacio libre: $([math]::Round($vol.SizeRemaining/1GB,2)) GB"
            Write-Host "Tamaño total: $([math]::Round($vol.Size/1GB,2)) GB"
            Write-Host "Libre: $freePercent %"
        } else {
            Write-Host "→ Esta particion no tiene volumen asignado."
        }
    }

    Write-Host "`n------------------------------------------"
}

Write-Host "`nFin del informe."
