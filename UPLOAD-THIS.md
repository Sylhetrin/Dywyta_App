# ⚠️ IMPORTANT - Upload These Files to GitHub

## Files to Update:

Upload these 3 files to your GitHub repo (https://github.com/sylhetrin/Dywyta_App):

### 1. **index.html** (UPDATED)
- Now redirects to www.dywyta.pl after installation
- iOS: Opens dywyta.pl when launched from home screen
- Android: Redirects to dywyta.pl after user clicks install

### 2. **manifest.json** (UPDATED - CRITICAL!)
- `start_url` now points to `https://www.dywyta.pl`
- `scope` set to `https://www.dywyta.pl`
- Icons use absolute URLs from your GitHub Pages
- **This ensures the app opens dywyta.pl, NOT GitHub Pages**

### 3. **service-worker.js** (UPDATED)
- Simplified - only caches the installer page
- Doesn't interfere with dywyta.pl content

### 4. **icons/** folder (NO CHANGE NEEDED)
- Already uploaded, keep as is
- All 8 red icon files

---

## How It Works Now:

### User Flow:

1. **User scans QR code** → Opens GitHub Pages installer
2. **User taps "Zainstaluj"** (or follows iOS steps)
3. **App icon appears** on home screen (with Dywyta logo)
4. **User taps the icon** → Opens **www.dywyta.pl** (NOT GitHub!)

### Technical Details:

- **manifest.json** tells the phone: "This app opens www.dywyta.pl"
- **iOS script** detects when app is launched from home screen and redirects to dywyta.pl
- **Android** uses the manifest's start_url to open dywyta.pl directly

---

## Upload Steps:

1. Go to: https://github.com/sylhetrin/Dywyta_App
2. Click each file and replace with the new version
3. Commit changes
4. Wait 2-5 minutes for GitHub Pages to update
5. Test: Install the app → It should open www.dywyta.pl!

---

## Test After Upload:

1. Clear browser cache or use incognito
2. Open https://sylhetrin.github.io/Dywyta_App/
3. Install the app on your phone
4. **Tap the app icon** - it should open **www.dywyta.pl** ✅
