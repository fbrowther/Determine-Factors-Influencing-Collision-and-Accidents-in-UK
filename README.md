# Project-2

This is an ETL project where a dataset is sourced, transformed (cleaned) and loaded onto either relational (PostgreSQL) or non-relational database (MongoDB) depending on the use case and the relationship of the data one is working on. 

After loading, the stored database can then be accessed/queried to analyse, derive insights in order to solve the initial business use case successfully. 

### ETL
The ETL process of Extraction, Transformation and Loading; hence forms an integral part of the entire data pipeline.

![ETL](https://webassets.mongodb.com/_com_assets/cms/ETL_Visual-sa656kl6df.png)

(The current ETL image was sourced from MongoDB.com)

# Objective of the project - 
### To determine the factors influening the UK Road Traffic Collision and Accident. 
Owing to the advancement of infrastructure within the transport industry with regards to the technologies within the cars and the road conditions, casualties resulting from the road traffic collision has consistently seen a downward trend (since the 1960s). 
However, still a substantial number of road traffic collision and accident do occur and they result in serious/fatal consequences. 

In order to determine what factors are influenceing the road traffic collision and accident, two CSV datafiles consisting of accident and vehicle details was sourced from the Department of Transport (UK) for the period of 2005-2017 (https://www.kaggle.com/datasets/salmankhaliq22/road-traffic-collision-dataset). The datasets obtainable from the Department of Transport contains extensive information detailing the collision and accident in addition to the weather and road condition.

The data analysis project will determine the relationship of accident with regards to 


As a data engineer for the goverment transport department (hypothetical), i was required to work on a project to determine from any correlation between 'driver_age' and 'accident severity'


UK RTCs which have resulted in a persons death have been on a downward trend since the 1960s – however in 2020 1,516 people lost their lives on UK roads. The UK road systems, especially in Liverpool, are dated which means they have not been upgraded to reflect the increase of cars on the road. This means there are still preventative measures that could be implemented to prevent even more deaths on UK roads.

The UK government compiles and disseminates extensive data about road incidents around the nation (often once per year). This data is particularly fascinating and thorough for analysis and research because it contains, but is not limited to, geographic areas, weather conditions, vehicle types, casualty numbers, and vehicle manoeuvres.

The data come from the Open Data website of the UK government, where they have been published by the Department of Transport.

The dataset comprises of two csv files:
    
    (b) Is there any correlation between 'vehicle_age' and 'accident severity'
    
    (c) Is there any correlation between 'driver_sex' and 'accident severity'
    
    (d) Is there any correlation between 'model' and 'make'(indicating the vehicle size and type indirectly) and 'accident severity'
    
    (e) Is there any correlation between 'weather conditions' and 'accident severity'
    
    (f) Is there any correlation between 'day of the week' and 'accident severity'




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





