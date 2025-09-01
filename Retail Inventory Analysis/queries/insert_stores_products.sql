-- STORES
WITH src AS (
  SELECT
    store_id = UPPER(LTRIM(RTRIM(store_id))),
    region   = MAX(LTRIM(RTRIM(region)))   -- pick one value deterministically
  FROM stg.retail_store_inventory_typed
  GROUP BY UPPER(LTRIM(RTRIM(store_id)))
)
MERGE core.dim_store AS tgt
USING src
  ON tgt.store_id = src.store_id
WHEN NOT MATCHED THEN
  INSERT (store_id, region) VALUES (src.store_id, src.region)
WHEN MATCHED THEN
  UPDATE SET region = src.region;

-- PRODUCTS
WITH src AS (
  SELECT
    product_id = UPPER(LTRIM(RTRIM(product_id))),
    category   = MAX(LTRIM(RTRIM(category)))
  FROM stg.retail_store_inventory_typed
  GROUP BY UPPER(LTRIM(RTRIM(product_id)))
)
MERGE core.dim_product AS tgt
USING src
  ON tgt.product_id = src.product_id
WHEN NOT MATCHED THEN
  INSERT (product_id, category) VALUES (src.product_id, src.category)
WHEN MATCHED THEN
  UPDATE SET category = src.category;
