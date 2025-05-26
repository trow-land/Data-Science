## Santander Cycle Hire ETL Project

This project demonstrates a complete ETL (Extract, Transform, Load) pipeline for analysing public cycle hire journeys in London using open data from Transport for London (TfL).

### Overview

- The project uses TfL’s published journey data (CSV format) containing details such as start/end times, station names, and journey durations in milliseconds.
- Station metadata (including latitude and longitude) was integrated from a separate dataset to enable spatial analysis.
- Data was cleaned and transformed using Python (Pandas), then loaded into a PostgreSQL database using SQLAlchemy.

### Key Features

- Cleaned and standardised journey and station datasets
- Relational database design using two core tables:
  - `journeys`: Fact table containing journey details
  - `stations`: Dimension table with metadata for docking stations
- SQL queries to:
  - Calculate direct (great-circle) distances between start and end stations using the Haversine formula
  - Convert total journey durations from milliseconds to hours, minutes, and seconds
  - Identify and filter anomalous or suspicious journey records
- Visual inspection of results using pgAdmin query screenshots (see below)

### Example Query Output

> Screenshot of average journey time in hours, minutes, and seconds  


> Distance calculation for every column  


### Tools Used

- Python (Pandas, SQLAlchemy)
- JupyterLab
- PostgreSQL
- pgAdmin
- SQL

### Future Improvements

- Aggregated visual dashboards using Streamlit or Tableau
- Time series analysis of demand patterns by hour/day
