-- Journeys
CREATE OR REPLACE VIEW staging.journeys AS
SELECT

journey_id::int									AS journey_id,
start_date::timestamp							AS start_time,
NULLIF(start_station_id,'')::INT 				AS start_station_id,
NULLIF(start_station,'')::text					AS start_station,
end_date::timestamp								AS end_time,
NULLIF(end_station,'')::text					AS end_station,
NULLIF(end_station_id,'')::INT 					AS end_station_id,
bike_number::int								AS bike_number,
NULLIF(bike_model,'')::text						AS bike_model,
NULLIF(total_duration,'')::text					AS total_duration,
total_duration_ms::bigint / 1000				AS total_duration_s

FROM raw.journeys_raw
WHERE start_date IS NOT NULL AND end_date IS NOT NULL