<#  
    INFO-SISTEMA.PS1
    Muestra un informe completo del sistema, hardware y software.
#>

Clear-Host
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "      INFORME DETALLADO DEL SISTEMA       " -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "`nGenerado: $(Get-Date)`n"

# ---------------------------------------------------------
# SISTEMA OPERATIVO
# ---------------------------------------------------------
Write-Host "`n===== SISTEMA OPERATIVO =====" -ForegroundColor Yellow
Get-CimInstance Win32_OperatingSystem | Select-Object `
    Caption, Version, BuildNumber, OSArchitecture, `
    @{Name="Instalado"; Expression={($_.InstallDate)}} , `
    @{Name="Último arranque"; Expression={($_.LastBootUpTime)}} , `
    SystemDirectory, WindowsDirectory, SerialNumber | Format-List

# ---------------------------------------------------------
# CPU
# ---------------------------------------------------------
Write-Host "`n===== CPU =====" -ForegroundColor Yellow
Get-CimInstance Win32_Processor | Select-Object `
    Name, Manufacturer, MaxClockSpeed, NumberOfCores, NumberOfLogicalProcessors, `
    L2CacheSize, L3CacheSize, ProcessorId | Format-List

# ---------------------------------------------------------
# MEMORIA RAM
# ---------------------------------------------------------
Write-Host "`n===== MEMORIA RAM =====" -ForegroundColor Yellow
$ram = Get-CimInstance Win32_PhysicalMemory |
    Select-Object Manufacturer, PartNumber, Capacity, Speed, BankLabel

$ram | Format-Table -AutoSize

$totalRam = ($ram | Measure-Object -Property Capacity -Sum).Sum /1GB
Write-Host "`nTotal RAM: $([math]::Round($totalRam,2)) GB"

# ---------------------------------------------------------
# ALMACENAMIENTO (DISCOS Y PARTICIONES)
# ---------------------------------------------------------
Write-Host "`n===== DISCO DURO / SSD =====" -ForegroundColor Yellow

Get-PhysicalDisk | Select-Object `
    FriendlyName, MediaType, BusType, Size, SerialNumber, FirmwareVersion |
    Format-Table -AutoSize

Write-Host "`n-- Particiones --"
Get-CimInstance Win32_LogicalDisk | Select-Object `
    DeviceID, VolumeName, FileSystem, `
    @{Name="Tamaño (GB)"; Expression={"{0:N2}" -f ($_.Size/1GB)}}, `
    @{Name="Libre (GB)"; Expression={"{0:N2}" -f ($_.FreeSpace/1GB)}} |
    Format-Table -AutoSize

# ---------------------------------------------------------
# TARJETA GRÁFICA
# ---------------------------------------------------------
Write-Host "`n===== TARJETA(S) GRÁFICA(S) =====" -ForegroundColor Yellow
Get-CimInstance Win32_VideoController | Select-Object `
    Name, AdapterCompatibility, DriverVersion, `
    @{Name="Memoria (MB)"; Expression={"{0:N0}" -f ($_.AdapterRAM/1MB)}} |
    Format-List

# ---------------------------------------------------------
# PLACA BASE Y BIOS
# ---------------------------------------------------------
Write-Host "`n===== BIOS Y PLACA BASE =====" -ForegroundColor Yellow

Write-Host "`n-- Placa base --"
Get-CimInstance Win32_BaseBoard | Select-Object Manufacturer, Product, SerialNumber | Format-List

Write-Host "`n-- BIOS --"
Get-CimInstance Win32_BIOS | Select-Object Manufacturer, SMBIOSBIOSVersion, ReleaseDate | Format-List

# ---------------------------------------------------------
# RED Y ADAPTADORES
# ---------------------------------------------------------
Write-Host "`n===== RED =====" -ForegroundColor Yellow
Get-NetAdapter | Select-Object Name, InterfaceDescription, Status, LinkSpeed, MacAddress | Format-Table -AutoSize

Write-Host "`n-- Configuración IP --"
Get-NetIPAddress | Select-Object InterfaceAlias, IPAddress, PrefixLength, AddressFamily | Format-Table -AutoSize

# ---------------------------------------------------------
# PROCESOS Y SERVICIOS DESTACADOS
# ---------------------------------------------------------
Write-Host "`n===== PROCESOS PRINCIPALES =====" -ForegroundColor Yellow
Get-Process | Sort-Object CPU -Descending | Select-Object -First 10 `
    Name, Id, CPU, PM | Format-Table -AutoSize

Write-Host "`n===== SERVICIOS EN EJECUCION =====" -ForegroundColor Yellow
Get-Service | Where-Object {$_.Status -eq "Running"} |
    Select-Object Name, DisplayName, Status | Format-Table -AutoSize

# ---------------------------------------------------------
# ACTUALIZACIONES INSTALADAS (Windows Update)
# ---------------------------------------------------------
Write-Host "`n===== ACTUALIZACIONES INSTALADAS =====" -ForegroundColor Yellow
Get-HotFix | Format-Table -AutoSize

# ---------------------------------------------------------
# INFORMACIÓN SOBRE BATERÍA (si aplica)
# ---------------------------------------------------------
# INFORMACION SOBRE BATERIA (si aplica)
$batt = Get-CimInstance Win32_Battery -ErrorAction SilentlyContinue
if ($batt) {
    Write-Host "`n===== BATERIA =====" -ForegroundColor Yellow
    $batt | Select-Object Name, Status, EstimatedChargeRemaining, BatteryStatus | Format-List
}

# ---------------------------------------------------------
# RESUMEN FINAL
# ---------------------------------------------------------
Write-Host "`n==========================================" -ForegroundColor Cyan
Write-Host "         FIN DEL INFORME DEL SISTEMA       " -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan
