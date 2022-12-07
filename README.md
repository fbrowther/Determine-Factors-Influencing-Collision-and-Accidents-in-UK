# Project-2

This is an ETL project where a dataset is sourced, transformed (cleaned) and loaded onto either relational (PostgreSQL) or non-relational database (MongoDB) depending on the use case and the relationship of the data one is working on. 

After loading, the stored database can then be accessed/queried to analyse, derive insights in order to solve the initial business use case successfully. 

### ETL
The ETL process of Extraction, Transformation and Loading; hence forms an integral part of the entire data pipeline.

![ETL](https://webassets.mongodb.com/_com_assets/cms/ETL_Visual-sa656kl6df.png)

(The current ETL image was sourced from MongoDB.com)

# Use case 1 - 
Objective : Being a data engineer for a 


# Use case 2 - 
# Data Extraction - 
Acting as a team of data engineers on this ETL project, we were required to source the datasets that will investigate UK Road Traffic Collision for the period of 2005-2017. 

After sourcing the dataset, we transformed the data and uploaded to the Postgresql (Accident_db) for further analysis by the Data Analytics Team.
   
   (a) Data Source: www.kaggle.com.
   
   (b) Datasets : UK Road Traffic Collision for the period of 2005-2017. 
   
   (b) Dataset had two csv files consisting of (a) accident_data and (b) vehicle_data 
   
   (c) Owing to the large size of these datasets, we were unable to upload the files to GitHub.
   
   (d) Hence, we have provided the link to the datasets - https://www.kaggle.com/datasets/salmankhaliq22/road-traffic-collision-dataset
   
# Extract Transform Load (ETL) Pipeline - 
The ETL Pipeline employed for this project is presented as follows - 

![alt text](https://github.com/hibaaaldubai/Group-1-Project-2/blob/main/ETL%20Diagram.png)

# Entity Relationship Diagram (ERD)-

We inspected the CSV files at hand and sketched out an ERD diagram of the two datasets employing a free online tool (http://www.quickdatabasediagrams.com). 

![alt text](https://github.com/hibaaaldubai/Group-1-Project-2/blob/main/ERD%20diagram%202.png)

# Data transformation - 
   
   (a) Unneccessary colums were taken out 
   
   (b) Simplify and rename the column names of the two data files
   
   (c) Rows with missing data were taken out.
   
   (d) Unique value counts of columns were determined and 'Not known' & 'Data missing or out of range' were taken from the data file.
   
   (e) Accident file had (1048575 rows × 4 columns) values and after the cleaning process we had (1027183 rows × 4 columns) value counts.
   
   (f) Vehicle file had (2177205 rows × 6 columns) values and after the cleaning process we had (1518391 rows × 6 columns) value counts.
   
   (g) The clean pandas dataframes were uploaded to postgresql.
   

# Data Engineering -
Accident_db was created on Postgresql followed by creating two tables namely - Accident and Vehicle. 

Using the provided information, we created table schema for each of the CSV files followed by specifing their data types, primary keys, foreign keys, and other constraints. The .sql schema file has been attached for your reference. 

# Loading of the data onto Postgresql - 
We successfully loaded the cleaned dataframe onto the respective empty tables in Postgresql after establishing connection by creating an engine. The details are included in the Analysisfinal.ipynb file (https://github.com/hibaaaldubai/Group-1-Project-2/blob/main/AnalysisFinal.ipynb). 

The successful uploading was confirmed by the (SELECT * FROM accident/vehicle) query and the following secreenshots display the same as follows -

![alt text](https://github.com/hibaaaldubai/Group-1-Project-2/blob/main/Postgresql%20/Accident.png)

![alt text](https://github.com/hibaaaldubai/Group-1-Project-2/blob/main/Postgresql%20/Vehicle.png)


# Conclusions -
  As a part of this project, we were able to successfully extract, transform and load the data onto the relational database, Postgresql for further analysis by the Data Analytics team. 

# Future work suggestions -
  The database tables 'accident' and 'vehicle' could be joined (FULL JOIN) at the primary key id (accident index) and the following queries could be performed -
    
    (a) Is there any correlation between 'driver_age' and 'accident severity'
    
    (b) Is there any correlation between 'vehicle_age' and 'accident severity'
    
    (c) Is there any correlation between 'driver_sex' and 'accident severity'
    
    (d) Is there any correlation between 'model' and 'make'(indicating the vehicle size and type indirectly) and 'accident severity'
    
    (e) Is there any correlation between 'weather conditions' and 'accident severity'
    
    (f) Is there any correlation between 'day of the week' and 'accident severity'





