<#
.SYNOPSIS
Desactiva servicios innecesarios en Windows 11 Pro para uso doméstico

.DESCRIPTION
Este script analiza y desactiva servicios que no son esenciales en un entorno doméstico,
mejorando el rendimiento y privacidad. Incluye opcion de deshacer cambios.

.PARAMETER Force
Ejecuta sin pedir confirmacion

.EXAMPLE
.\ServiciosOptimizados.ps1
.\ServiciosOptimizados.ps1 -Force
#>

[CmdletBinding(SupportsShouldProcess = $true)]
param(
    [switch]$Force
)

# Requiere ejecucion como administrador
if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "===========================================" -ForegroundColor Red
    Write-Host "❌ ERROR: EJECUTAR COMO ADMINISTRADOR" -ForegroundColor Red
    Write-Host "===========================================" -ForegroundColor Red
    Write-Host "Haz clic derecho en PowerShell -> Ejecutar como administrador" -ForegroundColor Yellow
    pause
    exit
}

# Funcion para crear backup de servicios
function Backup-Servicios {
    $fecha = Get-Date -Format "yyyyMMdd_HHmmss"
    $backupPath = "$env:USERPROFILE\Desktop\Backup_Servicios_$fecha.csv"
    
    Write-Host "Creando backup de configuracion actual..." -ForegroundColor Cyan
    Get-Service | Select-Object Name, DisplayName, StartType, Status | Export-Csv -Path $backupPath -NoTypeInformation -Encoding UTF8
    
    Write-Host "Backup guardado en: $backupPath" -ForegroundColor Green
    return $backupPath
}

# Funcion para restaurar servicios
function Restore-Servicios {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Archivo
    )
    
    if (Test-Path $Archivo) {
        Write-Host "Restaurando servicios desde backup..." -ForegroundColor Cyan
        Import-Csv -Path $Archivo | ForEach-Object {
            try {
                Set-Service -Name $_.Name -StartupType $_.StartType -ErrorAction SilentlyContinue
                Write-Host "  Restaurado $($_.DisplayName)" -ForegroundColor Green
            }
            catch {
                Write-Host "  No se pudo restaurar $($_.Name)" -ForegroundColor Yellow
            }
        }
        Write-Host "Restauracion completada. Reinicia el PC." -ForegroundColor Green
    }
    else {
        Write-Host "No se encontro el archivo de backup" -ForegroundColor Red
    }
}

# Lista de servicios para desactivar en casa
$serviciosADesactivar = @{
    "DiagTrack" = "Telemetria y diagnostico (consume recursos)"
    "dmwappushservice" = "WAP Push Message Routing Service"
    "Fax" = "Servicio de fax (obsoleto)"
    "MapsBroker" = "Descarga de mapas offline"
    "lfsvc" = "Geolocalizacion (si no usas apps de ubicacion)"
    "SharedAccess" = "Conexion compartida a Internet"
    "wercplsupport" = "Informes de errores de Windows"
    "XblAuthManager" = "Autenticacion Xbox Live"
    "XblGameSave" = "Guardado en la nube Xbox"
    "XboxNetApiSvc" = "API de red Xbox"
    "MessagingService" = "Mensajeria en la nube"
    "OneSyncSvc" = "Sincronizacion de cuentas"
    "PimIndexMaintenanceSvc" = "Indice de contactos"
    "PrintNotify" = "Notificaciones de impresion"
    "WbioSrvc" = "Windows Biometric Service"
    "WerSvc" = "Windows Error Reporting"
    "wisvc" = "Windows Insider Service"
    "WMPNetworkSvc" = "Compartir biblioteca de Media Player"
    "WpnService" = "Notificaciones push"
    "icssvc" = "Conexion compartida de Internet"
    "TrkWks" = "Distributed Link Tracking Client"
    "WSearch" = "Windows Search (indexacion)"
    "workfolderssvc" = "Work Folders (solo empresas)"
}

