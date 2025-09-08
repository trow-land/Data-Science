CREATE TABLE mart.trips AS
SELECT
    f.journey_id,
    f.start_time,
    f.end_time,
    f.duration_s,
    f.is_weekend,
    f.distance_m,
    f.start_hour,
    
    d.year,
    d.month,
    d.month_name,
    d.week_number,
    d.day_of_week,
    d.day_name,
    
    s1.station_key  AS start_station_id,
    s1.station_name AS start_station_name,
    s1.district     AS start_district,
    s1.station_geom AS start_geom,
    ST_Y(s1.station_geom::geometry) AS start_latitude,
    ST_X(s1.station_geom::geometry) AS start_longitude,

    s2.station_key  AS end_station_id,
    s2.station_name AS end_station_name,
    s2.district     AS end_district,
    s2.station_geom AS end_geom,
    ST_Y(s2.station_geom::geometry) AS end_latitude,
    ST_X(s2.station_geom::geometry) AS end_longitude,

    f.bike_number
	
FROM core.fact_trips as f
JOIN core.dim_date as d
  ON start_date = d.date
JOIN core.dim_stations as s1
  ON f.start_station_key = s1.station_key
JOIN core.dim_stations as s2
  ON f.end_station_key = s2.station_key;
