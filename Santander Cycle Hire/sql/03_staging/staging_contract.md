# Staging Contracts

The staging layer defines the **contract** between raw ingested data and downstream models/dashboards.  
It guarantees consistent schema, types, and minimal data quality rules while leaving the raw layer untouched.

---

## Stations (`raw.stations_raw → stg.stations`)

**Columns**
- `station_id INT`
- `station_name TEXT`
- `latitude NUMERIC(12,10)`
- `longitude NUMERIC(12,9)`
- `easting NUMERIC(8,2)`
- `northing NUMERIC(8,2)`

**Guarantees**
- `station_id` is integer and **unique**
- `lat/lon` are numeric and within valid bounds  
  (latitude ∈ [-90, 90], longitude ∈ [-180, 180])
- `station_name` is trimmed; empty names → `NULL`

---

## Journeys (`raw.journeys_raw → stg.journeys`)

**Columns**
- `journey_id INT` 
- `start_time TIMESTAMP`
- `end_time TIMESTAMP`
- `start_station_id INT`
- `end_station_id INT`
- `bike_number INT`
- `duration_seconds BIGINT`  -> derived from `total_duration_ms`

**Guarantees**
- `journey_id` is integer and **unique**
- `start_time < end_time`
- `duration_seconds` is consistent  
  (either `end_time - start_time` in seconds or sourced directly from ms column — be consistent)
- `start_station_id` and `end_station_id` are cast to `INT` and not empty


---

## Rationale

- **Raw layer** keeps the exact input from CSVs, preserving fidelity.
- **Staging layer** applies just enough transformation to make the data queryable and consistent.
- This separation allows raw reloads without breaking downstream logic, and provides a clear, testable interface for analysts and models.
