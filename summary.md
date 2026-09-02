# Summary

What's in this repository and what each piece does.

## Structure

```
.
├── README.md              Project overview
├── summary.md             This file
├── data/
│   └── cloud_salaries.csv Source dataset
└── dashboard/
    └── dashboard.html     Interactive salary dashboard
```

## `README.md`

Short project overview: this repo builds an interactive dashboard from a dataset of cloud/DevOps role salaries.

## `data/cloud_salaries.csv`

The source dataset — 215 salary records, one row per posting, with six columns:

| Column | Description |
|---|---|
| `Job Title` | One of 20 cloud/DevOps roles (e.g. Cloud Solutions Architect, DevOps Engineer, Site Reliability Engineer) |
| `City` | One of 10 U.S. metros (San Francisco, New York, Seattle, Austin, Chicago, Denver, Boston, Atlanta, Los Angeles, Dallas) |
| `Salary` | Annual base salary in USD |
| `Experience Level` | Junior, Mid-Level, or Senior |
| `Cloud Platform` | AWS, Azure, or GCP |
| `Company Size` | Small, Medium, or Large |

Salaries range from $102,000 to $190,000, averaging roughly $146,000.

## `dashboard/dashboard.html`

A self-contained, interactive dashboard built on this dataset — open the file directly in any browser, no server or install required.

**What it shows:**
- **Average salary by role** — horizontal bar chart ranking all 20 roles
- **Average salary by city** — bar chart across the 10 metros
- **Cloud platform breakdown** — average salary and share of postings for AWS, Azure, and GCP
- **KPI tiles** — records in view, average salary, highest-paid record, salary range
- **Filters** — narrow every chart, KPI, and table row by Experience Level and Company Size
- **Full record table** — all 215 rows, sortable by any column

**How it's built:** Chart.js is bundled directly into the HTML file (no CDN dependency), and the dataset is embedded inline as JSON, so the whole dashboard works offline from a single file. It also adapts to light/dark mode automatically.

**Where it's published:** on GitHub Pages, once enabled, at
`https://philiplerner-datasci.github.io/claude-salary-dashboard/dashboard/dashboard.html`
