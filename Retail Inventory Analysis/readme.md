# Retail Inventory Warehouse & Dashboard (MS SQL + Power BI)

- Built an end-to-end mini data warehouse in **SQL Server**:
  - Raw data loaded into `stg.retail_store_inventory`.
  - Cleaned & typed staging table created for consistency.
  - Designed a **star schema** with `dim_date`, `dim_store`, `dim_product`, and `fact_inventory`.
  - Used `MERGE` to maintain dimension tables and populate the fact table with surrogate keys.
  - Exposed a reporting view `mart.v_inventory_daily` for analysis.

- Connected Power BI to SQL Server, building an interactive dashboard:
  - KPIs: total units sold, average inventory level.
  - Trend line: sales over time by category.
  - Bar chart: top 10 products by units sold.
  - Stockout tracker.
  - Filters for category and region.

![dashboard screenshot](screenshot.png)
