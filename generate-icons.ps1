# PowerShell script to generate RED Dywyta icons
Add-Type -AssemblyName System.Drawing

$iconDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$iconDir = Join-Path $iconDir "icons"

if (!(Test-Path $iconDir)) {
    New-Item -ItemType Directory -Path $iconDir | Out-Null
}

$sizes = @(72, 96, 128, 144, 152, 192, 384, 512)

Write-Host "Generating RED Dywyta icons..." -ForegroundColor Cyan

foreach ($size in $sizes) {
    try {
        $bmp = New-Object System.Drawing.Bitmap($size, $size)
        $g = [System.Drawing.Graphics]::FromImage($bmp)
        
        # RED background (Dywyta brand color)
        $g.Clear([System.Drawing.Color]::FromArgb(220, 38, 38))
        
        $fontSize = [Math]::Max(20, $size * 0.4)
        $font = New-Object System.Drawing.Font("Arial", $fontSize, [System.Drawing.FontStyle]::Bold)
        $brush = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::White)
        
        $rect = New-Object System.Drawing.RectangleF(0, 0, $size, $size)
        $format = New-Object System.Drawing.StringFormat
        $format.Alignment = [System.Drawing.StringAlignment]::Center
        $format.LineAlignment = [System.Drawing.StringAlignment]::Center
        
        $g.DrawString("D", $font, $brush, $rect, $format)
        
        $iconPath = Join-Path $iconDir "icon-$size.png"
        $bmp.Save($iconPath, [System.Drawing.Imaging.ImageFormat]::Png)
        
        Write-Host "Created: icon-$size.png" -ForegroundColor Green
        
        $bmp.Dispose()
        $g.Dispose()
        $font.Dispose()
        $brush.Dispose()
        $format.Dispose()
    }
    catch {
        Write-Host "Failed: icon-$size.png" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "All icons generated in: $iconDir" -ForegroundColor Cyan
Write-Host "Ready to deploy!" -ForegroundColor Green
