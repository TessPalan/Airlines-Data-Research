# ETL-Project

## Flying Dolphins
Erin Babamoto | Divya Manthena | Isaac Mizrahi | Tess Palan

## Questions
1. What were the top 5 most traveled to cities in the United States in 2019 and 2020?
2. What top 5 airlines made the most revenue in 2019?
3. Was air travel affected between the first quarter of 2020 and the rest of 2020?

### Data Sources

Most traveled to cities:
https://www.transtats.bts.gov/DL_SelectFields.asp?gnoyr_VQ=FLM&QO_fu146_anzr=b4vtv0%20n0q%20Qr56v0n6v10%20f748rB

1. Download each quarter separately
2. Choose applicable columns

Airline rankings:
https://www.bts.gov/airline-rankings-2019

### Libraries Needed
- Jupyter Notebook
- Pandas/Python
- PostgreSQL

## *Extract*
- Create path to read CSV
- Import dataset into Pandas - read CSV

## *Transform*
- Merge both data sets (most traveled to cities and airline reviews) and drop columns we don’t need
  - Merging separate CVS for most traveled to cities dataset - 8 in total (1 for each quarter for years 2019 and 2020)
- Filter the data and remove any NAs
- Data engineering
  - Formatting
  - Integer to float transformations
- Data manipulation

## *Load*
- Export clean CSV to SQL
  - Create database
  - Create table
  - Create columns
  - Import CSV into table

## Challenges
- Finding airline data sources that fit our questions
- One data set was so large and split up that we had to individually extract and clean each prior to merging

## Next Steps
- Visualizations
- Utilization of heat maps to show cities that are hot spots
- Add data from airlines in 2020 once made public
- Expand internationally
