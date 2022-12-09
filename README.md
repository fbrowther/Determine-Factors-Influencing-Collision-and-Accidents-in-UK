# Project-2

### Brief Introduction
This is an ETL project. As a part of this project, I was required to extract, transform and load the cleaned data onto a database. Either a relational database such as PostgreSQL or non-relational database (MongoDB) can be chosen depending on the use case and the relationship of the data that exist within this dataset. After loading, the stored database can then be accessed and queried to analyse and derive insights to solve the business problem successfully. 

### ETL
The ETL process of Extraction, Transformation and Loading hence forms an integral part of the entire data pipeline.

![ETL](https://webassets.mongodb.com/_com_assets/cms/ETL_Visual-sa656kl6df.png)

(The current ETL image was sourced from MongoDB.com)



# Objective of the project: 
### To determine the factors influening UK Road Traffic Collision and Accident. 
Since the 1960s, the advancement of infrastructure within the transport industry with regards to the technologies within the cars and the road conditions are undebatable. This has positively resulted in downward trend in road traffic collisions/accidents. However, still a substantial number of road traffic accidents do occur and they can result in serious/fatal consequences. 

### Data Extraction
In order to determine what factors are influencing the road traffic collision and accident, two CSV datafiles consisting of accident and vehicle details were sourced from (https://www.kaggle.com/datasets/salmankhaliq22/road-traffic-collision-dataset). These datasets were initally obtained from the Department of Transport (UK) for the period 2005-2017.  The accident dataset contains extensive information detailing the collision and accident alongside the weather and road condition. The vehicle dataset however, gives details of the vehicle involved in the collision along with driver information and vehicle manoeuvre that resulted in the collision.

The datasets used in this project exceeded the size limit of GitHub, hence couldnt upload the files to this repository. Instead the link to the datasets are provided if they need to be accessed.

### Data transformation
After gathering initial requirements from the data analysis team who will determining the relationship of the accident to factors such as 'speed limit', 'weather conditions', 'day of the week', 'road condition', 'vehicle_age', 'driver_age', 'driver_sex' and 'vehicle manoeuvre' etc, the data cleaning process was commenced.

   (a) Unneccessary columns that were not part of the data analysis requirement were taken out
   
   (b) The column names of the two data files were simplified and renamed 
   
   (c) Rows with missing data were taken out
   
   (d) Unique value counts of columns were determined and 'Not known' & 'Data missing or out of range' were taken out from the data file.
   
   (e) Accident file had (1048575 rows × 34 columns) values and after the cleaning process I had (1026974 rows × 6 columns) value counts.
       The column names included in the cleaned accident file are id, accident_severity, day_of_week, Speed_Limit, Road_Conditions, and weather_Conditions
       
   (f) Vehicle file had (2177205 rows × 24 columns) values and after the cleaning process I had (1517856 rows × 6 columns) value counts.
       The column names included in the cleaned accident file are id, driver_Age, vehicle_Age, make, model, driver_sex and Vehicle_Manoeuvre
       
   (g) The clean pandas dataframes were uploaded to postgresql (use case 1) and MongoDB (use case 2).
   

# Use case 1: 
### Entity Relationship Diagram (ERD)
The cleaned data files were inspected and ERD diagram of the two datasets were sketched out employing a free online tool (http://www.quickdatabasediagrams.com). 
![alt text](https://github.com/fbrowther/Project-2/blob/main/ERD%20diagram.png)

### Working with Relational database to determine the factors influencing UK road traffic collision and accident
Since there exist a relationship between the accident and vehicle dataset with ID (accident_index) being common between the two, it was obvious to upload 
the clean dataset to PostgreSQL which is a relational database. 

### Data Engineering 
Database 'Accident_db' was created in Postgresql followed by creating two tables - Accident and Vehicle with required column names. 

Using the provided information, we created table schema for each of the cleaned CSV files followed by specifing their data types, primary keys, foreign keys, and other constraints. The .sql schema file has been attached for your reference. 

ID (accident_index) was chosen as the primary key for the 'accident_data' table. 
ID (accident_index) of the multiple vehicle involved in collision was the foreign_key for the 'vehicle_data' table.


### Uploading data onto PostgreSQL - 
The cleaned dataframe were loaded onto the respective empty tables in Postgresql after establishing connection by creating an engine. The details are included in the Analysisfinal.ipynb file (https://github.com/fbrowther/Project-2/blob/main/AnalysisFinal.ipynb) 

The successful uploading of the data was confirmed by the (SELECT * FROM accident_data/vehicle_data) query and the screenshots included below display the same-

![alt text](https://github.com/fbrowther/Project-2/blob/main/Postgresql%20/accident_data.png)

![alt text](https://github.com/fbrowther/Project-2/blob/main/Postgresql%20/vehicle_data.png)

### Data Analysis
Database tables 'accident_data' and 'vehicle_data' could be joined (FULL JOIN) at the primary key id and the relationship of traffic collision to 'speed limit', 'weather conditions', 'day of the week', 'road condition', 'vehicle_age', 'driver_age', 'driver_sex' and 'vehicle manoeuvre' etc could be deteremined.

# Use case 2: 
If a relationship between the accident and vehicle dataset didnot exist, one can still carry out the data analysis and determine which of the factors ('speed limit', 'weather conditions', 'day of the week', 'road condition', 'vehicle_age', 'driver_age', 'driver_sex' and 'vehicle manoeuvre') influence traffic collision/accident by employing a non-relational database, MongoDB.

### Data Engineering 
The cleaned datasets were converted to python dictionary using to_dict('records') function. This converts the pandans dataframe to a dictionary in order to upload the data to MongoDB

Employing pymongo.MongoClient function, a connection to MongoDB compass was established and a database called Accident_db was created. Within this database two collections called - 'accident_data' and 'vehicle_data' were created to store the accident_data and vehicle_data dictionaries.

### MongoDB
MongoDB is a non-relational database to archive, retrive, manipulate and query data. A non-relational database is a database that does not use the tabular schema of rows and columns to store data. 

Employing 'table.insert_many(data_dict)' function the cleaned dictionary was uploaded to the respective collections. The successful loading of the database is shown by these screenshots.


![alt text](https://github.com/fbrowther/Project-2/blob/main/Mongodb/accident_data.png)

![alt text](https://github.com/fbrowther/Project-2/blob/main/Mongodb/vehicle_data.png)

# Conclusions
As a part of this project, datasets were successfully extracted, transformed and loaded onto both the relational database, Postgresql and non-relational database MongoDB for further analysis by the Data Analytics team. 



