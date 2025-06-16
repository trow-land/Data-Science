CREATE OR REPLACE TABLE CHICAGO_CRIMES.PUBLIC.CHICAGO_CRIME_ClEANED AS 
SELECT
    ID AS incident_id,
    TO_TIMESTAMP(DATE, 'MM/DD/YYYY HH12:MI:SS AM') AS datetime,
    PRIMARY_TYPE as crime_type,
    DESCRIPTION as descripton,
    LOCATION as location_type,
    ARREST as is_arrested,
    DOMESTIC as is_domestic,
    BEAT::INT as beat,
    WARD::INT as ward,
    COMMUNITY_AREA::INT as community_area,
    FBI_CODE as fbi_code,
    X_COORDINATE::INT as x_coordinate,
    Y_COORDINATE::INT as y_coordinate,
    YEAR as year,
    TO_TIMESTAMP(UPDATED_ON, 'MM/DD/YYYY HH12:MI:SS AM') as updated_on,
    LATITUDE as latitude,
    LONGITUDE as longitude,
FROM CHICAGO_CRIME_RAW
WHERE DATE IS NOT NULL AND PRIMARY_TYPE IS NOT NULL
    