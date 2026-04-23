# PowerShell script to generate QR code for Dywyta PWA
# Requires: PowerShell 5.0+ and internet connection

param(
    [string]$Url = "https://YOUR-GITHUB-USERNAME.github.io/dywyta-pwa/",
    [string]$OutputPath = ".\qr-code.png"
)

Write-Host "Dywyta PWA - QR Code Generator" -ForegroundColor Cyan
Write-Host "================================" -ForegroundColor Cyan
Write-Host ""

# Check if URL is still placeholder
if ($Url -eq "https://YOUR-GITHUB-USERNAME.github.io/dywyta-pwa/") {
    Write-Host "⚠️  Please update the URL in this script with your actual GitHub Pages URL" -ForegroundColor Yellow
    Write-Host "   Example: https://karol.github.io/dywyta-pwa/" -ForegroundColor Gray
    Write-Host ""
    $continue = Read-Host "Continue with placeholder URL? (y/n)"
    if ($continue -ne 'y') {
        return
    }
}

Write-Host "Generating QR code for: $Url" -ForegroundColor Green
Write-Host ""

try {
    # Use QR code API (no installation required)
    $qrApiUrl = "https://api.qrserver.com/v1/create-qr-code/"
    $size = "512x512"
    $data = [System.Web.HttpUtility]::UrlEncode($Url)
    $downloadUrl = "$qrApiUrl?size=$size&data=$data"
    
    # Download QR code
    $outputFile = Join-Path (Get-Location) $OutputPath
    Invoke-WebRequest -Uri $downloadUrl -OutFile $outputFile
    
    Write-Host "✓ QR code generated successfully!" -ForegroundColor Green
    Write-Host "  Location: $outputFile" -ForegroundColor Gray
    Write-Host "  Size: 512x512 px" -ForegroundColor Gray
    Write-Host ""
    Write-Host "You can now:" -ForegroundColor Cyan
    Write-Host "  - Print it for users" -ForegroundColor Gray
    Write-Host "  - Add it to marketing materials" -ForegroundColor Gray
    Write-Host "  - Share it digitally" -ForegroundColor Gray
}
catch {
    Write-Host "✗ Error generating QR code" -ForegroundColor Red
    Write-Host "  $($_.Exception.Message)" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Alternative: Generate QR manually at:" -ForegroundColor Cyan
    Write-Host "  https://www.qr-code-generator.com/" -ForegroundColor Gray
}
