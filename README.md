# Covid SQL Data Exploration

For this project I have performed data exploration on a dataset containing information about Covid-related deaths and vaccinations. The full dataset can be found here: https://ourworldindata.org/covid-deaths.

## Data pre-processing in Excel
The raw datasets can be found in this repository under **Datasets/raw_data**. The following transformations were applied:
    + for CovidDeathsRaw the population column was cut & paste into the fifth column
    + for both Excel files, the empty cells were replaced with a random value (in this case -7), such that the data can be imported into pgAdmin4 as the correct data type. The values were not replaced with 0, as these are sometimes recorded values.

The transformed datasets can be find under **Datasets/clean_data** together with their corresponding csv files.

## Creating covid tables in pgAdmin4
The **create_covid_tables_sql** was used to create the bone structure of the two Covid tables. In this script, the data type for each column is defined. Then, data is imported into these tables using the Import/Export Data tab in pgAdmin4. After this the previously empty cells (now populated with -7) are replaced with null values. This process was followed as pgAdmin4 doesn't allow empty cells in numeric data types.

## Performing data exploration in pgAdmin4
**Covid_Data_Exploration.sql** contains all the data exploration steps performed on the two datasets. These includes transformations, such as:
   + the likelihood of dying after contracting Covid in different countries
   + the percentage of population that got the disease
   + looking at countries with highest infection/death rate
   + looking at global and continent numbers
   + the percentage of vaccinated people in different countries
   + etc
   
## Exporting data for Tableau visualisation
**Tableau_Queries.sql** contains the queries that we will visualise using Tableau.

First the output of these queries was copied into distinct Excel files. Before loading these into Tableau Public, the null values were replaced with 0 (to avoid any clashes). This data was then used for visualisation purposes.

## The Tableau Dashboard

![Dashboard 1](https://user-images.githubusercontent.com/104773240/176486146-bd3e6a25-54f2-4d76-9556-82ec2381586f.png)
