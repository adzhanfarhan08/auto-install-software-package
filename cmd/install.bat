@echo off
:: Script instalasi software (run as Administrator)
:: Simpan sebagai install_software.bat

:: Cek running sebagai Administrator
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Request Elevation Administrator...
    powershell -Command "Start-Process -Verb RunAs -FilePath '%~dpnx0'"
    exit /b
)

echo ===== INSTALLATION RUNNING =====
echo

echo ===== INSTALLATION CHOCOLATEY =====
:: Install Chocolatey
winget install chocolatey.chocolatey
echo

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
    openjdk ^
    putty.install ^
    python ^
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
echo

echo ===== INSTALLATION FORCE SOFTWARE PACKAGE =====
choco install -y --force ^
    vmwareworkstation ^
    vmware-workstation-player ^
echo

echo ===== INSTALLATION WSL AND DISTRO =====
:: Setup WSL
wsl --install -d Ubuntu-22.04
wsl --install -d kali-linux
wsl --set-default-version 2
echo

pause