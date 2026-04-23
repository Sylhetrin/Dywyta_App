# Dywyta App Icons

You need to create PNG icons for the PWA. Here are the required sizes:

## Required Icon Sizes

- `icon-72.png` (72x72 px)
- `icon-96.png` (96x96 px)
- `icon-128.png` (128x128 px)
- `icon-144.png` (144x144 px)
- `icon-152.png` (152x152 px)
- `icon-192.png` (192x192 px)
- `icon-384.png` (384x384 px)
- `icon-512.png` (512x512 px)

## How to Create Icons

### Option 1: Use an Online Generator (Easiest)
1. Go to https://realfavicongenerator.net/
2. Upload your logo (at least 512x512 px)
3. Download the generated icons
4. Copy them to this `icons/` folder

### Option 2: Use Canva
1. Create a 512x512 px design with your logo
2. Download as PNG
3. Resize to other sizes using any image editor

### Option 3: Quick Placeholder (for testing)
Run this PowerShell script to generate simple placeholder icons:

```powershell
Add-Type -AssemblyName System.Drawing

$sizes = @(72, 96, 128, 144, 152, 192, 384, 512)
$colors = @('#2563eb', '#1d4ed8', '#1e40af')

foreach ($size in $sizes) {
    $bmp = New-Object System.Drawing.Bitmap($size, $size)
    $g = [System.Drawing.Graphics]::FromImage($bmp)
    $g.Clear([System.Drawing.Color]::FromArgb(37, 99, 235))
    
    $font = New-Object System.Drawing.Font("Arial", $size * 0.4, [System.Drawing.FontStyle]::Bold)
    $brush = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::White)
    $rect = New-Object System.Drawing.RectangleF(0, 0, $size, $size)
    $format = New-Object System.Drawing.StringFormat()
    $format.Alignment = [System.Drawing.StringAlignment]::Center
    $format.LineAlignment = [System.Drawing.StringAlignment]::Center
    
    $g.DrawString("D", $font, $brush, $rect, $format)
    $bmp.Save("$PSScriptRoot\icon-$size.png", [System.Drawing.Imaging.ImageFormat]::Png)
    $bmp.Dispose()
    $g.Dispose()
}

Write-Host "Icons generated successfully!"
```

## Icon Design Tips

- Use a simple, recognizable logo
- High contrast works best
- Avoid text (it becomes unreadable at small sizes)
- Test on both light and dark backgrounds
- The "D" placeholder works fine for testing!
