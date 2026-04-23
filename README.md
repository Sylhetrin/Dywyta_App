# Dywyta PWA - Installer Page

**One-click installer page** that adds **www.dywyta.pl** as a web app to user's home screen.

## 🎯 How It Works

1. **User scans QR code** (printed in your shop) → Opens this GitHub Pages site
2. **User clicks "Zainstaluj aplikację"** button (or follows iOS instructions)
3. **www.dywyta.pl is installed** as a standalone app on their phone
4. Done! The Dywyta website icon appears on their home screen

## 📁 Files

```
dywyta-pwa/
├── index.html              # Installer page (RED theme, Polish)
├── manifest.json           # Points to www.dywyta.pl
├── service-worker.js       # Caching for dywyta.pl
├── icons/                  # RED "D" logo icons (8 sizes)
├── generate-icons.ps1      # Regenerate icons if needed
├── generate-printable-qr.ps1  # Generate QR code for printing
├── qr-code-printable.png   # HIGH-QUALITY QR for shop display
└── README.md               # This file
```

## 🚀 Deploy to GitHub Pages

### Upload Files
```bash
# Clone or create repo: sylhetrin.github.io/Dywyta_App
git clone https://github.com/sylhetrin/Dywyta_App.git
cd Dywyta_App

# Copy all files here
# Commit and push
git add .
git commit -m "PWA installer for dywyta.pl"
git push origin main
```

### Enable GitHub Pages
1. Go to repo **Settings** → **Pages**
2. Source: `main` branch, `/ (root)` folder
3. Save

Live URL: `https://sylhetrin.github.io/Dywyta_App/`

## 🖨️ Print QR Code for Shop

The QR code is **already generated**: `qr-code-printable.png`

- **Size:** 1000x1000 px (print-ready, high quality)
- **Colors:** Red (#dc2626) on white background
- **Links to:** https://sylhetrin.github.io/Dywyta_App/

### Printing Tips:
- Print at least **5x5 cm** for easy scanning
- Laminate for durability
- Place at eye level near entrance/counter
- Add caption: *"Zeskanuj aby zainstalować aplikację Dywyta"*

To regenerate (if URL changes):
```powershell
.\generate-printable-qr.ps1
```

## 📱 User Flow

### Android:
1. Scan QR → Opens installer page
2. Tap **"📲 Zainstaluj aplikację"** button
3. Confirm installation
4. **www.dywyta.pl** icon appears on home screen

### iPhone:
1. Scan QR → Opens installer page
2. See instructions: Share → "Dodaj do ekranu głównego" → Add
3. **www.dywyta.pl** icon appears on home screen

## 🎨 Branding

- **Color:** Red (#dc2626) - matches Dywyta brand
- **Logo:** White "D" on red background
- **Language:** Polish (senior-friendly, large text)

To change colors, edit:
- `index.html` - CSS colors
- `manifest.json` - theme_color
- `generate-icons.ps1` - icon background color

## ✅ What Gets Installed

When users install, they get:
- **App name:** Dywyta
- **Icon:** Red "D" logo
- **Opens:** www.dywyta.pl
- **Display:** Standalone (no browser UI)
- **Offline support:** Basic caching via service worker

## 🔧 Testing

1. Open https://sylhetrin.github.io/Dywyta_App/ on phone
2. Android: Should see "Zainstaluj aplikację" button
3. iOS: Should see step-by-step instructions
4. After install: www.dywyta.pl opens as standalone app

## 📞 Support

- GitHub Pages: https://pages.github.com/
- PWA info: https://web.dev/progressive-web-apps/

---

**Made for Dywyta.pl** ❤️
