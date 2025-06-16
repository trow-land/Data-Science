CREATE OR REPLACE TABLE domestic_trends AS
    SELECT DATE_TRUNC('MONTH', datetime) as month,
    crime_type,
    is_domestic,
    count(*) as domestic,
    FROM chicago_crime_cleaned
    GROUP BY month, crime_type, is_domestic
    