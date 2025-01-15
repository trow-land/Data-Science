# **Amazon Sales Data Analysis**

This project involves exploring, cleaning, and analysing an Amazon sales dataset using PostgreSQL for querying and Power BI/Tableau (or similar tools) for visualisation. The goal is to extract insights about sales, pricing and customer reviews.

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

The dataset provides a detailed view of Amazon sales, including product information, pricing, discounts, ratings, and reviews. This project demonstrates the use of SQL for data extraction and Python for preprocessing, combined with BI tools for visualisation.

---

## **Dataset Overview**

- **Source**: [Kaggle]([https://kaggle.com](https://www.kaggle.com/datasets/karkavelrajaj/amazon-sales-dataset/data)).
- **File Format**: CSV.
- **Row count**: 1465
- **Columns**:
  - `product_id`: Unique identifier for the product.
  - `product_name`: Name of the product.
  - `category`: Product category.
  - `about_product`: Description of the product.
  - `discounted_price`: Price after discount.
  - `actual_price`: Original price before discount.
  - `discount_percentage`: Percentage discount applied.
  - `rating_count`: Number of customer ratings.
  - `rating`: Average customer rating.
  - `main_category`: Main category of item (eg Home and Kitchen)
  - `item`: Item type: (eg Electric Grinder)

---

## **Objectives**

1. Analyse sales performance by product and category.
2. Identify top-performing products in terms of reviews.
3. Explore the impact of discounts on ratings.
4. Extract insights on customer behaviour from reviews and ratings.

---

## **Data Cleaning and Preprocessing**

- **Issues Identified**:
  - Presence of currency symbols (`₹`) in price columns.
  - Inconsistent or missing values in certain columns.
  - Duplicates in product or review data.
  - Changes columns datatypes

- **Steps Taken**:
  - Removed currency symbols and converted prices to numeric.
  - Added additional 'main_category' and 'item' columns
  - Dropped duplicates

Python script used for cleaning: [data_cleaning.py](link-to-your-script).
The resulting dataset contains 1348 rows of data.



---

## Tools and Technologies
- **Power BI**: For data visualisation and analysis.
- **PostgreSQL**: For SQL-based data manipulation.
- **Python**: For initial preprocessing.

## Key Insights

1. **Dataset Category Distribution**:
    - Dataset can be split into 9 main categories:
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
   - ![Discount Histogram](https://github.com/trow-land/Data-Science/blob/main/Amazon_reviews/plots/number%20of%20ratings%20per%20discount%20bracket.png)

6. **Relationship Between Discounts and Ratings**:
   - There is a slight negative correlation between discount percentage and ratings.
   ![Discount vs Rating Scatter Plot](https://github.com/trow-land/Data-Science/blob/main/Amazon_reviews/plots/rating%20vs%20discount%20percentage%23.png)
  

7. **Pricing Trends**:
   - Cheaper products receive more ratings but have more varied scores.
   - ![Price vs Rating Count](https://github.com/trow-land/Data-Science/blob/main/Amazon_reviews/plots/rating%20vs%20prices.png)

## Files in Repository
- `Amazon_Sales_Report.pbix`: Power BI file for this analysis.
- `queries.sql`: SQL queries used for data preprocessing and exploration.
- `README.md`: This document.
- Exported visuals as PNGs 

---

