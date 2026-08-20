# Retail Sales Analytics Project

![Excel](https://img.shields.io/badge/Excel-217346?style=for-the-badge&logo=microsoftexcel&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-150458?style=for-the-badge&logo=pandas&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Tableau](https://img.shields.io/badge/Tableau-E97627?style=for-the-badge&logo=tableau&logoColor=white)
![Scikit-learn](https://img.shields.io/badge/Scikit--learn-F7931E?style=for-the-badge&logo=scikit-learn&logoColor=white)

![Cover](Images/Cover_Photo.png)

## 📌 Project Overview

This is an end-to-end Retail Sales Analytics project using Excel, Statistics, SQL, Python, Power BI, Tableau and Machine Learning, created as part of my Data Analyst portfolio.
The project analyzes retail transaction data to understand sales performance, customer behavior, product performance, and customer spending patterns.

---

## 🎯 Project Objectives

The objectives of this project are:

- Analyze overall retail sales performance
- Identify monthly sales trends
- Analyze product and category performance
- Understand customer purchasing behavior
- Identify repeat customers
- Find top customers
- Build dashboards
- Apply statistical analysis
- Perform exploratory data analysis
- Apply basic machine learning techniques

---

## 🛠️ Tools & Technologies

- **Excel** – Data Cleaning, Pivot Tables, Charts & Dashboard
- **SQL / MySQL** – Data Analysis & Business Queries
- **Python** – Data Cleaning, Feature Engineering & EDA
- **Pandas & NumPy** – Data Manipulation
- **Matplotlib, Seaborn & Plotly** – Data Visualization
- **Power BI** – Business Dashboard
- **Tableau** – Data Visualization
- **Scikit-Learn** – Machine Learning

---

## 📂 Project Structure

**Retail-Sales-Analytics**

- Data
	- retail_sales_raw.csv
 	- retail_sales_cleaned.csv
  	- retail_sales_feature_engineered.csv
- Excel
- Statistics
- SQL
- Python
- PowerBI
- Tableau
- Machine_Learning
- README.md

---

# Excel Analysis

The Excel section focuses on data cleaning, analyzing, visualization, and dashboard creation. 

## Data Cleaning

- Removed duplicate records
- Handled missing values
- Updated numerical and amount columns
- Formatted date column

## Analysis

Created Pivot Tables

- Monthly Sales
- Product-wise Sales
- Gender-wise Revenue
- Age Group Revenue
- Top Customers


## Visualizations

- Line Chart
- Column Chart
- Donut Chart
- Bar Chart
- Slicers


## Dashboard KPIs

- Total Sales
- Total Orders
- Average Order Value
- Average Customer Age
- Best Selling Category


## Excel Dashboard Preview

![Excel Dashboard](Images/Excel_Dashboard.png)

---

# Statistical Analysis

Statistical analysis was performed to understand the distribution and variation of sales data.

## Descriptive Statistics

- Mean
- Median
- Mode
- Variance
- Standard Deviation
- Range
- Quartiles
- Interquartile Range (IQR)

![Statistical Preview](Images/Statistics.png)

## Hypothesis Testing
- T-Test

---

# SQL Analysis

My SQL was used to perform business-oriented analysis on the retail sales dataset.

## Queries

- Total Revenue
- Total Orders
- Monthly Revenue 
- Top Customers
- Best Selling Category
- Average Customer Age 

## SQL Concepts Demonstrated

- SELECT
- WHERE
- HAVING
- GROUP BY
- ORDER BY
- CASE
- Aggregate Functions
- Window Functions
- Common Table Expressions (CTE)
- Views

---

# Python & Exploratory Data Analysis

Python was used for data cleaning, feature engineering, exploratory analysis and visualisation.

- **Created Connection with MySQL Database**

## Libraries

- Pandas
- NumPy
- Matplotlib
- Seaborn
- Plotly
- scikit-learn 

## Data Cleaning
    Used:
	df.info()
	df.describe()
	df.isnull().sum()
	df.duplicated().sum()


## Feature Engineering
Created:
- Day
- Week
- Weekday

## Exploratory Data Analysis

- **Sales Analysis**
    - Sales Trend
    - Monthly Revenue

- **Product Analysis**
    - Highest Selling Category
    - Lowest Selling Category

- **Customer Analysis**
    - Gender Distribution
    - Repeat Customers
    - Revenue Analysis
    - Average Basket Size
    - Age Distribution
    - Revenue by Gender
    - Revenue by age group
    - Revenue by month

- **Visualization**
    - Bar Chart
    - Histogram
    - Boxplot
    - Vilon Plot
    - Line Chart
    - Heatmap
    - Pairplot
    - Correlation Matrix

**Python EDA Preview**
 ![EDA Preview](Images/python_eda.png)

---

# Power BI Analytics
  An interactive Power BI dashboard was created to analyze sales and customer performance.

- **Dashboards**
    - Executive dashboard
    - Sales Dashboard
    - Customer Dashboard

- **KPIs**
    - Total Revenue
    - Orders
    - Average Order Value
    - Customers
    - Quantity

- **Analysis**
    - Monthly Sales Trend
    - Category Revenue
    - Product Quantity
    - Revenue by Age group Analysis
    - Gender Analysis
    - Purchase Frequency
    - Top Customers

- **Intrective Features**
	- Slicers
    - Filters
    - DAX Measures
    - Drill-through

**Power BI Dashboard**
![Power-BI Dashboard](Images/Power_Bi_dashboard.png)

# Tableau Analytics 

A Tableau dashboard was developed to provide interactive sales and customer insights.

- **Dashboard Components**
    - KPI Cards
    - Sales Trend
    - Product Analysis
    - Customer Analysis
    - Filters
    - Parameters
    - Dashboard Actions


**Tableau Dashboard**

![Tableau Dashboard](Images/Tableau_Dashboard.png)

---

# Machine Learning

Two beginner-level Machine Learning projects were developed.


## Project 1 - Sales Prediction

*Objective*

Predict the Total Amount using customer and transaction features.

- **Target variables**
    - Total Amount

- **Features**
    - Age
    - Gender
    - Product Category
    - Quantity
    - Price per unit

- **Models**
    - Linear Regression
    - Random Forest Regressor

- **Evaluation Metrics**
    - MAE
    - RMSE
    - R² Score

  
![ML_P1 View](Images/ML-Project-1.png)

---


## Project 2 - Customer Spending Prediction

*Objective*

Classify customers into different spending categories.

- **Spending Categories**
  	- Low Spender
  	- Medium Spender
  	- High Spender
  
- **Models**
    - Logistic Regression
    - Decision Tree
    - Random Forest Classifier

- **Evaluation Metrics**
    - Accuracy
    - Precision
    - Recall
    - F1 Score
    - Confusion Matrix

**Model Comparison**

![ML_P2 View](Images/ML-Project-2.png)


**Confusion Matrix**

![ML_P2.1 View](Images/ML-Project-2.1.png)

---

# Project Workflow

Retail Sales Data
       
Data Cleaning
       
Excel Analysis
       
Statistical Analysis
       
SQL Analysis
       
Python & EDA
       
Power BI Dashboard
       
Tableau Dashboard
       
Machine Learning
       
Business Insights

---


# Business Questions Answered

This project answers questions such as:

- What is the overall sales performance?
- How does revenue change over time?
- Which product category performs best?
- Which customers generate the highest revenue?
- Are there differences in spending by gender?
- Does age influence spending?
- Who are the repeat customers?
- What is the average basket size?
- Can customer be classified into spending categories?
- Can sales be predicted using machine learning?
- Can customers be classified into spending categories?

--- 

# Key Skills Demonstrated

Through this project, I demonstrated practical knowledge of:
  - Data Cleaning
  - Data Analysis
  - Excel
  - SQL
  - Python
  - Statistics
  - Exploratory Data Analysis
  - Data Visualization
  - Power BI
  - Tableau
  - Machine Learning
  - Business Intelligence


---

# About Me

**Maneesh Singh Samant**

Aspiring Data Analyst

**Skills:**  Excel | SQL | Python | Statistics | Power BI | Tableau | Machine Learning

---

# Thank you for visiting my project!
