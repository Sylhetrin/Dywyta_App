# Generate PRINTABLE QR Code for Dywyta PWA Installer
$installUrl = "https://sylhetrin.github.io/Dywyta_App/"
$outputFile = "qr-code-printable.png"

Write-Host "Dywyta - Printable QR Code Generator" -ForegroundColor Cyan
Write-Host "Install URL: $installUrl" -ForegroundColor Gray

try {
    # Build URL manually to avoid encoding issues
    $size = "1000x1000"
    $downloadUrl = "https://api.qrserver.com/v1/create-qr-code/?size=$size&data=$installUrl&color=dc2626&bgcolor=ffffff"
    
    $outputPath = Join-Path (Get-Location) $outputFile
    Invoke-WebRequest -Uri $downloadUrl -OutFile $outputPath
    
    Write-Host "QR Code generated: $outputPath" -ForegroundColor Green
    Write-Host "Size: 1000x1000 px, Red on white" -ForegroundColor Gray
}
catch {
    Write-Host "Error: $($_.Exception.Message)" -ForegroundColor Red
}
