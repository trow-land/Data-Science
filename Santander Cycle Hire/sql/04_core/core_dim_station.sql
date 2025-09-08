CREATE TABLE core.dim_stations AS
SELECT DISTINCT 
    c.start_station_name AS station_name, 
    TRIM(SPLIT_PART(c.start_station_name, ',', 2)) AS district, 
    c.start_geom AS station_geom
FROM core.journeys AS c
JOIN staging.stations AS s
  ON c.start_station_name = s.station_name;

ALTER TABLE core.dim_stations 
ADD COLUMN station_key BIGSERIAL PRIMARY KEY;
