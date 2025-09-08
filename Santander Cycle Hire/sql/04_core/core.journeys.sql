DROP TABLE IF EXISTS core.journeys CASCADE;

CREATE TABLE core.journeys AS

SELECT
j.journey_id,
j.bike_number,
j.start_time, 
j.end_time, 
j.total_duration_s, 
j.total_duration_s / 60 AS duration_mins,
start_s.station_name 	AS start_station_name, 
start_s.geom 			AS start_geom, 
end_s.station_name 		AS end_station_name, 
end_s.geom 				AS end_geom ,
ST_Distance(start_s.geom::geography, end_s.geom::geography) AS distance_m,
(EXTRACT(DOW FROM j.start_time) IN (0,6))::boolean  AS is_weekend

FROM staging.journeys 	AS j

JOIN core.stations as start_s
ON start_s.station_name = j.start_station

join core.stations as end_s
ON end_s.station_name = j.end_station

WHERE j.total_duration_s > 0
  AND j.end_time >= j.start_time;