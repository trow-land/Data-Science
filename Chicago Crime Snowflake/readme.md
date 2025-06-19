# Chicago Crime Data Project (Snowflake)

This project involves loading, cleaning, and transforming over 8 million records of crime data from the City of Chicago into Snowflake, with the goal of demonstrating core data engineering workflows including schema design, SQL-based transformation, and exploratory analysis at scale.

## Project Objectives

- Ingest raw CSV data into a Snowflake warehouse
- Clean and standardise column names, data types, and formats
- Create a structured staging table with meaningful, typed fields
- Perform analytical transformations using SQL, including aggregation and filtering
- Apply window functions to support more advanced time-series and ranking analysis
- Produce views and summary queries suitable for dashboards or reporting

## Technologies Used

- Snowflake (Data Warehouse)
- SQL (Core Transformations and Aggregations)
- Snowflake Web UI / Worksheets

## Data Overview

- Source: [Chicago Data Portal – Crimes](https://data.cityofchicago.org/)
- Volume: ~8.3 million crime reports from 2001 to present
- Key fields: timestamp, crime type, location, arrest flag, district, coordinates

## Key Transformations

- Parsed datetime fields from string using `TO_TIMESTAMP`
- Renamed and casted fields for clarity and consistency
- Created a cleaned table: `CHICAGO_CRIME_CLEANED`
- Generated analytical views including:
  - Monthly crime trends
  - Arrest rate by crime type
  - Top crime locations
  - Top 5 crime types per year using `RANK() OVER`
 
  ![monthly_kidnappings](https://github.com/trow-land/Data-Science/blob/main/Chicago%20Crime%20Snowflake/images/Monthly_kidnappings.png)

## Sample Query Output

> Example: Top 5 crimes per year by frequency  
> *(Query uses `RANK()` window function and subquery filtering)*

```sql
SELECT *
FROM (
    SELECT 
        year,
        crime_type,
        COUNT(*) AS num_crimes,
        RANK() OVER (PARTITION BY year ORDER BY COUNT(*) DESC) AS rank
    FROM chicago_crime_cleaned
    GROUP BY year, crime_type
) ranked
WHERE rank <= 5
ORDER BY year, rank;
```

![top crimes](https://github.com/trow-land/Data-Science/blob/main/Chicago%20Crime%20Snowflake/images/window_func.png)


