CREATE OR REPLACE TABLE CHICAGO_CRIME_MONTHLY_SUMMARY as
    SELECT DATE_TRUNC('MONTH', datetime) as month,
        crime_type,
        count(*) as num_crimes,
    FROM chicago_crime_cleaned
    GROUP BY month, crime_type