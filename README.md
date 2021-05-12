# ETL-Project

<img src="https://github.com/TessPalan/ETL-Project-Airlines/blob/main/airplane-flying-around-world.png" width="580" height="400">

## Flying Dolphins
Erin Babamoto | Divya Manthena | Isaac Mizrahi | Tess Palan

## Questions :flight_departure:	
1. What were the top 5 most traveled to cities in the United States in 2019 and 2020?
2. What top 5 airlines made the most revenue in 2019?
3. Was air travel affected between the first quarter of 2020 and the rest of 2020?

## :books: Data Sources

 - Most traveled to cities:
https://www.transtats.bts.gov/DL_SelectFields.asp?gnoyr_VQ=FLM&QO_fu146_anzr=b4vtv0%20n0q%20Qr56v0n6v10%20f748rB

1. Download each quarter separately
2. Choose applicable columns

 - Airline rankings:
https://www.bts.gov/airline-rankings-2019

## Libraries Needed
- Jupyter Notebook
- Pandas/Python
- PostgreSQL

### *Extract*
- Create path to read CSV
- Import dataset into Pandas - read CSV

### *Transform*
- Merge both data sets (most traveled to cities and airline reviews) and drop columns we don’t need
  - Merging separate CVS for most traveled to cities dataset - 8 in total (1 for each quarter for years 2019 and 2020)
- Filter the data and remove any NAs
- Data engineering
  - Formatting
  - Integer to float transformations
- Data manipulation

### *Load*
- Export clean CSV to SQL
  - Create database
  - Create table
  - Create columns
  - Import CSV into table

## Challenges
- Finding airline data sources that fit the questions
- One data set was so large that it involved individually extracting and cleaning each quarter prior to merging the data
- Data was not available for the fourth quarter of 2020 for the "Most traveled to cities" data
- Data was not available for 2020 for the "Airline rankings" data

## :arrow_forward:	 Next Steps
- Visualizations
- Add data from "Most traveled to cities" in 2020 once made available
- Add data from "Airline rankings" in 2020 once made available
- Expand scope internationally
