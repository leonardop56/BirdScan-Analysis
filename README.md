# BirdScan Radar Data Analysis

This repository contains the Jupyter notebook `Notebook_BirdScan.ipynb`, which includes a series of Python 3 scripts developed to analyze data from the **Swiss bird radar (BirdScan MR1)**. This radar is owned by the **University of Amsterdam** and was installed at **ARTIS Amsterdam Royal Zoo** in February 2021.

---

## 🗕️ Project Timeline

- **Radar Installation & Maintenance**: February – October 2021
- **Data Analysis Period**: March 11, 2021 – September 1, 2021

I personally contributed to the radar’s installation, maintenance, and data collection during this period.

---

## 🛠️ Tools & Data Sources

- **Radar Manufacturer**: Swiss Birdradar Solution (SBRS)
- **Analysis Tool (MTR)**: [birdscanR (R package)](https://github.com/BirdScanCommunity/birdscanR/tree/develop/R)
  - Developed by SBRS & BirdRadar Community
  - Used to extract and calculate daily and hourly MTR from the SBRS PostgreSQL database
  - Customized for the ARTIS location and to include insect MTR
- **Database Access (Movement Data)**: SBRS PostgreSQL via `pgAdmin`
  - Used SQL queries to extract raw data such as altitude, direction, speed, and classification
- **Environment**: Python 3, R

---

## 📂 Data Description

- **MTR Files**: Calculated with the R tool and saved as `.rds` files in the `Data/` folder:
  - **Period**: `20210311_20210901`
  - **Resolution**: `3600s` (hourly) or `dayNight`
  - **Height Interval**: `25m–1025m`
  - **Bins**: `1bin`
  - **Echo Types**:
    - `in`: insects
    - `pawaswlabifl`: various bird types
  - **Rotation**: `rot`
  - **Pulse**: `pulse-S` (short-pulse only)

- **Movement Data File**: Extracted using `pgAdmin` and saved as `data_20210907.csv`
  - Includes target altitude, speed, direction, and classification
  - SQL query used: `query_pgAdmin.sql`

> ⚠️ **Note**: Access to the BirdScan database requires permission from SBRS.

---

## 📓 Notebook Overview

### Part 1: **Monthly and Hourly MTR Trends**

- Visualizes daily and hourly MTR for March–September 2021
- Based on `.rds` files generated with the birdscanR tool

### Part 2: **Target Classification & Movement Metrics**

- Analyzes altitude, direction, and speed of different targets (birds/insects)
- Based on raw data extracted from the PostgreSQL database using SQL (via `pgAdmin`)

### Part 3: **Environmental Correlation**

- Explores the relationship between insect MTR and air temperature at ARTIS
- Combines radar MTR data with local temperature observations

---

## 📊 Results Summary

A PDF presentation summarizing key findings is available here:  
📄 `BirdScan_Analysis_20211008.pdf`

---

## 📬 Contact

For questions or access permissions, please contact SBRS or the BirdRadar Community.

You can also reach me at: [leonardo.porcacchia@gmail.com](mailto:leonardo.porcacchia@gmail.com)
