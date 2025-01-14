# **Amazon Sales Data Analysis**

This project involves exploring, cleaning, and analysing an Amazon sales dataset using PostgreSQL for querying and Power BI/Tableau (or similar tools) for visualisation. The goal is to extract insights about sales, pricing and customer reviews.

---

## **Table of Contents**
1. [Introduction](#introduction)
2. [Dataset Overview](#dataset-overview)
3. [Objectives](#objectives)
4. [Data Cleaning and Preprocessing](#data-cleaning-and-preprocessing)
5. [Analysis and Insights](#analysis-and-insights)
6. [Visualisations](#visualisations)
7. [Tools and Technologies](#tools-and-technologies)


---

## **Introduction**

The dataset provides a detailed view of Amazon sales, including product information, pricing, discounts, ratings, and reviews. This project demonstrates the use of SQL for data extraction and Python for preprocessing, combined with BI tools for visualisation.

---

## **Dataset Overview**

- **Source**: [Kaggle]([https://kaggle.com](https://www.kaggle.com/datasets/karkavelrajaj/amazon-sales-dataset/data)) (include link if applicable).
- **File Format**: CSV.
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

---

## **Objectives**

1. Analyse sales performance by product and category.
2. Identify top-performing products in terms of reviews.
3. Explore the impact of discounts on ratings.
4. Extract insights on customer behaviour from reviews and ratings.
5. Create interactive dashboards for visualisation.

---

## **Data Cleaning and Preprocessing**

- **Issues Identified**:
  - Presence of currency symbols (`₹`) in price columns.
  - Inconsistent or missing values in certain columns.
  - Potential duplicates in product or review data.

- **Steps Taken**:
  - Removed currency symbols and converted prices to numeric.
  - Cleaned `discount_percentage` and `rating_count` columns for accurate analysis.
  - Dropped or imputed missing values where necessary.

Python script used for cleaning: [data_cleaning.py](link-to-your-script).

---

## **Analysis and Insights**

### Key Questions Explored:
1. **Sales Performance**:
   - Which products generate the most revenue?
   - Which categories contribute most to sales?

2. **Discount Analysis**:
   - How do discounts affect sales volume?
   - Which categories/products have the highest discounts?

3. **Customer Reviews**:
   - What are the highest-rated products and categories?
   - Is there a correlation between the number of reviews and ratings?

---

## **Visualisations**

Interactive dashboards were created to visualise key findings:
1. **Sales Trends**: Monthly and category-level revenue trends.
2. **Product Insights**: Top-selling products by revenue and units sold.
3. **Discount Analysis**: Impact of discounts on sales performance.

Tool used: Power BI / Tableau with dataset exported from PostgreSQL.

---

## **Tools and Technologies**

- **Database**: PostgreSQL
- **Preprocessing**: Python (Pandas)
- **Visualisation**: Power BI
- **Data Source**: Kaggle CSV file

---

