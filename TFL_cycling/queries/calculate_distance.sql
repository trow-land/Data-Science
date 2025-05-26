SELECT Journeys."Start_date", journeys."Start_station", journeys."End_station", 

ROUND(CAST(6371 * acos(LEAST(1, GREATEST(-1,
    cos(radians(sta.latitude)) * cos(radians(fin.latitude)) *
    cos(radians(fin.longitude) - radians(sta.longitude)) +
    sin(radians(sta.latitude)) * sin(radians(fin.latitude))
  ))) AS numeric), 2) AS direct_distance_km

FROM journeys
JOIN stations as sta
ON sta."StationName" = journeys."Start_station"
JOIN stations as fin
ON fin."StationName" = journeys."End_station"

ORDER BY direct_distance_km DESC

 