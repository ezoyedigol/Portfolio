# 📊 Northwind SQL Analysis

This project contains intermediate level SQL analyses using the Northwind sample database, commonly used in data analyst interviews and portfolio building.

## 📁 Files

- `northwind_analysis.sql` – Contains all SQL queries
- 'northwind_results` 

## 🧠 Key Analyses Performed

1. Orders by Country
Germany and the USA both have the highest number of orders (122), followed by Brazil and France. These countries represent the most active customers, and could be key markets for focused marketing efforts.

2.1 Orders by Employee
   Employee ID 4 handled the highest number of orders (156), followed by Employee 3. This suggests that these employees may      be high performers or managing more customers. Further HR analysis can confirm workload balance or reward programs.

2.2 Orders by Employee With Name-Surname
   Margaret Peacock has processed the most orders (156), which highlights her high productivity or potential seniority.          Tracking employee performance using names adds more clarity and makes HR reports more readable and actionable.

3. Top Countries by Orders  (same with the first analysis)
Countries with the highest order volume.

4.1 Top-Selling Products  
   Product IDs 60 and 59 are the top-selling items by quantity. These products likely contribute significantly to revenue.       However, without product names, deeper business decisions may be limited.

4.2 Top-Selling Products With Product Name
   Perth Pasties is the best-selling product with 1577 units sold, followed by Chef Anton’s Gumbo Mix. These products are        likely in high demand and should be prioritized for inventory planning, promotions, and sales forecasting.

5. Low Stock Products
Several top-selling products such as Perth Pasties and Chef Anton’s Gumbo Mix are completely out of stock. This can lead to missed sales and customer dissatisfaction. These items should be prioritized for urgent restocking.

## 📝 Sample Insight

> "Perth Pasties is the best-selling product with 1577 units sold but is currently out of stock. Immediate restocking is recommended."

## 📌 Tools Used

- PostgreSQL
- pgAdmin

## ✅ Next Steps

In the future, I plan to:
- Visualize these insights using Power BI
- Add more advanced SQL features (e.g., CTEs, subqueries, window functions)

