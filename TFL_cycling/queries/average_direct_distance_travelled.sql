SELECT  

ROUND(AVG(CAST(2 * 6371 * asin(sqrt(
    sin((radians(fin.latitude) - radians(sta.latitude))/2)^2 +
    cos(radians(sta.latitude)) * cos(radians(fin.latitude)) *
    sin((radians(fin.longitude) - radians(sta.longitude))/2)^2
)) AS numeric)), 2) AS average_direct_distance_km

FROM journeys
JOIN stations as sta
ON sta."StationName" = journeys."Start_station"
JOIN stations as fin
ON fin."StationName" = journeys."End_station"
