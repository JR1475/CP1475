<#
    REMOVE-BLOATWARE.PS1
    Desinstala aplicaciones bloatware comunes de Windows 10 y Windows 11.
#>

Clear-Host
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "        WINDOWS BLOATWARE REMOVER         " -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan

# Lista editable de aplicaciones a eliminar
# Puedes agregar o quitar nombres segun tus necesidades
$bloatware = @(
    "Microsoft.3DBuilder",
    "Microsoft.BingNews",
    "Microsoft.GetHelp",
    "Microsoft.Getstarted",
    "Microsoft.Microsoft3DViewer",
    "Microsoft.MicrosoftOfficeHub",
    "Microsoft.MicrosoftSolitaireCollection",
    "Microsoft.MicrosoftStickyNotes",
    "Microsoft.MSPaint",               # Paint 3D
    "Microsoft.MixedReality.Portal",
    "Microsoft.OneConnect",
    "Microsoft.People",
    "Microsoft.Print3D",
    "Microsoft.SkypeApp",
    "Microsoft.Todos",
    "Microsoft.Wallet",
    "Microsoft.Whiteboard",
    "Microsoft.WindowsMaps",
    "Microsoft.WindowsFeedbackHub",
    "Microsoft.XboxApp",
    "Microsoft.Xbox.TCUI",
    "Microsoft.XboxGameOverlay",
    "Microsoft.XboxGamingOverlay",
    "Microsoft.XboxIdentityProvider",
    "Microsoft.XboxSpeechToTextOverlay",
    "Microsoft.YourPhone",
    "Microsoft.ZuneMusic",             # Groove Music
    "Microsoft.ZuneVideo"              # Movies & TV
)

Write-Host "`nBuscando aplicaciones instaladas..." -ForegroundColor Yellow

foreach ($app in $bloatware) {
    $encontrado = Get-AppxPackage -Name $app -ErrorAction SilentlyContinue
    $encontradoProvisionado = Get-AppxProvisionedPackage -Online | Where-Object { $_.DisplayName -eq $app }

    if ($encontrado) {
        Write-Host "Eliminando para el usuario actual: $app" -ForegroundColor Green
        Remove-AppxPackage -Package $encontrado.PackageFullName -ErrorAction SilentlyContinue
    }

    if ($encontradoProvisionado) {
        Write-Host "Eliminando para todos los usuarios futuros: $app" -ForegroundColor Green
        Remove-AppxProvisionedPackage -Online -PackageName $encontradoProvisionado.PackageName -ErrorAction SilentlyContinue
    }
}

Write-Host "`nProceso finalizado." -ForegroundColor Cyan
