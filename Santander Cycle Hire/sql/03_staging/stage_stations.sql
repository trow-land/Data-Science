-- Stations
CREATE OR REPLACE VIEW staging.stations AS
SELECT 
NULLIF(station_id, '')::int 			AS station_id,
NULLIF(stationname, '')::text 			AS station_name,
NULLIF(longitude,'')::numeric(12,9)		AS longitude,
NULLIF(latitude,'')::numeric(12,9)		AS latitude,
NULLIF(easting,'')::numeric(8,2)		AS easting,
NULLIF(northing,'')::numeric(8,2)		AS northing
FROM raw.stations
WHERE
  NULLIF(latitude, '') ~ '^-?\d+(\.\d+)?$'
  AND NULLIF(longitude, '') ~ '^-?\d+(\.\d+)?$';

