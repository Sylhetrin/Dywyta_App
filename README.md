# Dywyta PWA - Progressive Web App Installer

Simple PWA installer site for dywyta.pl - designed for seniors and older users.

## 📁 Files Included

```
dywyta-pwa/
├── index.html           # Main install page (Polish, senior-friendly)
├── manifest.json        # PWA manifest
├── service-worker.js    # Offline caching
├── icons/
│   ├── README.md        # Icon creation guide
│   └── [icon-*.png]     # App icons (run generate-icons.ps1)
├── generate-icons.ps1   # Generate placeholder icons
├── generate-qr.ps1      # Generate QR code
└── README.md            # This file
```

## 🚀 Deployment on GitHub Pages

### Step 1: Create GitHub Repository

1. Go to https://github.com/new
2. Repository name: `dywyta-pwa`
3. Make it **Public**
4. Click **Create repository**

### Step 2: Upload Files

**Option A: Using Git (Recommended)**

```bash
# Clone the repository
git clone https://github.com/YOUR-USERNAME/dywyta-pwa.git
cd dywyta-pwa

# Copy all files from this folder
# (copy index.html, manifest.json, service-worker.js, icons/, etc.)

# Commit and push
git add .
git commit -m "Initial PWA commit"
git push origin main
```

**Option B: Using GitHub Web Interface**

1. Go to your repository on GitHub
2. Click **Add file** → **Upload files**
3. Drag and drop all files
4. Click **Commit changes**

### Step 3: Enable GitHub Pages

1. Go to repository **Settings**
2. Click **Pages** (left sidebar)
3. Under **Source**, select:
   - Branch: `main` (or `master`)
   - Folder: `/ (root)`
4. Click **Save**
5. Wait 1-2 minutes for deployment

Your site will be live at:
```
https://YOUR-USERNAME.github.io/dywyta-pwa/
```

### Step 4: Generate Icons

Run the icon generator script:

```powershell
cd dywyta-pwa
.\generate-icons.ps1
```

This creates placeholder icons with a blue "D" logo. Replace with your actual logo later.

### Step 5: Generate QR Code

Update the URL in `generate-qr.ps1` with your GitHub Pages URL, then run:

```powershell
.\generate-qr.ps1
```

This creates `qr-code.png` - ready to print or share!

## 📱 How It Works

### Android Users
1. Scan QR code
2. Page detects Android
3. Shows "Zainstaluj aplikację" button
4. Tap to install → app appears on home screen

### iOS Users
1. Scan QR code
2. Page shows iOS instructions
3. User taps Share → "Dodaj do ekranu głównego"
4. App appears on home screen

## 🎨 Customization

### Change Brand Colors

Edit `index.html` and `manifest.json`:

```css
/* In index.html */
background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
.theme-color: #2563eb;

/* In manifest.json */
"theme_color": "#2563eb"
```

### Replace Logo Icons

1. Create a 512x512 px logo
2. Use https://realfavicongenerator.net/
3. Download all sizes
4. Replace files in `icons/` folder

### Change App Name

Edit `manifest.json`:

```json
{
  "name": "Your App Name",
  "short_name": "YourApp"
}
```

## ✅ Testing

### Before Deploying

1. Test locally with a simple HTTP server:

```powershell
# PowerShell (Windows 10+)
python -m http.server 8000

# Or use Node.js
npx http-server -p 8000
```

2. Open `http://localhost:8000` on your phone
3. Test install flow

### After Deploying

1. Open your GitHub Pages URL on phone
2. Verify install button appears (Android)
3. Verify instructions show (iOS)
4. Test that app opens standalone

## 🔧 Troubleshooting

### Install Button Not Showing (Android)

- Must be served over HTTPS (GitHub Pages does this automatically)
- Must have valid manifest.json
- Must have service worker registered
- Chrome may require visiting twice

### QR Code Not Working

- Check URL is correct
- Make sure GitHub Pages is enabled
- Wait 1-2 minutes after deployment

### Icons Not Loading

- Check file names match manifest.json
- Verify icons are in `icons/` folder
- Clear browser cache

## 📞 Support

For issues or questions, check:
- GitHub Pages docs: https://pages.github.com/
- PWA basics: https://web.dev/progressive-web-apps/

---

**Built for dywyta.pl** ❤️
