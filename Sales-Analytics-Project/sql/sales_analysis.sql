--1. Total sales by year
    SELECT 
    "Order Year",
    SUM(Sales) AS total_sales
    FROM sales_data
    GROUP BY "Order Year"
    ORDER BY "Order Year";
   
--2. Monthly sales trend
    SELECT
    "Order Year",
    "Order Month",
    SUM(Sales) AS monthly_sales
    FROM sales_data
    GROUP BY "Order Year", "Order Month"
    ORDER BY "Order Year", "Order Month";

--3. Sales by region
    SELECT
    Region,
    SUM(Sales) AS total_sales
    FROM sales_data
    GROUP BY Region
    ORDER BY total_sales DESC;

--4. Top 10 products by sales
    SELECT
    "Product Name",
    SUM(Sales) AS total_sales
    FROM sales_data
    GROUP BY "Product Name"
    ORDER BY total_sales DESC
    LIMIT 10;

--5. Sales contribution by customer segment
    SELECT
    Segment,
    SUM(Sales) AS total_sales
    FROM sales_data
    GROUP BY Segment
    ORDER BY total_sales DESC;
