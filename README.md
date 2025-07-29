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


### **1. Chicago Crime Data Analysis**  
- **Overview**: Loaded and analysed 8 million+ Chicago crime records (2001–present) using Snowflake to demonstrate SQL performance at scale and spatial-temporal analysis.  
- **Tools**: Snowflake, SQL, Python.  
- **Highlights**:  
  - Designed an optimised schema with partitioning for efficient query execution.  
  - Built SQL transformations to explore trends in crime types, seasonality, and geographical clustering.  
  - Used Snowflake features such as virtual warehouses and time travel to experiment with compute and storage scaling.  
  - Created a visual showing long-term trends in reported kidnappings to demonstrate analytical storytelling.

![kidnapping_trends](https://github.com/trow-land/Data-Science/blob/main/Chicago%20Crime%20Snowflake/images/Monthly_kidnappings.png)


### **2. Baby Sleep Consolidation and Nap Analysis**  
- **Overview**: Processing and analysing the sleep data of my 4-month old daughter that was tracked on the Huckleberry app.  
- **Tools**: Python (Pandas, Matplotlib, Seaborn)  
- **Highlights**:  
  - Evaluated real data from the sleeps from my daughter over he first 4 months.  
  - Plotted the improvements in night time sleep consolidation from 10 sleep segments between 6pm to 6am down to the goal of 1 (sleeping through the night) 
  - Quantify trends in: Night-time sleep duration, number of sleep segments per night and total nap duration per day

![sleep_consolidation](https://github.com/trow-land/Data-Science/blob/main/Baby%20Sleep%20Consolidation%20and%20Nap%20Analysis/night_sleep_consolidation_with_smoothing.png)


### **3. TFL Cycling Journeys Analysis**  
- **Overview**: Explored Transport for London cycling data using SQL and PostgreSQL to calculate direct distances between start and end stations using the Haversine formula.  
- **Tools**: PostgreSQL, SQL, PostGIS (optional), Python.  
- **Highlights**:  
  - Performed spatial joins using station metadata.  
  - Used trigonometric distance calculations to estimate journey lengths.  
  - Demonstrated how to avoid repeating complex expressions in SQL `WHERE` clauses using subqueries.  

![first_15_journeys](https://github.com/trow-land/Data-Science/blob/main/TFL_cycling/images/first_15_journeys.png)

---

### **4. UK Road Traffic Accident Analysis**  
- **Overview**: Analysed a UK road traffic accident dataset to uncover patterns in accident timing and severity.  
- **Tools**: Python, Pandas, Matplotlib.  
- **Highlights**:  
  - Identified accident trends by week and time.  
  - Gave insight into how accident frequency changed between 2005 and 2014.  
  - Created visuals to highlight peak accident times.
 
![items](https://github.com/trow-land/Data-Science/blob/main/UK%20Traffic%20Accidents/images/time_of_day.png)

---

### **5. Heart Disease Prediction**  
- **Overview**: Performed exploratory data analysis to identify key risk factors and correlations in heart disease data. Built and evaluated machine learning models, with Logistic Regression achieving an F1 score of 85% in classification.  
- **Tools**: Python, Pandas, Matplotlib.  
- **Highlights**:  
  - Identified health attributes that strongly correlate to heart disease.  
  - Explored how feature distributions changed between genders.  
  - Compared several ML models for binary classification.

![gendered_max_hr vs heart disease](https://github.com/trow-land/Data-Science/blob/main/Heart%20Disease/images/max%20hr%20by%20gender.png)

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

### **8. Amazon Sales Data Analysis**  
- **Overview**: Analysed an Amazon sales dataset to uncover insights into sales performance, pricing trends, and customer reviews.  
- **Tools**: PostgreSQL, Power BI/Tableau, Python.  
- **Highlights**:  
  - Identified top-performing categories and products.  
  - Explored the relationship between discounts and customer ratings.  
  - Created visuals for pricing trends and sales distribution.

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
