CREATE TABLE stg.inventory_raw (
    txn_date            DATE,
    store_id            NVARCHAR(50),
    product_id          NVARCHAR(50),
    category            NVARCHAR(50),
    region              NVARCHAR(50),
    inventory_level     INT,
    units_sold          INT,
    units_ordered       INT,
    demand_forecast     INT,
    price               DECIMAL(10,2),
    discount            INT,
    weather_condition   NVARCHAR(50),
    holiday_promotion   BINARY,
    competitor_pricing  DECIMAL(10,2),
    seasonality         NVARCHAR(50)
);