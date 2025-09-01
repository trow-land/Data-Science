INSERT core.fact_inventory (
  date_key, store_key, product_key,
  inventory_level, units_sold, units_ordered, demand_forecast,
  price, discount, holiday_promotion, competitor_pricing
)
SELECT
  CONVERT(INT, FORMAT(t.txn_date,'yyyyMMdd')) AS date_key,
  s.store_key,
  p.product_key,
  t.inventory_level, t.units_sold, t.units_ordered, t.demand_forecast,
  t.price, t.discount, t.holiday_promotion, t.competitor_pricing
FROM stg.retail_store_inventory_typed t
JOIN core.dim_store   s ON s.store_id   = t.store_id
JOIN core.dim_product p ON p.product_id = t.product_id
JOIN core.dim_date    d ON d.[date]     = t.txn_date;
