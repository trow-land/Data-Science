# Data Science Portfolio

This repository showcases some personal projects that demonstrate my skills in data exploration, analysis, and visualisation, using tools like Python, SQL, and BI platforms. Each project includes a brief description, objectives, tools used, and key insights.  

---

## Current Projects in Progress

### Motor Insurance Claims Analysis (Python, Pandas, scikit-learn)

**Project Aims:**
- Analyse a large-scale insurance dataset (58,000+ rows, 40+ features) with detailed policyholder and vehicle information
- Identify key predictors of insurance claims using exploratory data analysis and statistical summaries
- Engineer new features from vehicle safety components, power ratings, and customer demographics
- Train and evaluate classification models (Logistic Regression, Random Forest, XGBoost) to predict claim_status
- Interpret model outputs to highlight actionable risk factors and safety indicators (e.g. SHAP, feature importances)


### Westminster Pollution Data (Python)

**Project Aims:**
- Ingest and clean multiple raw CSV files containing air quality readings from London monitoring stations  
- Merge datasets with station metadata, parse datetime fields, and handle missing or inconsistent data  
- Produce aggregated and rolling-average outputs suitable for further analysis  
- Prepare cleaned data for integration with a SQL warehouse or visualisation tools



## Noted Projects

### **1. Retail Inventory Warehouse & Dashboard (MS SQL + Power BI)**  
- **Overview**: Built an end-to-end mini data warehouse in SQL Server and developed an interactive Power BI dashboard to analyse retail store performance.  
- **Tools**: SQL Server (staging + star schema), Power BI.  
- **Highlights**:  
  - Designed staging tables, applied data typing, and created a star schema (`dim_date`, `dim_store`, `dim_product`, `fact_inventory`).  
  - Used `MERGE` logic to maintain clean dimensions and surrogate keys.  
  - Created `mart.v_inventory_daily` reporting view for BI consumption.  
  - Power BI dashboards included:  
    - **Discount vs Units Sold** → Showed positive correlation between discount levels and sales volume.  
    - **Units Sold vs Forecast Units** → Compared actual demand with forecasted demand, tracking error across quarters.  
    - **Price Gap vs Units Sold** → Analysed competitive pricing influence on sales, with trendlines highlighting sensitivity.  
  - Added slicers for interactivity (category, quarter).  

![discount_units_sold](https://github.com/trow-land/Data-Science/blob/main/Retail%20Inventory%20Analysis/plots/units_sold_vs_forecast.gif)

---

### **2. Chicago Crime Data Analysis**  
- **Overview**: Loaded and analysed 8 million+ Chicago crime records (2001–present) using Snowflake to demonstrate SQL performance at scale and spatial-temporal analysis.  
- **Tools**: Snowflake, SQL, Python.  
- **Highlights**:  
  - Designed an optimised schema with partitioning for efficient query execution.  
  - Built SQL transformations to explore trends in crime types, seasonality, and geographical clustering.  
  - Used Snowflake features such as virtual warehouses and time travel to experiment with compute and storage scaling.  
  - Created a visual showing long-term trends in reported kidnappings to demonstrate analytical storytelling.

![kidnapping_trends](https://github.com/trow-land/Data-Science/blob/main/Chicago%20Crime%20Snowflake/images/Monthly_kidnappings.png)

---

### **3. Baby Sleep Consolidation and Nap Analysis**  
- **Overview**: Processing and analysing the sleep data of my 4-month old daughter that was tracked on the Huckleberry app.  
- **Tools**: Python (Pandas, Matplotlib, Seaborn)  
- **Highlights**:  
  - Evaluated real data from the sleeps from my daughter over he first 4 months.  
  - Plotted the improvements in night time sleep consolidation from 10 sleep segments between 6pm to 6am down to the goal of 1 (sleeping through the night) 
  - Quantify trends in: Night-time sleep duration, number of sleep segments per night and total nap duration per day

![sleep_consolidation](https://github.com/trow-land/Data-Science/blob/main/Baby%20Sleep%20Consolidation%20and%20Nap%20Analysis/night_sleep_consolidation_with_smoothing.png)

---

### **4. TFL Cycling Journeys Analysis**  
- **Overview**: Explored Transport for London cycling data using SQL and PostgreSQL to calculate direct distances between start and end stations using the Haversine formula.  
- **Tools**: PostgreSQL, SQL, PostGIS (optional), Python.  
- **Highlights**:  
  - Performed spatial joins using station metadata.  
  - Used trigonometric distance calculations to estimate journey lengths.  
  - Demonstrated how to avoid repeating complex expressions in SQL `WHERE` clauses using subqueries.  

![first_15_journeys](https://github.com/trow-land/Data-Science/blob/main/TFL_cycling/images/first_15_journeys.png)

---

### **5. UK Road Traffic Accident Analysis**  
- **Overview**: Analysed a UK road traffic accident dataset to uncover patterns in accident timing and severity.  
- **Tools**: Python, Pandas, Matplotlib.  
- **Highlights**:  
  - Identified accident trends by week and time.  
  - Gave insight into how accident frequency changed between 2005 and 2014.  
  - Created visuals to highlight peak accident times.
 
![items](https://github.com/trow-land/Data-Science/blob/main/UK%20Traffic%20Accidents/images/time_of_day.png)

---

### **6. News Article Highlights Summarisation**  
- **Overview**: Fine-tuned a pre-trained BART model to summarise news articles from the CNN and DailyMail dataset, generating concise highlights from lengthy text inputs.  
- **Tools**: Python, Hugging Face Transformers, PyTorch, ROUGE Evaluation.  
- **Highlights**:  
  - Achieved moderate ROUGE scores (ROUGE-1: 0.3557, ROUGE-2: 0.1579).  
  - Fine-tuned BART with optimised token lengths for long inputs.  
  - Demonstrated effective summarisation capabilities.

---

### **7. Veterans & Disability Data Dashboard**  
- **Overview**: Developed an interactive dashboard using census data to analyse veteran demographics, health, and economic activity across UK regions.  
- **Tools**: Pandas, GeoPandas, Panel, HoloViews.  
- **Highlights**:  
  - Interactive maps to visualise regional distributions.  
  - Dynamic filtering and customisable visualisations.  
  - Comparative analysis of veteran vs non-veteran populations.

![cearphilly disibility plots](https://github.com/trow-land/Data-Science/blob/main/Royal%20British%20Legion%20Interactive%20Data%20Tool/images/caerphilly_disability.png)


---

## Skills Highlight
- **Data Analysis**: SQL querying, data cleaning, and preprocessing.  
- **Visualisation**: Power BI, and Python plotting libraries such as Matplotlib and Seaborn.  
- **Interactive Dashboards**: Creating user-friendly tools for data exploration.  

---

## Repository Structure
- Each project folder contains:  
  - Python scripts or SQL queries for analysis.  
  - Data visualisations and reports.  
  - Documentation on methodology and findings.  
