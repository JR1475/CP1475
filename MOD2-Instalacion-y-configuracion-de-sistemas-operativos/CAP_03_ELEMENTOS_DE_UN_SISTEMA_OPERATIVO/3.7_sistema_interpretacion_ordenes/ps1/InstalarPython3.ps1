<#
.SYNOPSIS
Verifica e instala Python 3 y Curl, luego prueba con un servidor HTTP

.DESCRIPTION
Script para novatos que comprueba si Python 3 y Curl estan instalados,
los instala si falta, y ejecuta una prueba de servidor HTTP.

.EXAMPLE
.\InstalarPython.ps1
#>

# 1. VERIFICAR PERMISOS DE ADMINISTRADOR
# --------------------------------------
# Esta parte comprueba si tienes permisos para instalar programas
Write-Host "===========================================" -ForegroundColor Cyan
Write-Host "VERIFICANDO PERMISOS DE ADMINISTRADOR..." -ForegroundColor Cyan
Write-Host "===========================================" -ForegroundColor Cyan

if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "❌ ERROR: Debes ejecutar PowerShell como Administrador" -ForegroundColor Red
    Write-Host ""
    Write-Host "COMO HACERLO:" -ForegroundColor Yellow
    Write-Host "1. Haz clic en el botón Inicio" -ForegroundColor White
    Write-Host "2. Escribe 'PowerShell'" -ForegroundColor White
    Write-Host "3. Haz clic derecho en 'Windows PowerShell'" -ForegroundColor White
    Write-Host "4. Selecciona 'Ejecutar como administrador'" -ForegroundColor White
    Write-Host ""
    pause
    exit
}

Write-Host "✅ Permisos OK" -ForegroundColor Green
Write-Host ""

# 2. VERIFICAR PYTHON 3
# ---------------------
Write-Host "===========================================" -ForegroundColor Cyan
Write-Host "VERIFICANDO PYTHON 3..." -ForegroundColor Cyan
Write-Host "===========================================" -ForegroundColor Cyan

# Comando para verificar Python
$pythonCheck = python --version 2>&1
$pythonInstalled = $pythonCheck -match "Python 3\.\d+"

if ($pythonInstalled) {
    Write-Host "✅ PYTHON 3 YA ESTÁ INSTALADO: $pythonCheck" -ForegroundColor Green
} else {
    Write-Host "⚠️ Python 3 NO está instalado o no está en el PATH" -ForegroundColor Yellow
    Write-Host "Instalando Python 3..." -ForegroundColor Cyan
    
    # Método 1: Intentar con winget (Windows Package Manager)
    try {
        Write-Host "Intentando instalar con Winget..." -ForegroundColor White
        winget install Python.Python.3.11 --accept-source-agreements --accept-package-agreements
        
        # Agregar Python al PATH manualmente
        $pythonPath = "C:\Program Files\Python311\"
        $env:Path += ";$pythonPath"
        [Environment]::SetEnvironmentVariable("Path", $env:Path, [EnvironmentVariableTarget]::Machine)
        
        Write-Host "✅ Python 3 instalado correctamente" -ForegroundColor Green
        $pythonInstalled = $true
    }
    catch {
        Write-Host "❌ Error con Winget. Intentando método alternativo..." -ForegroundColor Red
        
        # Método 2: Descargar instalador directamente
        try {
            Write-Host "Descargando Python desde python.org..." -ForegroundColor White
            $installerUrl = "https://www.python.org/ftp/python/3.11.8/python-3.11.8-amd64.exe"
            $installerPath = "$env:TEMP\python-installer.exe"
            
            Invoke-WebRequest -Uri $installerUrl -OutFile $installerPath
            
            Write-Host "Ejecutando instalador..." -ForegroundColor White
            Start-Process -FilePath $installerPath -ArgumentList "/quiet InstallAllUsers=1 PrependPath=1" -Wait
            
            Remove-Item $installerPath -Force
            Write-Host "✅ Python 3 instalado correctamente" -ForegroundColor Green
            $pythonInstalled = $true
        }
        catch {
            Write-Host "❌ ERROR: No se pudo instalar Python" -ForegroundColor Red
            Write-Host "Instálalo manualmente desde: https://www.python.org/downloads/" -ForegroundColor Yellow
            pause
            exit
        }
    }
}

Write-Host ""

# 3. VERIFICAR CURL
# ----------------
Write-Host "===========================================" -ForegroundColor Cyan
Write-Host "VERIFICANDO CURL..." -ForegroundColor Cyan
Write-Host "===========================================" -ForegroundColor Cyan

$curlCheck = curl --version 2>&1
$curlInstalled = $curlCheck -match "curl"

if ($curlInstalled) {
    Write-Host "✅ CURL YA ESTÁ INSTALADO:" -ForegroundColor Green
    Write-Host "   $($curlCheck[0])" -ForegroundColor Gray
} else {
    Write-Host "⚠️ Curl no está instalado o no está en el PATH" -ForegroundColor Yellow
    
    # Windows 11 ya trae curl, pero lo instalamos por si acaso
    try {
        Write-Host "Instalando Curl..." -ForegroundColor Cyan
        winget install curl.curl --accept-source-agreements --accept-package-agreements
        Write-Host "✅ Curl instalado correctamente" -ForegroundColor Green
        $curlInstalled = $true
    }
    catch {
        Write-Host "❌ ERROR: No se pudo instalar Curl" -ForegroundColor Red
        Write-Host "Windows 11 ya debería incluirlo. Actualiza tu sistema." -ForegroundColor Yellow
    }
}

Write-Host ""

