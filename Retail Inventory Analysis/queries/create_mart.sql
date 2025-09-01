CREATE OR ALTER VIEW mart.v_inventory_daily AS
SELECT
  d.[date],
  ds.store_id,
  ds.region,
  dp.product_id,
  dp.category,
  f.inventory_level,
  f.units_sold,
  f.units_ordered,
  f.demand_forecast,
  f.price,
  f.discount,
  f.holiday_promotion,
  f.competitor_pricing
FROM core.fact_inventory f
JOIN core.dim_date    d  ON d.date_key   = f.date_key
JOIN core.dim_store   ds ON ds.store_key = f.store_key
JOIN core.dim_product dp ON dp.product_key = f.product_key;
