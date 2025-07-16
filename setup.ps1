[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

# --- Verificar Privilegios de Administrador ---
if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Warning "Este script requiere privilegios de Administrador. Por favor, ejecútalo desde una terminal de PowerShell elevada."
    # Pausa para que el usuario pueda leer el mensaje antes de que la ventana se cierre.
    if ($Host.Name -eq "ConsoleHost") {
        Write-Host "Presiona cualquier tecla para salir..."
        $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown") | Out-Null
    }
    exit 1
}

Write-Host " Configurando entorno de Investigación..."

# Verificar si Git está instalado
if (Get-Command git -ErrorAction SilentlyContinue) {
    # Extraer la versión de manera más limpia
    $gitVersionOutput = git --version
    Write-Host "✅ Git ya está instalado. Versión: $($gitVersionOutput)"
}
else {
    Write-Host "⚠️ Git no está instalado. Procediendo con la descarga e instalación..."

    # Definir rutas temporales
    $rutaSalida = Join-Path $env:TEMP "git_installer.exe"
    $rutaConfig = Join-Path $env:TEMP "git_install.inf"

    try {
        # --- Determinar arquitectura y URL de descarga ---
        $arquitectura = if ($env:PROCESSOR_ARCHITECTURE -eq 'amd64') { '64-bit' } else { '32-bit' }
        Write-Host "Detectando arquitectura del sistema: $arquitectura"

        # Usar la API de GitHub para encontrar el último lanzamiento
        Write-Host "Buscando la última versión de Git para Windows..."
        $apiUri = "https://api.github.com/repos/git-for-windows/git/releases/latest"
        $ultimoLanzamiento = Invoke-RestMethod -Uri $apiUri

        # Encontrar el enlace de descarga correcto para la arquitectura detectada
        $asset = $ultimoLanzamiento.assets | Where-Object { $_.name -like "*$arquitectura.exe" }
        if (-not $asset) {
            throw "No se pudo encontrar un instalador para la arquitectura $arquitectura en el último lanzamiento."
        }
        $urlDescarga = $asset.browser_download_url
        $versionGit = $ultimoLanzamiento.tag_name

        Write-Host "Descargando Git versión $versionGit desde $urlDescarga"

        # --- Crear archivo de configuración para instalación silenciosa ---
        # Documentación de opciones: https://gitforwindows.org/doc/Unattended-Installation.html
        $configContenido = @"
[Setup]
Lang=default
Dir=C:\Program Files\Git
Group=Git
NoIcons=false
SetupType=default
Components=
Tasks=add_path_to_environment,associate_sh,autoupdate_check
PathOption=Cmd
EditorOption=Vim
DefaultBranchOption=main
SSHOption=OpenSSH
UseCredentialManager=enabled
EnablePseudoConsoleSupport=enabled
EnableExperimentalBuiltinFSCache=false
"@
        Set-Content -Path $rutaConfig -Value $configContenido -Encoding UTF8

        # --- Descargar e instalar ---
        Invoke-WebRequest -Uri $urlDescarga -OutFile $rutaSalida -ErrorAction Stop
        Write-Host "Descarga completa. Iniciando instalación silenciosa..."

        # Argumentos para el instalador de Inno Setup (usado por Git)
        $argumentos = "/VERYSILENT /NORESTART /LOADINF=`"$rutaConfig`""
        Start-Process -FilePath $rutaSalida -ArgumentList $argumentos -Wait -PassThru

        Write-Host "✅ Git se ha instalado correctamente."
        $git = Join-Path $env:ProgramFiles "Git/bin"
        $env:Path += ";$git"
        $version = git --version
        Write-Host "✅ La versión instalada de Git es $version"

    }
    catch {
        Write-Error "Ocurrió un error durante la descarga o instalación: $($_.Exception.Message)"
    }
    finally {
        # --- Limpieza de archivos temporales ---
        if (Test-Path $rutaSalida) {
            Remove-Item $rutaSalida -Force -ErrorAction SilentlyContinue
        }
        if (Test-Path $rutaConfig) {
            Remove-Item $rutaConfig -Force -ErrorAction SilentlyContinue
        }
        Write-Host "Limpieza de archivos temporales completada."
    }
}

# --- Verificar si Python ya está instalado (usando el lanzador 'py') ---
py --version >$null 2>&1
if ($LASTEXITCODE -eq 0) {
    # El lanzador 'py' es la forma recomendada de verificar en Windows
    $pythonVersionOutput = py --version
    Write-Host "✅ Python ya está instalado. Versión detectada: $($pythonVersionOutput)"
}
else {
    Write-Host "⚠️ Python (lanzador py.exe) no está instalado. Procediendo con la descarga e instalación..."

    $rutaSalida = Join-Path $env:TEMP "python_installer.exe"

    try {
        # --- Obtener la última versión estable desde python.org ---
        Write-Host "Buscando la última versión de Python..."
        $downloadsPage = Invoke-WebRequest -Uri "https://www.python.org/downloads/windows/"
        $match = [regex]::Match($downloadsPage.Content, 'Latest Python 3 Release - Python (\d+\.\d+\.\d+)')
        if (-not $match.Success) { throw "No se pudo determinar la última versión de Python desde python.org." }
        $latestVersion = $match.Groups[1].Value
        Write-Host "Última versión estable encontrada: $latestVersion"

        # --- Determinar arquitectura y URL de descarga ---
        $arquitectura = if ($env:PROCESSOR_ARCHITECTURE -eq 'amd64') { 'amd64' } else { 'x86' }
        Write-Host "Detectando arquitectura del sistema: $arquitectura"

        $urlDescarga = "https://www.python.org/ftp/python/$latestVersion/python-$latestVersion-$arquitectura.exe"

        Write-Host "Descargando Python versión $latestVersion desde $urlDescarga"

        # --- Descargar e instalar ---
        Invoke-WebRequest -Uri $urlDescarga -OutFile $rutaSalida -ErrorAction Stop
        Write-Host "Descarga completa. Iniciando instalación silenciosa..."

        # Argumentos para una instalación silenciosa y para todos los usuarios, agregando Python al PATH
        # Documentación: https://docs.python.org/3/using/windows.html#installing-without-a-ui
        $argumentos = @(
            "/quiet",
            "InstallAllUsers=1",
            "PrependPath=1",
            "Include_test=0"
        )

        Start-Process -FilePath $rutaSalida -ArgumentList $argumentos -Wait -PassThru

        Write-Host "✅ Python se ha instalado correctamente."

    }
    catch {
        Write-Error "❌ Ocurrió un error durante la descarga o instalación: $($_.Exception.Message)"
    }
    finally {
        # --- Limpieza de archivos temporales ---
        if (Test-Path $rutaSalida) {
            Remove-Item $rutaSalida -Force -ErrorAction SilentlyContinue
            Write-Host "Limpieza del instalador temporal completada."
        }
    }
}

# Verifica si Node.js está instalado

# --- Verificar si Node.js ya está instalado ---
if (Get-Command node -ErrorAction SilentlyContinue) {
    Write-Host "✅ Node.js ya está instalado. Versión: $(node -v)"
}
else {
    Write-Host "⚠️ Node.js no está instalado. Procediendo con la descarga e instalación..."

    $rutaSalida = Join-Path $env:TEMP "nodejs_installer.msi"

    try {
        # --- Obtener la última versión LTS desde el índice oficial de Node.js ---
        Write-Host "Buscando la última versión LTS de Node.js..."
        $releasesIndex = Invoke-RestMethod -Uri "https://nodejs.org/dist/index.json"

        # Filtramos para encontrar la versión más reciente que tenga la marca 'lts'
        $latestLts = $releasesIndex | Where-Object { $_.lts } | Sort-Object -Property 'date' -Descending | Select-Object -First 1

        if (-not $latestLts) {
            throw "No se pudo determinar la última versión LTS de Node.js desde el índice oficial."
        }

        $latestVersion = $latestLts.version.TrimStart('v') # Quitamos la 'v' inicial (ej: v18.17.1 -> 18.17.1)
        Write-Host "Última versión LTS encontrada: $latestVersion (Codename: $($latestLts.lts))"

        # --- Determinar arquitectura y URL de descarga ---
        $arquitectura = if ($env:PROCESSOR_ARCHITECTURE -eq 'amd64') { 'x64' } else { 'x86' }
        Write-Host "Detectando arquitectura del sistema: $arquitectura"

        $urlDescarga = "https://nodejs.org/dist/v$latestVersion/node-v$latestVersion-$arquitectura.msi"

        Write-Host "Descargando Node.js desde $urlDescarga"

        # --- Descargar e instalar ---
        Invoke-WebRequest -Uri $urlDescarga -OutFile $rutaSalida -ErrorAction Stop
        Write-Host "Descarga completa. Iniciando instalación silenciosa..."

        # Argumentos para el instalador de Windows (MSI)
        $argumentos = @(
            "/i",
            "`"$rutaSalida`"", # La ruta al archivo .msi, entre comillas por si tiene espacios
            "/quiet",          # Modo silencioso, sin interfaz gráfica
            "/norestart"       # No reiniciar el sistema después de instalar
        )

        Start-Process msiexec.exe -ArgumentList $argumentos -Wait -PassThru

        Write-Host "✅ Node.js se ha instalado correctamente."
        $nodePath = Join-Path $env:ProgramFiles "nodejs"
        $env:Path += ";$nodePath"
        $nodeVersion = node -v
        Write-Host "La versión instalada de Node.js es $nodeVersion"

    }
    catch {
        Write-Error "Ocurrió un error durante la descarga o instalación: $($_.Exception.Message)"
    }
    finally {
        # --- Limpieza de archivos temporales ---
        if (Test-Path $rutaSalida) {
            Remove-Item $rutaSalida -Force -ErrorAction SilentlyContinue
            Write-Host "Limpieza del instalador temporal completada."
        }
    }
}

# Instalar dependencias usando npm
if (Test-Path "./package.json") {
    Write-Host " Instalando dependencias definidas en package.json..."
    npm install
}
else {
    Write-Host "⚠️ No se encontró package.json. Sin dependencias para instalar."
}

Write-Host " ✅ Configuración finalizada. ¡Tu entorno de investigación está listo!"