-- Retail Sales Analytics

-- Step 1 - Create Database

CREATE DATABASE retail_sale_db;
USE retail_sale_db;

-- Step 2 - Create Table

CREATE TABLE retail_sales (
	transaction_id INT,
    date DATE,
    customer_id VARCHAR(20),
    gender VARCHAR(10),
	age INT,
	product_category VARCHAR(20),
	quantity INT,
	price_per_unit DECIMAL(10,2),
	total_amount DECIMAL(10,2),
	month VARCHAR(20),
	month_number INT,
    year INT,
	age_group VARCHAR(20)
); 

-- Step 3 - Import CSV

# Data imported by Table data import wizard 

-- Step 4 - Data Validation

 # View all rows
SELECT * 
FROM retail_sales; 

# Count rows
SELECT COUNT(*) 
FROM retail_sales;

# Check NULL Values
SELECT COUNT(*)
FROM retail_sales
WHERE total_amount IS NULL;

# Check Dupilcate Transection Id 
SELECT transaction_id,
COUNT(*)
FROM retail_sales
GROUP BY transaction_id
HAVING COUNT(*)>1;


-- Step 5 - Basic SQL Queries

# Total Revenue 
SELECT 
SUM(total_amount) AS Total_Revenue
FROM retail_sales ;

# Total Orders
SELECT
COUNT(transaction_id) As Total_Orders
FROM retail_sales;
 
-- Step 6 - Aggregate Functions

# Average Order Value
SELECT ROUND(AVG(total_amount),2) AS Avg_Order_Value
FROM retail_sales;

# Average Customer Age 
SELECT ROUND(AVG(age),2) AS Avg_Customer_Age
FROM retail_sales;

-- Step 7 - GROUP BY

# Monthly Revenue 
SELECT month, SUM(total_amount) AS Revenue
FROM retail_sales
GROUP BY month, month_number
ORDER BY month_number;

# Revenue By Gender 
SELECT gender, SUM(total_amount) AS Revenue
FROM retail_sales
GROUP BY gender ;

# Revenue By Category 
SELECT product_category, SUM(total_amount)
FROM retail_sales
GROUP BY product_category;

# Revenue By Age_group
SELECT age_group, SUM(total_amount)
FROM retail_sales
GROUP BY age_group;

-- Step 8 - ORDER BY 

# Top 5 Customers
SELECT customer_id, SUM(total_amount) AS Total_Spent
FROM retail_sales
GROUP BY customer_id
ORDER BY Total_Spent DESC
LIMIT 5 ;

# Best Selling Category
SELECT product_category, SUM(quantity) AS Quantity_Sold
FROM retail_sales
GROUP BY product_category
ORDER BY Quantity_Sold DESC
LIMIT 1 ;

# Highest Revenue Category
SELECT product_category, SUM(total_amount) AS Revenue
FROM retail_sales
GROUP BY product_category
ORDER BY Revenue DESC
LIMIT 1;


-- Step 9 - CASE Statement

# Customer Spending Level 
SELECT transaction_id, customer_id , total_amount,
CASE
WHEN total_amount >=1000 THEN 'High'
WHEN total_amount >=500  THEN 'Medium'
ELSE 'Low'
END AS Spending_Level
FROM retail_sales;

# Age Classification
SELECT customer_id, age,
CASE
WHEN age <=25 THEN 'Young'
WHEN age <=40 THEN 'Adult'
ELSE 'Senior'
END AS Age_Category
FROM retail_sales;

-- Step 10 - Window Functions

# Customer Ranking by Revenue

SELECT 
	customer_id,
	SUM(total_amount) AS Revenue,
    RANK() OVER (ORDER BY SUM(total_amount) DESC)
    AS Customer_rank
FROM retail_sales
GROUP BY customer_id; 

# Dense Rank 

SELECT 
	customer_id,
    SUM(total_amount) AS Revenue,
DENSE_RANK() OVER(
ORDER BY SUM(total_amount) DESC
) Customer_rank
FROM retail_sales
GROUP BY customer_id; 

# Running Total Of Revenue

SELECT 
	date,
    SUM(total_amount) As Daily_Revenue,
    SUM(SUM(total_amount))
    OVER(ORDER BY date) AS Running_Total
FROM retail_sales
GROUP BY date;


-- Step 11 - CTE (Common Table Expression)

# Find Customers Above Average Spending 

WITH Customer_Revenue AS (
SELECT 
customer_id,
SUM(total_amount) Revenue
FROM retail_sales
GROUP BY customer_id
)
SELECT *
From Customer_Revenue
Where Revenue>(
SELECT AVG(Revenue)
From Customer_Revenue
);

# Top 10 Using CTE 

WITH Ranked_Customers AS ( 
SELECT 
customer_id,
DENSE_RANK() OVER(
ORDER BY SUM(total_amount) DESC) Ranking
FROM retail_sales
GROUP BY customer_id 
)
SELECT * 
FROM Ranked_Customers
WHERE Ranking<=10 ; 

-- Step 12 - Views
# Revenue Summary View

CREATE VIEW vw_revenue_summary AS
SELECT
product_category,
SUM(total_amount) Revenue,
AVG(total_amount) Avg_order,
SUM(quantity) Quantity
FROM retail_sales
GROUP BY product_category;

# Check Result 
SELECT * 
FROM vw_revenue_summary;

# Monthly Sales by category View

CREATE VIEW vw_monthly_sales AS
SELECT 
month,
product_category,
SUM(total_amount) Montly_Revenue,
SUM(quantity) Quantity
FROM retail_sales
GROUP BY month, month_number, product_category
ORDER By month_number ;

SELECT * 
FROM vw_monthly_sales ;


-- Step 13 - Business Insights

# Which Gender Spends more?

SELECT 
gender, 
SUM(total_amount) AS Total_Spends
FROM retail_sales
GROUP BY GENDER
ORDER BY Total_Spends DESC
LIMIT 1;

# Which Age Group Spends The most?

SELECT 
age_group,
SUM(total_amount) AS Total_spends
FROM retail_sales
GROUP BY age_group
ORDER BY Total_spends DESC
LIMIT 1 ;


# Highest Average purchase category?

SELECT 
product_category,
AVG(total_amount) AS Highest_AVG_Purchase
FROM retail_sales
GROUP BY product_category
ORDER BY Highest_AVG_Purchase DESC
LIMIT 1 ;


-- Database creation and CSV import
-- Data validation and quality checks
-- Aggregate functions (SUM, AVG, COUNT)
-- GROUP BY and ORDER BY
-- CASE statements for business logic
-- Window functions (RANK, DENSE_RANK, Running Total)
-- Common Table Expressions (CTEs)
-- Views for reusable reporting
-- Business insight generation
