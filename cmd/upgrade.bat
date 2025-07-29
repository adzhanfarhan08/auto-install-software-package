@echo off
:: Script untuk upgrade semua package Chocolatey (hanya versi stabil)
:: Harus dijalankan sebagai Administrator

:: Cek apakah Chocolatey terinstall
where choco >nul 2>&1
if %errorLevel% neq 0 (
    echo Error: Chocolatey tidak terinstall!
    echo Silakan install Chocolatey terlebih dahulu dari https://chocolatey.org/install
    pause
    exit /b 1
)

:: Meminta elevasi Administrator
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Meminta elevasi Administrator...
    powershell -Command "Start-Process -Verb RunAs -FilePath '%~dpnx0'"
    exit /b
)

echo Memulai upgrade Chocolatey (hanya versi stabil)...

:: Jalankan upgrade
choco upgrade all --exclude-prerelease -y
if %errorLevel% equ 0 (
    echo Upgrade selesai!
    color 0A
) else (
    echo Error terjadi saat upgrade.
    color 0C
)

pause