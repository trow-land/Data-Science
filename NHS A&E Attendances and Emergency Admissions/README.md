# NHS A&E Admissions – Exploratory Data Analysis

This project explores Accident & Emergency (A&E) admissions data from the NHS across a 12-month period. The goal is to combine, clean, and analyse data from multiple months to identify trends, performance indicators, and system pressures.

---

## Project Objectives

- Combine monthly A&E admissions datasets into a unified DataFrame  
- Clean and standardise data across all sources  
- Perform exploratory analysis on attendances, admission rates, and wait times  
- Visualise patterns and trends across different A&E department types  

---

## Tools Used

- Python  
- Pandas  
- Matplotlib  
- Jupyter Notebook  

---

## Dataset Overview

The data was sourced from publicly available monthly NHS A&E performance files (April 2024 – March 2025), covering:

- Total attendances  
- Performance against the 4-hour target  
- Number of patients waiting over 12 hours  
- Department types (e.g., Type 1, Type 2, and Type 3 A&E departments)  

---

## A&E Department Types Explained

Understanding the classification of A&E types is important for interpreting trends in patient flows and system performance.

- **Type 1 A&E**: A consultant-led 24-hour service with full resuscitation facilities and dedicated accommodation for the reception of emergency patients. These are major hospital emergency departments.
- **Type 2 A&E**: A consultant-led single-specialty A&E service, such as ophthalmology or dental, with designated facilities for patient reception.
- **Type 3 / Type 4 A&E / Urgent Care Centre**: These include Minor Injury Units (MIUs), Walk-in Centres (WiCs), and GP-led Urgent Treatment Centres (UTCs). They treat minor injuries and illnesses and can usually be accessed without an appointment. These services may be located in the community or co-located with major A&E departments.

From December 2019 onwards, most Type 3 and 4 services have been reclassified as GP-led UTCs or integrated into other primary care pathways.

---

## Key Insights

- Attendances fluctuate seasonally, peaking in the winter months  
- Type 1 departments consistently show the highest demand and the greatest pressure in terms of wait times and breaches  
- Performance against the 4-hour target remains below 90 percent across most months, with further decline during colder periods  
- A modest recovery in wait time performance is observed after January, possibly linked to operational changes or additional capacity  

---

## Sample Visualisation

![month_trend](https://github.com/trow-land/Data-Science/blob/main/NHS%20A%26E%20Attendances%20and%20Emergency%20Admissions/Type1_admissions_by_month.png)

---

## Potential Next Steps

- Time series forecasting to predict demand  
- Benchmarking against previous years' A&E performance  
- Regional breakdown or trust-level comparisons  

---

## License

This project is for educational and research purposes only. NHS data used under the Open Government Licence.
