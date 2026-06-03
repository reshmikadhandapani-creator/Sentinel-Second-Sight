# Welcome Reshmika! 👋

This repository is now set up for us to work together without merge conflicts.

## 🎯 Your Dashboard

Your dashboard file is: **`sales.html`**

You can completely replace this file with your Sales Predictive Analytics implementation.

## 🚀 Getting Started

```bash
# If you haven't cloned yet:
git clone https://github.com/reshmikadhandapani-creator/Sentinel-Second-Sight.git
cd Sentinel-Second-Sight

# If you already cloned, just pull the latest:
git pull origin main
```

## 📝 Working on Your Dashboard

1. **Edit only `sales.html`** - This is your file
2. **Add your data files** to the `data/` folder if needed
3. **Commit and push** your changes:
   ```bash
   git add sales.html
   git add data/your-new-file.csv  # if you added data
   git commit -m "Your descriptive message"
   git push origin main
   ```

## 🎨 Styling

The existing theme variables are available for consistent branding:

```css
--bg-main: #0b1118;           /* Main background */
--bg-elevated: #0d1c2e;       /* Card/elevated background */
--accent-teal: #00a3cc;       /* Primary accent color */
--text-primary: #ffffff;      /* Main text */
--text-secondary: #b0bac9;    /* Secondary text */
--status-green: #4ade80;      /* Success/healthy */
--status-yellow: #fbbf24;     /* Warning */
--status-red: #f87171;        /* Critical/error */
```

You can see these in action in `internal.html` if you need examples.

## 📂 Shared Data Folder

The `data/` folder contains CSV files that William's dashboard uses:
- Contracts CSV
- VMEL Metrics (cameras, storage)
- Storage per agency

You can:
- ✅ Use these files if they're relevant to sales analytics
- ✅ Add your own sales-related data files
- ⚠️ Don't modify William's existing data files (to avoid conflicts)

## 🌐 Testing Locally

```bash
# Start a local server
python -m http.server 8000

# Visit in browser:
# Landing page: http://localhost:8000/
# Your dashboard: http://localhost:8000/sales.html
```

## 🔄 Workflow Example

```bash
# Start working
git pull origin main

# Make your changes to sales.html
# Test locally

# Commit and push
git add sales.html
git commit -m "Add revenue forecasting chart"
git push origin main
```

William works on `internal.html`, you work on `sales.html` - no conflicts!

## 🌐 Live Site

After you push, your dashboard will be live at:

**Production:** https://reshmikadhandapani-creator.github.io/Sentinel-Second-Sight/sales.html

GitHub Pages automatically rebuilds in 1-2 minutes after each push.

## 📖 More Info

- **STRUCTURE.md** - Full collaboration guidelines
- **DEPLOYMENT_SUMMARY.md** - Deployment process
- **index.html** - Landing page (coordinate changes with William)

## 💬 Questions?

Reach out to William or check the documentation files above.

Happy coding! 🚀