# Preguntas al usuario
if (-not $Force) {
    Write-Host ""
    Write-Host "========== CONFIGURACION PERSONALIZADA ==========" -ForegroundColor Cyan
    
    $respuestas = @{
        impresora = Read-Host "Usas impresora en este PC? (S/N)"
        xbox = Read-Host "Usas Xbox Game Pass/Play? (S/N)"
        cuentaMs = Read-Host "Usas cuenta Microsoft (no local)? (S/N)"
        geolocalizacion = Read-Host "Usas apps de ubicacion (Maps, clima)? (S/N)"
        busqueda = Read-Host "Usas busqueda de Windows frecuentemente? (S/N)"
    }
    
    # Eliminar servicios segun respuestas
    if ($respuestas.impresora -eq 'S') {
        $serviciosADesactivar.Remove("Spooler")
        $serviciosADesactivar.Remove("PrintNotify")
        Write-Host "  -> Se MANTIENE servicio de impresora" -ForegroundColor Yellow
    }
    
    if ($respuestas.xbox -eq 'S') {
        $serviciosADesactivar.Remove("XblAuthManager")
        $serviciosADesactivar.Remove("XblGameSave")
        $serviciosADesactivar.Remove("XboxNetApiSvc")
        Write-Host "  -> Se MANTIENE servicios de Xbox" -ForegroundColor Yellow
    }
    
    if ($respuestas.cuentaMs -eq 'S') {
        $serviciosADesactivar.Remove("OneSyncSvc")
        Write-Host "  -> Se MANTIENE sincronizacion de cuenta" -ForegroundColor Yellow
    }
    
    if ($respuestas.geolocalizacion -eq 'S') {
        $serviciosADesactivar.Remove("lfsvc")
        Write-Host "  -> Se MANTIENE geolocalizacion" -ForegroundColor Yellow
    }
    
    if ($respuestas.busqueda -eq 'S') {
        $serviciosADesactivar.Remove("WSearch")
        Write-Host "  -> Se MANTIENE indexacion de busqueda" -ForegroundColor Yellow
    }
    
    # Confirmacion final
    Write-Host ""
    Write-Host "Se desactivaran $($serviciosADesactivar.Count) servicios" -ForegroundColor Yellow
    $confirmar = Read-Host "Continuar? (S/N)"
    
    if ($confirmar -ne 'S') {
        Write-Host "Operacion cancelada" -ForegroundColor Red
        exit
    }
}

# Crear backup
$backupFile = Backup-Servicios

# Aplicar cambios
Write-Host ""
Write-Host "Aplicando optimizaciones..." -ForegroundColor Cyan
Write-Host ""

$contador = 0
foreach ($servicio in $serviciosADesactivar.Keys) {
    $displayName = $serviciosADesactivar[$servicio]
    
    if (Get-Service -Name $servicio -ErrorAction SilentlyContinue) {
        try {
            Stop-Service -Name $servicio -Force -ErrorAction SilentlyContinue | Out-Null
            Set-Service -Name $servicio -StartupType Disabled -ErrorAction Stop
            Write-Host "  [OK] $servicio" -ForegroundColor Green
            $contador++
        }
        catch {
            Write-Host "  [FAIL] $servicio" -ForegroundColor Red
        }
    }
    else {
        Write-Host "  [SKIP] $servicio (no encontrado)" -ForegroundColor Gray
    }
}

# Crear script de restauracion
$restoreScript = @"
# Script de restauracion automatica
`$backup = '$backupFile'
if (Test-Path `$backup) {
    Import-Csv -Path `$backup | ForEach-Object {
        Set-Service -Name `$_.Name -StartupType `$_.StartType -ErrorAction SilentlyContinue
    }
    Write-Host "Servicios restaurados. Reinicia el PC." -ForegroundColor Green
}
"@

$restorePath = "$env:USERPROFILE\Desktop\RESTAURAR_SERVICIOS.ps1"
$restoreScript | Out-File -FilePath $restorePath -Encoding UTF8

# Resultado final
Write-Host ""
Write-Host "===========================================" -ForegroundColor Green
Write-Host "OPTIMIZACION COMPLETADA" -ForegroundColor Green
Write-Host "===========================================" -ForegroundColor Green
Write-Host "Servicios desactivados: $contador" -ForegroundColor Cyan
Write-Host "Backup guardado en: $backupFile" -ForegroundColor Cyan
Write-Host "Script de restauracion: $restorePath" -ForegroundColor Yellow
Write-Host ""
Write-Host "REINICIO RECOMENDADO" -ForegroundColor Magenta
Write-Host ""

if (-not $Force) {
    $reiniciar = Read-Host "Reiniciar ahora? (S/N)"
    if ($reiniciar -eq 'S') {
        Restart-Computer -Force
    }
}
