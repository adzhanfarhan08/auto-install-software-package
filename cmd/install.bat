@echo off

:: Running this script requires Administrator privileges
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Request Elevation Administrator...
    powershell -Command "Start-Process -Verb RunAs -FilePath '%~dpnx0'"
    exit /b
)

echo ===== INSTALLATION RUNNING =====
echo.

echo ===== INSTALLATION CHOCOLATEY =====
:: Install Chocolatey
winget install chocolatey.chocolatey
echo.

echo ===== INSTALLATION SOFTWARE PACKAGE =====
:: Install packages menggunakan Chocolatey
choco install -y ^
    7zip ^
    androidstudio ^
    brave ^
    dbeaver ^
    docker-desktop ^
    filezilla ^
    git ^
    golang ^
    jdk8 ^
    laragon.install ^
    lghub ^
    partitionwizard ^
    nodejs-lts ^
    notepadplusplus.install ^
    notion ^
    obsidian ^
    obs-studio ^
    office2019proplus ^
    openjdk ^
    postgresql ^
    putty.install ^
    python ^
    revo-uninstaller ^
    teamviewer ^
    ultraviewer ^
    utorrent ^
    visualstudio2022community ^
    vlc ^
    vmwareworkstation ^
    vmware-workstation-player ^
    vscode ^
    warp ^
    winrar ^
    yarn ^
    zotero
echo.

@REM echo ===== INSTALLATION FORCE SOFTWARE PACKAGE =====
@REM choco install -y --force ^
@REM     vmwareworkstation ^
@REM     vmware-workstation-player ^
@REM echo.

@REM echo ===== INSTALLATION WSL AND DISTRO =====
@REM :: Setup WSL
@REM wsl --install -d Ubuntu-22.04
@REM wsl --install -d kali-linux
@REM wsl --set-default-version 2
@REM echo.

pause