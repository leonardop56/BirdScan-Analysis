Created by: Leonardo Porcacchia, 08-10-2021  
Modified by: Leonardo Porcacchia, 19-02-2025   
leonardo.porcacchia@gmail.com


The notebook *Notebook_BirdScan.ipynb* is a collection of Python3 scripts aimed at analyzing data from the Swiss bird radar (BirdScan MR1), owned by the University of Amsterdam and situated at ARTIS Amsterdam Royal Zoo in February 2021.

To run the notebook you need first to extract the compressed data available in the *Data* folder.

I personally contributed to the installation and maintenance of the bird radar and collected data between February and October 2021. 

Swiss Birdradar Solution (SBRS) is the radar manufacturer. It has developed an analysis tool in R to extract data from the BirdScan PostgreSQL database and calculate the Migration Traffic Rate (MTR). Please refer to the Bird Scan Community public GitHub repository:
https://github.com/BirdScanCommunity/birdscanR/tree/develop/R

In the *Documentation* folder of this repository, you can find the radar documentation provided by SBRS, as well as the R function *AnalyzeData.R* that has been modified from the original SBRS version to account for the location of the University of Amsterdam radar, for the connection to the PostgreSQL database, and for the calculation of the MTR for insects in addition to birds.

I calculated the average MTR per day/night and the MTR per hour for the period between 11-03-2021 and 01-09-2021. The resulting data is stored in the Data folder as rds files. The filenames contain the period of MTR calculation (*20210311_20210901*), the time resolution (either *3600s* or *dayNight*), the height interval (*25m-1025m*), the number of bins in height (*1bin*), the type of echoes (*in* for insects, *pawaswlabifl* for passerine, wader, swift, large single bird, flock, and unidentified bird together), the rotation (*rot*), and the type of pulse (*pulse-S* for short-pulse only).

The first part of the notebook deals with reading the MTR calculated with the adjusted tool and plotting it for every month between March and September 2021. It also analyzes the dependency of MTR on the hour of the day across the months.  

The second part of the notebook focuses on analyzing the distribution of altitude, direction, and speed for the different classes of targets (birds and insects) detected by the radar. The data for this section has been extracted directly from the PostgreSQL database via pgAdmin and stored in the Data folder as *data_20210907.csv*. The file name refers to the date of data extraction: 07-09-2021. The pgAdmin query used for data extraction has been uploaded to this repository as *query_pgAdmin.sql*. To connect to the BirdScan database you need permission from SBRS.

In the last part of the notebook, the relationship between insects’ MTR and air temperature at ARTIS is analyzed.  
    
Lastly, a summary of the notebook’s results can be found in the presentation *BirdScan_Analysis_20211008.pdf*.
