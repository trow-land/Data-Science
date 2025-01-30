# **UK Traffic Accident Data**

This project explores a dataset of UK road traffic accidents between the years 2005 and 2014 (with the exception of 2008). The dataset is accompanied by geographic data and road congestion data.

---

## **Table of Contents**
1. [Introduction](#introduction)
2. [Dataset Overview](#dataset-overview)
3. [Objectives](#objectives)
4. [Data Cleaning and Preprocessing](#data-cleaning-and-preprocessing)
5. [Tools and Technologies](#tools-and-technologies)
6. [Key Insights](#key-insights)


---

## **Introduction**

Exploratory Data Analysis will be conducted on this dataset to establish trends over time in the parameters of this dataset. The dataset contains a breadth of information which allows us to cross examine the relationships between such as weather, time of day or month to the number of accidents in a specific region of the UK. Due to the quality of this dataset this project is expected to grow over time as more insights are uncovered.

---

## **Dataset Overview**

- **Source**: [Kaggle]([https://www.kaggle.com/datasets/daveianhickey/2000-16-traffic-flow-england-scotland-wales?resource=download)).
- **File Formats**: CSV.
- **Dataset Size**: 1.6 million


---

## **Objectives**

Initially the project will look to answer some questions such as:

1) How does day of the week impact acccidents?
2) How does time of day impact accidents?
3) How have the number of accidents changed over time?
4) How do road conditions and weather conditions effect accidents numbers and severity?
5) Can we forecast the 2012 to 2015 data from the previous data?

The results where possible will be visualised with Matplotlib.

---

## Tools and Technologies
- **Pandas**: Dataset manipulation
- **Matplotlib**: Plot generation

## Key Insights

1. **How does the day of the week affect the number of accidents?**:
    - Saturday 
    - The dataset is heavily weighted towards electronic items, home and kitchen, and computers/computer accessories.
  
      
![Categories_pie](https://github.com/trow-land/Data-Science/blob/main/Amazon_reviews/plots/category_pie.png)        ![Categories](https://github.com/trow-land/Data-Science/blob/main/Amazon_reviews/plots/category_count.png)

2. **Most Reviewed Items**:
    - The most reviewed items in this dataset are shown below:
  
   
      ![items](https://github.com/trow-land/Data-Science/blob/main/Amazon_reviews/plots/image_count.png)
      
3. **Top Reviewed items and categories**:
    - The highest reviewed items (4.6/5) were Tablets, in the computers&accessories category.
    - The top performin category was office products, followed by toys and games.
    - With the dataset so heavily weighted towards specific categories this comparison could be easily skewed with an individual item. Three of the categories only had 1 item.
  
      
![Top Items](https://github.com/trow-land/Data-Science/blob/main/Amazon_reviews/plots/top_rated_items.png)        ![Top Categories](https://github.com/trow-land/Data-Science/blob/main/Amazon_reviews/plots/best_performing_category.png)

4. **Worst rated items**:
    - The worst rated items were Electric grinders, dust covers and PC Headsets scoring 3.3, 3.4, and 3.5 respectively.
  
    ![items](https://github.com/trow-land/Data-Science/blob/main/Amazon_reviews/plots/worst_reviewed_items.png)
   

5. **Distribution of Discounts**:
   - Majority of products fall within the 40-60% discount range.
   - A distinct spike at 0% discounts.

     
   ![Discount Histogram](https://github.com/trow-land/Data-Science/blob/main/Amazon_reviews/plots/number%20of%20ratings%20per%20discount%20bracket.png)

6. **Relationship Between Discounts and Ratings**:
   - There is a slight negative correlation between discount percentage and ratings.

     
   ![Discount vs Rating Scatter Plot](https://github.com/trow-land/Data-Science/blob/main/Amazon_reviews/plots/rating%20vs%20discount%20percentage%23.png)
  

7. **Pricing Trends**:
   - Cheaper products receive more ratings but have more varied scores.
   - The more expensive products in this dataset all have ratings distributed around 4.25/5.
  
     
     ![Price vs Rating Count](https://github.com/trow-land/Data-Science/blob/main/Amazon_reviews/plots/rating%20vs%20prices.png)

## Files in Repository
- `Amazon_Sales_Report.pbix`: Power BI file for this analysis.
- `queries.sql`: SQL queries used for data preprocessing and exploration.
- `README.md`: This document.
- Exported visuals as PNGs 

---

