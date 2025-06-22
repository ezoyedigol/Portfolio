-- 🟦 Northwind Database Analysis
-- Author: Ezo Yedigöl
-- Date: 22.06.2025
-- Description: SQL analysis using the Northwind sample database.

-- List all tables in the current schema
SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public';

-- Show columns and data types for the customers table
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'customers';


-- View first 5 rows from orders table
SELECT *
FROM orders
LIMIT 5;
-- Other tables
SELECT * FROM customers LIMIT 5;
SELECT * FROM order_details LIMIT 5;
SELECT * FROM products LIMIT 5;
SELECT * FROM suppliers LIMIT 5;
SELECT * FROM employees LIMIT 5;



-- Number of orders per country
SELECT country, COUNT(*) AS total_orders
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY country
ORDER BY total_orders DESC;



-- Number of orders handled by each employee
SELECT 
    employee_id,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY employee_id
ORDER BY total_orders DESC;

-- Total number of orders per employee (with full name)
SELECT 
    e.first_name || ' ' || e.last_name AS employee_name,
    COUNT(o.order_id) AS total_orders
FROM employees e
JOIN orders o ON e.employee_id = o.employee_id
GROUP BY employee_name
ORDER BY total_orders DESC;



-- Total number of orders per country
SELECT 
    country,
    COUNT(order_id) AS total_orders
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY country
ORDER BY total_orders DESC;




-- Top 5 most sold products by quantity
SELECT 
    product_id,
    SUM(quantity) AS total_quantity
FROM order_details
GROUP BY product_id
ORDER BY total_quantity DESC
LIMIT 5;

-- Top 5 best-selling products by name
SELECT 
    p.product_name,
    SUM(od.quantity) AS total_quantity_sold
FROM order_details od
JOIN products p ON od.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 5;



-- Products that have less than 10 units in stock
SELECT 
    product_name,
    units_in_stock
FROM products
WHERE units_in_stock < 10
ORDER BY units_in_stock ASC;