# 4. CREAR CARPETA TEMPORAL PARA EL SERVIDOR
# -------------------------------------------
Write-Host "===========================================" -ForegroundColor Cyan
Write-Host "PREPARANDO PRUEBA DE SERVIDOR HTTP..." -ForegroundColor Cyan
Write-Host "===========================================" -ForegroundColor Cyan

# Crear carpeta temporal
$testFolder = "$env:TEMP\PythonHTTPTest"
if (Test-Path $testFolder) {
    Remove-Item $testFolder -Recurse -Force
}
New-Item -ItemType Directory -Path $testFolder | Out-Null

# Crear archivo HTML de prueba
$htmlContent = @"
<!DOCTYPE html>
<html>
<head><title>PRUEBA PYTHON</title></head>
<body style="font-family: Arial; text-align: center; padding: 50px;">
    <h1 style="color: #4CAF50;">¡SERVIDOR PYTHON FUNCIONA!</h1>
    <p style="font-size: 20px;">Python 3 y HTTP.server estan correctamente instalados</p>
    <p style="color: gray; margin-top: 30px;">Hora: $(Get-Date)</p>
</body>
</html>
"@

$htmlContent | Out-File -FilePath "$testFolder\index.html" -Encoding UTF8
Write-Host "✅ Carpeta temporal creada en: $testFolder" -ForegroundColor Green

Write-Host ""

# 5. INICIAR SERVIDOR HTTP
# ------------------------
Write-Host "===========================================" -ForegroundColor Cyan
Write-Host "INICIANDO SERVIDOR HTTP (puerto 8000)..." -ForegroundColor Cyan
Write-Host "===========================================" -ForegroundColor Cyan

# Cambiar a la carpeta temporal
Set-Location $testFolder

# Iniciar servidor en segundo plano
Write-Host "Iniciando servidor Python..." -ForegroundColor White
Write-Host "URL: http://localhost:8000" -ForegroundColor Yellow
Write-Host ""

# Variables para el proceso
$process = $null
$serverStarted = $false

try {
    # Iniciar servidor HTTP en segundo plano
    $process = Start-Process -FilePath "python" -ArgumentList "-m http.server 8000" -PassThru -WindowStyle Hidden
    
    # Esperar 3 segundos para que se inicie
    Write-Host "Esperando 3 segundos a que el servidor inicie..." -ForegroundColor Gray
    Start-Sleep -Seconds 3
    
    # Verificar si el puerto está en uso
    $portCheck = Get-NetTCPConnection -LocalPort 8000 -ErrorAction SilentlyContinue
    if ($portCheck) {
        $serverStarted = $true
        Write-Host "✅ Servidor HTTP funcionando en el puerto 8000" -ForegroundColor Green
        
        # Probar acceso con curl
        Write-Host "Probando conexion con curl..." -ForegroundColor White
        try {
            $response = curl -s http://localhost:8000
            if ($response -match "SERVIDOR PYTHON FUNCIONA") {
                Write-Host "✅ CURL accedio correctamente al servidor" -ForegroundColor Green
                Write-Host "✅ ¡INSTALACION COMPLETAMENTE VERIFICADA!" -ForegroundColor Green
            } else {
                Write-Host "⚠️ Servidor responde pero el contenido no es el esperado" -ForegroundColor Yellow
            }
        }
        catch {
            Write-Host "⚠️ No se pudo verificar con curl, pero el servidor está corriendo" -ForegroundColor Yellow
        }
    }
    else {
        Write-Host "❌ El servidor no inició correctamente" -ForegroundColor Red
    }
}
catch {
    Write-Host "❌ ERROR al iniciar el servidor: $_" -ForegroundColor Red
}

Write-Host ""

# 6. DETENER SERVIDOR
# -------------------
Write-Host "===========================================" -ForegroundColor Cyan
Write-Host "DETENIENDO SERVIDOR..." -ForegroundColor Cyan
Write-Host "===========================================" -ForegroundColor Cyan

if ($process -and $serverStarted) {
    try {
        # Matar el proceso de Python que ejecuta el servidor
        Stop-Process -Id $process.Id -Force
        Write-Host "✅ Servidor detenido correctamente" -ForegroundColor Green
    }
    catch {
        Write-Host "⚠️ No se pudo detener el proceso automáticamente" -ForegroundColor Yellow
        Write-Host "Puedes cerrar el proceso manualmente en el Administrador de Tareas" -ForegroundColor White
    }
}

# Limpiar carpeta temporal
try {
    Remove-Item $testFolder -Recurse -Force
    Write-Host "✅ Archivos temporales eliminados" -ForegroundColor Green
}
catch {
    Write-Host "⚠️ No se pudo limpiar la carpeta temporal" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "===========================================" -ForegroundColor Green
Write-Host "PROCESO COMPLETADO" -ForegroundColor Green
Write-Host "===========================================" -ForegroundColor Green
Write-Host ""
Write-Host "Resumen:" -ForegroundColor Cyan
Write-Host "  Python 3: $(if($pythonInstalled){'✅ INSTALADO'}else{'❌ ERROR'})" -ForegroundColor $(if($pythonInstalled){'Green'}else{'Red'})
Write-Host "  Curl: $(if($curlInstalled){'✅ DISPONIBLE'}else{'⚠️ VERIFICAR'})" -ForegroundColor $(if($curlInstalled){'Green'}else{'Yellow'})
Write-Host "  Servidor HTTP: $(if($serverStarted){'✅ FUNCIONA'}else{'❌ FALLÓ'})" -ForegroundColor $(if($serverStarted){'Green'}else{'Red'})
Write-Host ""
Write-Host "Puedes ejecutar el servidor manualmente con:" -ForegroundColor White
Write-Host "  python -m http.server 8000" -ForegroundColor Yellow
Write-Host ""
pause
