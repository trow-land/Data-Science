SELECT  
  FLOOR(AVG("Total_duration_ms") / 3600000) AS hours,
  FLOOR(MOD(AVG("Total_duration_ms"), 3600000) / 60000) AS minutes,
  FLOOR(MOD(MOD(AVG("Total_duration_ms"), 3600000), 60000) / 1000) AS seconds
FROM journeys
