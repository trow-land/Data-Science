-- Most reviewed categories
SELECT main_category AS category, count(main_category) FROM amazon_sales
GROUP BY main_category
ORDER BY count(main_category) DESC

-- Best performing Items
SELECT main_category, item, ROUND(AVG(rating),2) FROM amazon_sales
GROUP BY main_category, item
ORDER BY AVG(rating) DESC
Limit(15)

-- Worst Performing Items
SELECT main_category, item, ROUND(AVG(rating),2) FROM amazon_sales
GROUP BY main_category, item
ORDER BY AVG(rating) ASC
Limit(15)

-- Best rated categorys
SELECT main_category, ROUND(AVG(rating),2), COUNT(main_category) FROM amazon_sales
GROUP BY main_category
ORDER BY AVG(rating) DESC
Limit(15)