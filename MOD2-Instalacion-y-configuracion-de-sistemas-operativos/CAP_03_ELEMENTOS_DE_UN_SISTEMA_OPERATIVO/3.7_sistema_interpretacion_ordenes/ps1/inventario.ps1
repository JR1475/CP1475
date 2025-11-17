<#
    INVENTARIO-SOFTWARE.PS1
    Lista el software instalado en el sistema (32/64 bits y por usuario).
    Permite exportar a CSV.
#>

Clear-Host

Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "           INVENTARIO DE SOFTWARE          " -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan

# Rutas del registro
$Rutas = @(
    "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*",
    "HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*",
    "HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*",
    "HKCU:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*"
)

$Inventario = @()

foreach ($ruta in $Rutas) {
    try {
        $programas = Get-ItemProperty $ruta -ErrorAction Stop

        foreach ($p in $programas) {

            $obj = [PSCustomObject]@{
                Nombre          = $p.DisplayName
                Version         = $p.DisplayVersion
                Editor          = $p.Publisher
                InstaladoEn     = $p.InstallDate
                UninstallString = $p.UninstallString
                RutaRegistro    = $ruta
            }

            if ($obj.Nombre) {
                $Inventario += $obj
            }
        }
    }
    catch {
        Write-Host "No se pudo acceder a: $ruta" -ForegroundColor Yellow
    }
}

Write-Host "`nProgramas encontrados: $($Inventario.Count)`n" -ForegroundColor Green
$Inventario | Sort-Object Nombre | Format-Table -AutoSize

$exportar = Read-Host "`nDesea exportar a CSV? (S/N)"

if ($exportar -match "^[sS]") {
    $rutaCSV = "$env:USERPROFILE\Desktop\inventario_software_$(Get-Date -Format 'yyyyMMdd_HHmm').csv"
    $Inventario | Sort-Object Nombre | Export-Csv -Path $rutaCSV -NoTypeInformation -Encoding UTF8

    Write-Host "`nArchivo exportado a:" -ForegroundColor Cyan
    Write-Host $rutaCSV -ForegroundColor Yellow
}

Write-Host "`nInventario completado." -ForegroundColor Cyan
