# Chicago Crime Data ETL Pipeline

##  Project Overview
This project focuses on extracting, transforming, and loading (ETL) Chicago crime data into a PostgreSQL database to facilitate analysis. The dataset contains millions of crime records, making it a rich source for exploring crime trends, geographic distributions, and temporal patterns.

The ETL pipeline ensures data integrity by cleaning and structuring it for efficient querying. This allows for deeper insights into crime statistics and enables future analytical work.

---

## Key Features
- **Data Extraction:** Reads Chicago crime data from a structured CSV file.
- **Transformation & Cleaning:**
  - Optimises data types for performance and memory efficiency.
  - Handles missing values while preserving useful records.
  - Processes location data for spatial analysis.
- **Database Integration:** Loads structured data into a PostgreSQL database for advanced querying and further analysis.

---

## Project Structure
```
 chicago-crime-etl
├── data
│   ├── Chicago_Crimes.csv  # Raw dataset (not included in repo)
├── chicago_crime_EDA.ipynb # Initial EDA of dataset
├── etl_chicago_crime.py    # ETL script for processing data
├── README.md               # Project documentation
└── requirements.txt        # Python dependencies
```

---

## Database Schema
The database schema is designed to support fast lookups and structured analysis. The key fields include:
- **Crime Details:** Unique case numbers, crime type, description, and timestamps.
- **Geographic Data:** Latitude, longitude, community areas, and police districts.
- **Crime Context:** Arrest status, domestic incidents, and location descriptions.

This structured format enables efficient analysis of crime patterns, geographic clustering, and time-based trends.

---

##  Analysis & Insights
(Coming soon)

This section will be populated with findings from the dataset, including visualizations, geographic heatmaps, and statistical summaries of crime trends.

---

##  Future Directions
- Automating the pipeline for real-time data updates.
- Implementing geospatial indexing for more advanced location-based queries.
- Enhancing the dataset with external sources for deeper crime analysis.

---


