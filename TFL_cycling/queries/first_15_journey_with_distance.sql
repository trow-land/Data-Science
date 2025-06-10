SELECT *
FROM (
    SELECT
        journeys."Start_date",
        journeys."Start_station",
        journeys."End_station",
        ROUND(CAST(2 * 6371 * asin(sqrt(
                        sin((radians(fin.latitude) - radians(sta.latitude)) / 2)^2 +
                        cos(radians(sta.latitude)) * cos(radians(fin.latitude)) *
                        sin((radians(fin.longitude) - radians(sta.longitude)) / 2)^2)) AS numeric),2) AS direct_distance_km
    FROM journeys
    JOIN stations AS sta ON sta."StationName" = journeys."Start_station"
    JOIN stations AS fin ON fin."StationName" = journeys."End_station"
) AS sub
WHERE direct_distance_km > 0
ORDER BY "Start_date" ASC
LIMIT 15;
