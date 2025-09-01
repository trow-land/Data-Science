;WITH d AS (
  SELECT MIN(txn_date) AS d FROM stg.retail_store_inventory_typed
  UNION ALL
  SELECT DATEADD(DAY,1,d) FROM d WHERE d < '2024-1-02'
)
INSERT core.dim_date(date_key,[date],[year],[month],[day],month_name,day_name)
SELECT CONVERT(INT, FORMAT(d,'yyyyMMdd')), d, YEAR(d), MONTH(d), DAY(d),
       DATENAME(MONTH,d), DATENAME(WEEKDAY,d)
FROM d
OPTION (MAXRECURSION 0);
