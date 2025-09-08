# Santander Cycles Data Project (Work in Progress)

## Project Overview

This project explores the **Transport for London Santander Cycle hire dataset**.  
The aim is to take the data through the full lifecycle — **ingestion, staging, cleaning, modelling, and visualisation** — to demonstrate modern **data engineering and data analysis practices**.

At this stage, the focus has been on:

- Loading a subset of the journey data (1–14 January 2024).
- Building a **PostgreSQL + PostGIS** warehouse with raw, staging, and core schemas.
- Creating initial **core models** that include journey durations, weekend flags, and straight-line trip distances.
- Producing a **first Power BI dashboard** to highlight early insights.

The repository will continue to expand as more data and technologies are introduced.

---

## Current Features

### Database Design

The project uses a **layered warehouse architecture**, with each schema serving a clear purpose. This mirrors how modern data engineering teams structure their pipelines, making it easier to maintain, test, and extend.

#### Schemas

- **`raw`**  
  - Stores source CSVs exactly as received.  
  - Columns are kept as text to avoid early parsing errors.  
  - Acts as the “source of truth” layer – never modified, only appended.  

- **`staging`**  
  - Applies light cleaning and consistent naming.  
  - Casts key fields to the right types (timestamps, integers).  
  - Example: `start_time`, `end_time` → timestamp; `duration_s` → integer.  
  - Purpose: ensures all downstream models see consistent datatypes.  

- **`core`**  
  - Contains validated, deduplicated and enriched tables.  
  - **Tables include:**  
    - `core.stations`: one row per station with ID, name, lat/lon, and a `GEOGRAPHY(Point, 4326)` column (PostGIS) for spatial queries.  
    - `core.journeys`: one row per trip with `rental_id`, timestamps, duration, station references, weekend flag, start hour, and straight-line trip distance (`distance_m`).  
  - Enforces basic data quality rules:  
    - `duration_s > 0`  
    - `end_time >= start_time`  
    - Station IDs in journeys must exist in `core.stations`  

- **`mart`**  
  - Business-facing, aggregated tables optimised for BI tools.  
  - Currently includes:  
    - `mart.trips`: a first-pass fact table at the trip level, joined to station and date information.  
  - This will be extended to cover origin–destination flows, hourly demand, and seasonal trends as the project expands.  

- **`etl`**  
  - Metadata tables used for pipeline tracking.  
  - `etl.load_history` records file name, row counts, load status, and timestamps for each ingested CSV.  
  - Makes the pipeline repeatable and auditable.  

---

### Power BI Dashboard (v1)

The first dashboard covers **1–14 January 2024** and provides:

- **Total trips**: 182k journeys  
- **Total distance cycled**: ~428,000 km (~10.7 times around the Earth)  
- **Average trip duration**: ~20 minutes  
- **Average trip distance**: ~2.3 km  
- **Daily trend**: clear recovery after New Year with midweek peaks  
- **Day-of-week effect**: Wednesdays had the highest demand overall  
- **Heatmap of peak hours**: strong morning and evening commuter peaks on weekdays  

![Dashboard Screenshot](https://github.com/trow-land/Data-Science/blob/main/Santander%20Cycle%20Hire/dashboards/mvp_dashboard_png.png)  
*(Preliminary dashboard using two weeks of data — will be expanded to cover the full dataset)*

---

## Next Steps

This is a **work in progress**, and the project will grow in both scope and technical depth. Planned next steps include:

- **Load all 24 monthly CSV files** into the warehouse (millions of rows).  
- Implement **incremental loading and deduplication** using unique trip IDs.  
- Add **dbt Core** for transformations, testing, and lineage documentation.  
- Orchestrate the pipeline using **Prefect** for repeatable ETL runs.  
- Build richer marts:  
  - Origin–destination flow analysis  
  - Seasonal and weather effects (joining Met Office data)  
  - Rebalancing analysis to identify stations with persistent deficits  
- Expand BI dashboards:  
  - Multiple pages with origin–destination flows, station-level KPIs, and trends across months  
  - Storytelling elements to highlight key findings  
- Deployment:  
  - Explore Snowflake free tier to replicate pipeline in a cloud warehouse  
  - Compare performance and cost implications between Postgres and Snowflake  

---
