# Sentinel: Evidence Storage & Usage Governance Hub

Automated tracking engine for Motorola public safety storage entitlements and capacity issue detection.

## Quick Start

### Prerequisites
- Python 3.x (for HTTP server)
- Modern web browser (Chrome, Firefox, Edge, Safari)
- CSV data files in `/data/` directory

### Running the POC

1. Start a local HTTP server in the project directory:
```bash
cd Sentinel-Second-Sight
python -m http.server 8000
```

2. Open your browser and navigate to:
```
http://localhost:8000
```

3. The dashboard will load and parse CSV data automatically.

## Features

### Capacity Analysis
The POC analyzes three dimensions of storage compliance:

1. **Fixed Storage Capacity** (≥80% threshold)
   - Sums purchased GB from COMMANDCENTRAL EVIDENCE contracts
   - Compares against actual agency storage usage
   - Flags agencies using 80%+ of purchased capacity

2. **Camera Overage Detection**
   - Identifies unlimited per-camera storage purchases
   - Compares authorized camera counts to actual devices (from VMEL metrics)
   - Flags if agency operates more cameras than authorized

3. **Contract Expiration Warnings**
   - Tracks contract end dates from order data
   - Categorizes: Urgent (<30 days), Warning (30-60 days), Notice (60-90 days)
   - Flags any contracts expiring within 90 days

### Dashboard Features
- **Health Status Badges**: RED (critical), YELLOW (warning), GREEN (healthy)
- **Search & Filter**: By agency name or health status
- **Expandable Details**: Click any agency row to view:
  - Storage Analysis tab: Capacity meter and purchase breakdown
  - Cameras tab: Device counts by type (FourRE, VISTA, V300, M500, M500E, V700, SVX)
  - Contracts tab: Expiring contracts with days remaining

## Data Sources

The POC uses three CSV files:

1. **Contracts Linked to CCadmin Status_data (3).csv**
   - Account Name, Part Number, Item Description
   - Header Start/End Date, Order $ Amount
   - Provides: Storage entitlements, contract dates

2. **Copy of VMEL Metrics - Metrics.csv**
   - Agency names, device counts (FourRE, VISTA, V300, M500, M500E, V700, SVX)
   - TotalUsers active in system
   - Provides: Actual device usage per agency

3. **Copy of Storage Per Agency (USGov) - April 2026 - prod-agency-storage-size-202605.csv**
   - Agency names, current storage usage (in Bytes, GiB, GB, TiB)
   - Provides: Actual storage consumption

## Next Steps

- **Google Sheets Integration**: Replace static CSV with live API endpoints
- **Historical Tracking**: Store analysis results over time to identify trends
- **Webhook Alerts**: Real-time notifications when thresholds are exceeded
- **Report Export**: Generate PDF/Excel reports for stakeholders
- **Admin Controls**: Allow manual contract/entitlement overrides

## Architecture

- **Pure Client-Side**: No backend required; all analysis runs in browser
- **Data Format**: CSV parsing via PapaParse library
- **UI Framework**: Vanilla HTML/CSS/JavaScript (no dependencies)
- **Theme**: Dark mode matching Motorola design system
