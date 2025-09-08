DROP TABLE IF EXISTS core.dim_date;

CREATE TABLE core.dim_date AS

SELECT start_time, DATE(start_time) as date, 
date_part('month', start_time) as month,
date_part('week', start_time) as week,
date_part('day', start_time) as day,
date_part('hour', start_time) as hour,
EXTRACT(DOW FROM start_time) as week_number,
EXTRACT(DOW FROM start_time) IN (0,6)::boolean as is_weekend

FROM staging.journeys

ORDER BY date