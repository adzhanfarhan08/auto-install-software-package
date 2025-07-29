# Script sederhana upgrade Chocolatey (versi stable saja)
Write-Host "Memulai upgrade Chocolatey (hanya versi stable)..."

try {
    # Jalankan upgrade dengan exclude pre-release
    choco upgrade all --exclude-prerelease -y
    
    Write-Host "Upgrade selesai!" -ForegroundColor Green
}
catch {
    Write-Host "Error: $_" -ForegroundColor Red
}