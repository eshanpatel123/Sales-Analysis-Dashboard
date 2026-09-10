-- ============================================
-- SALES ANALYSIS PROJECT - SQL QUERIES
-- Database: sales_analysis
-- Table: projectData
-- ============================================

USE sales_analysis;

-- 1. View total number of records
SELECT COUNT(*) AS total_records
FROM projectData;


-- 2. Total Sales
SELECT ROUND(SUM(Sales), 2) AS total_sales
FROM projectData;


-- 3. Total Profit
SELECT ROUND(SUM(Profit), 2) AS total_profit
FROM projectData;


-- 4. Total Quantity Sold
SELECT SUM(Quantity) AS total_quantity
FROM projectData;


-- 5. Total Orders
SELECT COUNT(DISTINCT `Order ID`) AS total_orders
FROM projectData;


-- 6. Total Customers
SELECT COUNT(DISTINCT `Customer ID`) AS total_customers
FROM projectData;


-- 7. Total Products
SELECT COUNT(DISTINCT `Product ID`) AS total_products
FROM projectData;


-- 8. Sales and Profit by Region
SELECT
    Region,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM projectData
GROUP BY Region
ORDER BY total_sales DESC;


-- 9. Sales and Profit by Category
SELECT
    Category,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM projectData
GROUP BY Category
ORDER BY total_sales DESC;


-- 10. Sales and Profit by Sub-Category
SELECT
    `Sub-Category`,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM projectData
GROUP BY `Sub-Category`
ORDER BY total_sales DESC;


-- 11. Sales and Profit by Segment
SELECT
    Segment,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM projectData
GROUP BY Segment
ORDER BY total_sales DESC;


-- 12. Monthly Sales Trend
SELECT
    DATE_FORMAT(`Order Date`, '%Y-%m') AS month,
    ROUND(SUM(Sales), 2) AS total_sales
FROM projectData
GROUP BY month
ORDER BY month;


-- 13. Top 10 Products by Sales
SELECT
    `Product Name`,
    ROUND(SUM(Sales), 2) AS total_sales
FROM projectData
GROUP BY `Product Name`
ORDER BY total_sales DESC
LIMIT 10;


-- 14. Top 10 Products by Profit
SELECT
    `Product Name`,
    ROUND(SUM(Profit), 2) AS total_profit
FROM projectData
GROUP BY `Product Name`
ORDER BY total_profit DESC
LIMIT 10;


-- 15. Bottom 10 Products by Profit
SELECT
    `Product Name`,
    ROUND(SUM(Profit), 2) AS total_profit
FROM projectData
GROUP BY `Product Name`
ORDER BY total_profit ASC
LIMIT 10;


-- 16. Region-wise Quantity
SELECT
    Region,
    SUM(Quantity) AS total_quantity
FROM projectData
GROUP BY Region
ORDER BY total_quantity DESC;


-- 17. Category-wise Quantity
SELECT
    Category,
    SUM(Quantity) AS total_quantity
FROM projectData
GROUP BY Category
ORDER BY total_quantity DESC;


-- 18. Most Profitable Region
SELECT
    Region,
    ROUND(SUM(Profit), 2) AS total_profit
FROM projectData
GROUP BY Region
ORDER BY total_profit DESC
LIMIT 1;


-- 19. Most Profitable Category
SELECT
    Category,
    ROUND(SUM(Profit), 2) AS total_profit
FROM projectData
GROUP BY Category
ORDER BY total_profit DESC
LIMIT 1;


-- 20. Customer-wise Sales
SELECT
    `Customer ID`,
    `Customer Name`,
    ROUND(SUM(Sales), 2) AS total_sales
FROM projectData
GROUP BY `Customer ID`, `Customer Name`
ORDER BY total_sales DESC
LIMIT 10;
