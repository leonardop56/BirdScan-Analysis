# BirdScan Radar Data Analysis

This repository contains the Jupyter notebook `Notebook_BirdScan.ipynb`, which includes a series of Python 3 scripts for analyzing data collected from the **Swiss bird radar (BirdScan MR1)**, owned by the **University of Amsterdam** and installed at **ARTIS Amsterdam Royal Zoo** in February 2021.

---

## 📅 Project Timeline

- **Radar Installation & Maintenance**: February – October 2021  
- **Data Analysis Period**: March 11, 2021 – September 1, 2021  

I personally contributed to the radar’s installation, maintenance, and data collection during this period.

---

## 🛠️ Tools & Data Sources

- **Radar Manufacturer**: Swiss Birdradar Solution (SBRS)
- **Analysis Tool**: [birdscanR (R package)](https://github.com/BirdScanCommunity/birdscanR/tree/develop/R)
  - Developed by SBRS & BirdRadar Community
  - Customized for ARTIS location and insect MTR calculation
- **Database**: SBRS PostgreSQL (via `pgAdmin`)
- **Environment**: Python 3, R

---

## 📂 Data Description

MTR (Migration Traffic Rate) was calculated using the modified R tool. The processed `.rds` files are stored in the `Data/` folder and include:

- **Period**: `20210311_20210901`
- **Resolution**: `3600s` (hourly) or `dayNight`
- **Height Interval**: `25m–1025m`
- **Bins**: `1bin`
- **Echo Types**:
  - `in`: insects
  - `pawaswlabifl`: various bird types
- **Rotation**: `rot`
- **Pulse**: `pulse-S` (short-pulse only)

---

## 📓 Notebook Overview

### 1. **Migration Traffic Rate (MTR) Analysis**

- Extracts daily and hourly MTR for March–September 2021
- Visualizes monthly and hourly trends

### 2. **Target Classification & Movement Analysis**

- Analyzes altitude, direction, and speed of different targets (birds/insects)
- Uses data extracted via `pgAdmin` (`data_20210907.csv`)
- Corresponding SQL query: `query_pgAdmin.sql`

> ⚠️ **Note**: Access to the BirdScan database requires permission from SBRS.

### 3. **Environmental Correlation**

- Explores the relationship between insect MTR and air temperature at ARTIS

---

## 📊 Results Summary

A PDF presentation summarizing key findings is available here:  
📄 `BirdScan_Analysis_20211008.pdf`

---

## ✅ How to Use

1. Clone this repository
2. Ensure you have the required Python and R environments
3. Open and run `Notebook_BirdScan.ipynb`

---

## 📬 Contact

For questions or access permissions, please contact SBRS or the BirdRadar Community.




The notebook *Notebook_BirdScan.ipynb* is a collection of Python3 scripts aimed at analyzing data from the Swiss bird radar (BirdScan MR1), owned by the University of Amsterdam and situated at ARTIS Amsterdam Royal Zoo in February 2021.

I personally contributed to the installation and maintenance of the bird radar at ARTIS and collected data between February and October 2021. 

Swiss Birdradar Solution (SBRS) is the radar manufacturer. Together with the Birdradar Community has developed an analysis tool in R to extract data from the SBRS PostgreSQL database and calculate the Migration Traffic Rate (MTR). Please refer to the Bird Scan Community public GitHub repository:
https://github.com/BirdScanCommunity/birdscanR/tree/develop/R

The R tool has been modified to account for the location of our radar, and for the calculation of the MTR for insects in addition to birds.

I calculated the average MTR per day/night and the MTR per hour for the period between 11-03-2021 and 01-09-2021. The resulting data is stored in the *Data* folder as rds files. The filenames contain the period of MTR calculation (*20210311_20210901*), the time resolution (either *3600s* or *dayNight*), the height interval (*25m-1025m*), the number of bins in height (*1bin*), the type of echoes (*in* for insects, *pawaswlabifl* for passerine, wader, swift, large single bird, flock, and unidentified bird together), the rotation (*rot*), and the type of pulse (*pulse-S* for short-pulse only).

The first part of the notebook deals with extracting the MTR calculated with the R tool and plotting it for every month between March and September 2021. It also analyzes the dependency of MTR on the hour of the day across the months.  

The second part of the notebook focuses on analyzing the distribution of altitude, direction, and speed for the different classes of targets (birds and insects) detected by the radar. The data for this section has been extracted directly from the PostgreSQL database via pgAdmin and stored in the Data folder as *data_20210907.csv*. The file name refers to the date of data extraction: 07-09-2021. The pgAdmin query used for data extraction has been uploaded to this repository as *query_pgAdmin.sql*. To connect to the BirdScan database you need permission from SBRS.

In the last part of the notebook, the relationship between insects’ MTR and air temperature at ARTIS is analyzed.  
    
Lastly, a summary of the notebook’s results can be found in the presentation *BirdScan_Analysis_20211008.pdf*.
