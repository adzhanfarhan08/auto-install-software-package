# Run this script as Administrator to install necessary software and tools
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Start-Process powershell -Verb RunAs -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$($MyInvocation.MyCommand.Path)`""
    Exit
}

# Pause for debugging
Read-Host -Prompt "Press Enter to exit"

Write-Host "=== INSTALLATION ===" 

# Install Chocolatey
winget install chocolatey.chocolatey

# Install packages using Chocolatey
choco install -y `
    7zip `
    androidstudio `
    brave `
    dbeaver `
    docker-desktop `
    filezilla `
    git `
    golang `
    jdk8 `
    laragon.install `
    lghub `
    partitionwizard `
    nodejs-lts `
    notepadplusplus.install `
    notion `
    obsidian `
    obs-studio `
    openjdk `
    putty.install `
    python `
    teamviewer `
    ultraviewer `
    utorrent `
    visualstudio2022community `
    vlc `
    vmwareworkstation `
    vmware-workstation-player `
    vscode `
    warp `
    winrar `
    yarn `
    zotero

# Setup WSL
wsl --install
wsl --set-default-version 2
wsl --install -d Ubuntu-22.04
wsl --install -d kali-linux