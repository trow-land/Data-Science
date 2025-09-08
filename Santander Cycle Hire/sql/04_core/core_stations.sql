DROP TABLE IF EXISTS core.stations;

CREATE TABLE core.stations AS
SELECT DISTINCT station_id, station_name, longitude, latitude, easting, northing 
FROM staging.stations;

ALTER TABLE core.stations
	ADD COLUMN geom geography(Point, 4326);

UPDATE core.stations
SET geom = ST_SetSRID(ST_MakePoint(longitude, latitude), 4326)::geography;
