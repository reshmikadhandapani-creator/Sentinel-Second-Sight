# Sentinel Second Sight - Project Structure

This repository hosts multiple dashboard views for the Sentinel evidence management system.

## 📁 File Organization

```
/
├── index.html          Landing page with navigation to all dashboards
├── internal.html       Internal Management dashboard (William)
├── sales.html          Sales Predictive Analytics dashboard (Reshmika)
├── data/               Shared data folder for CSV files
│   ├── Contracts Linked to CCadmin Status_data (5).csv
│   ├── Copy of VMEL Metrics - Metrics.csv
│   ├── Copy of VMEL Metrics - Storage.csv
│   ├── Copy of VMEL Metrics - ActiveCameras.csv
│   └── Copy of Storage Per Agency (USGov) - April 2026 - prod-agency-storage-size-202605.csv
├── context/            Documentation and context files
└── README.md           Main project documentation
```

## 🎯 Dashboard Ownership

### Internal Management Dashboard (`internal.html`)
**Owner:** William Elliott  
**Purpose:** Storage capacity tracking, camera authorization monitoring, contract expiration alerts  
**Status:** ✅ Live

### Sales Predictive Analytics (`sales.html`)
**Owner:** Reshmika  
**Purpose:** Revenue forecasting, opportunity tracking, customer expansion insights  
**Status:** 🚧 Under Development

## 🔄 Collaboration Guidelines

### For William (Internal Management):
- Make all changes to `internal.html`
- Do not modify `sales.html` or `index.html` unless coordinating with Reshmika
- You can add data files to `data/` folder - just document them here

### For Reshmika (Sales Analytics):
- Make all changes to `sales.html`
- Do not modify `internal.html` unless coordinating with William
- You can add your own data files to `data/` folder
- The existing CSS theme variables in `internal.html` can be referenced for consistent styling:
  ```css
  --bg-main: #0b1118;
  --bg-elevated: #0d1c2e;
  --accent-teal: #00a3cc;
  --text-primary: #ffffff;
  --text-secondary: #b0bac9;
  ```

### Updating the Landing Page (`index.html`):
- Coordinate changes to the landing page
- Add new dashboard cards as needed
- Keep descriptions concise and accurate

## 🚀 Deployment

This repository uses GitHub Pages from the `gh-pages` branch.

**Live URL:** https://reshmikadhandapani-creator.github.io/Sentinel-Second-Sight/

### To Deploy:
```bash
git add .
git commit -m "Your descriptive message"
git push origin gh-pages
```

GitHub Pages will automatically rebuild and deploy within 1-2 minutes.

## 📊 Shared Data Files

The `data/` folder contains CSV exports used by the dashboards:

- **Contracts CSV**: Contract line items with part numbers, quantities, dates
- **VMEL Metrics**: Camera counts by device type and agency
- **VMEL Storage**: Storage usage by department and billing period
- **VMEL ActiveCameras**: Active camera serial numbers for verification
- **Storage Per Agency**: Legacy storage data (fallback)

### Adding New Data Files:
1. Place CSV files in the `data/` folder
2. Document the file purpose in this README
3. Use relative paths in your code: `./data/your-file.csv`

## 🐛 Known Issues

### Internal Management Dashboard:
- Texas DPS storage showing 0.18 GB instead of expected ~7.3 TB (under investigation)
- Diagnostic console logging enabled for troubleshooting

## 📞 Contact

- **William Elliott** - Internal Management Dashboard - QHR738@motorolasolutions.com
- **Reshmika** - Sales Predictive Analytics Dashboard
