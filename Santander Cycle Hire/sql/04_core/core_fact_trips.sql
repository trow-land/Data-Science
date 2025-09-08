DROP TABLE IF EXISTS core.fact_trips CASCADE;

CREATE TABLE core.fact_trips AS
    SELECT
    j.journey_id,
    ds_start.station_key AS start_station_key,
    ds_end.station_key   AS end_station_key,
    j.start_time,
    j.end_time,
    j.total_duration_s as duration_s,
	j.duration_mins,
    j.start_time::date    AS start_date, 
    j.end_time::date      AS end_date
    EXCTRACT(hour, j.start_time) AS start_hour,
    j.is_weekend,
    j.distance_m,
    j.bike_number
    
FROM core.journeys j
JOIN core.dim_stations ds_start
  ON ds_start.station_name = j.start_station_name
JOIN core.dim_stations ds_end
  ON ds_end.station_name   = j.end_station_name;
