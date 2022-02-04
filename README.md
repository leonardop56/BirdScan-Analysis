The Jupyter Notebook “Notebook_BirdScan.ipynb” is a collection of Python3 scripts to analyze data from the Swiss bird radar (BirdScan MR1) owned by the University of Amsterdam and located at ARTIS Amsterdam Royal Zoo since February 2021. 

The data, before being analyzed, needs to be saved to your machine. 

I have previously calculated the average MTR per day/night and the MTR per hour for the period between 11-03-2021 and 01-09-2021. The resulting data is stored in the “rds” files. The name of the files contains the period of MTR calculation (“20210311_20210901”), the time resolution (either “3600s” or “dayNight”), the height interval (“25m-1025m”), number of bins in height (“1bin”), type of echoes (“in” for insects, “pawaswlabifl” for passerine, wader, swift, large single bird, flock, and unidentified bird together), roation (“rot”), and type of pulse (“pulse-S” for short-pulse only). I also saved some plots created in R to the folder “Plots”.

The first part of the notebook deals with reading the MTR calculated with the MR1 Analysis Tool and plotting it for every month between March ans September 2021. Also, it analyzes the dependency of MTR on the hour of the day across the months.  

The second part of the notebook is aimed at analyzing the distribution of altitude, direction, and speed for the different classes of targets (birds and insects) detected by the radar. The data analyzed in the second part is extracted directly from the PostgreSQL database through pgAdmin, and stored in the file “data_20210907.csv”. The file name refers to the date of extraction of the data: 07-09-2021. The pgAdmin query to extract the data has been uploaded to this folder with the name “query_pgAdmin_20210907.sql”. To connect to the BirdScan database through pgAdmin follow the instructions “birdscan_accessDB_instructions.pdf” in the Documentation folder.

In the last part of the notebook is shown the relationship between insects’ MTR and air temperature at ARTIS.

Some results of the analysis are shown in "BirsdScan_Analysis_20211019.pptx".
