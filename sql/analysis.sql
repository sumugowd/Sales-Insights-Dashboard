-- Sales Insights Analysis

-- 1. Total Sales
SELECT SUM(sales) AS total_sales FROM sales;

-- 2. Sales by Region
SELECT region, SUM(sales) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales DESC;

-- 3. Top 10 Products
SELECT product_name, SUM(sales) AS total_sales
FROM sales
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

-- 4. Monthly Sales Trend
SELECT year, month, SUM(sales) AS total_sales
FROM sales
GROUP BY year, month
ORDER BY year, month;

-- 5. Profit by Category
SELECT category, SUM(profit) AS total_profit
FROM sales
GROUP BY category
ORDER BY total_profit DESC;

-- 6. Loss-making Products
SELECT product_name, SUM(profit) AS total_profit
FROM sales
GROUP BY product_name
HAVING total_profit < 0
ORDER BY total_profit;