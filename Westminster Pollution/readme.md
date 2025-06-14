# Westminster Pollution Data Project

This project explores and processes air quality data collected from multiple monitoring stations across central London throughout 2024. The focus is on building a clean, consistent dataset suitable for further analysis, visualisation, or use in downstream data pipelines.

## Project Aims

- Ingest and combine raw CSV files from several air quality monitoring sites
- Parse and standardise datetime fields and measurement units
- Handle missing values and clean inconsistent records
- Merge and label data with station metadata
- Produce weekly aggregates for pollutant concentrations
- Prepare a structured dataset for analysis or loading into a data warehouse

## Technologies Used

- Python (pandas, seaborn, matplotlib)
- Jupyter Notebook for exploration and visualisation
- CSV file handling and preprocessing

## Data Overview

- Data includes hourly readings for pollutants such as NO, NO2, NOX, PM10, PM2.5, CO, and O3
- Coverage spans January to December 2024
- Data was sourced from publicly available London air quality monitoring stations

## Plot Example

*Weekly NO, NO2, and NOX concentrations at the Elizabeth Bridge site:*

[Insert plot image here]

## Next Steps

- Expand analysis to include rolling averages and anomaly detection
- Export cleaned data to Parquet or SQL format
- Incorporate additional station metadata (e.g. coordinates, borough)
- Build automated pipeline scripts for full ingestion and transformation

