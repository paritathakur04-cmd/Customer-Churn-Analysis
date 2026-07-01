# Customer-Churn-Analysis
# Customer-Churn-Analysis

## Overview

Customer churn is a critical business challenge that directly affects revenue and customer retention. This project analyzes customer churn behavior using Python, SQL, and Power BI to identify the key factors influencing customer attrition.

The project follows a complete data analytics workflow, including data cleaning, exploratory data analysis (EDA), SQL-based business analysis, and the development of an interactive Power BI dashboard. The goal is to transform raw customer data into meaningful insights that can support data-driven business decisions and improve customer retention strategies.

---

## Tools & Technologies

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- MySQL
- SQL
- Microsoft Power BI
- DAX (Data Analysis Expressions)
- Git & GitHub

---

## Dataset

The dataset contains customer information collected from a telecommunications company. It includes demographic details, subscription information, billing details, and customer churn status.

### Key Attributes

- Customer ID
- Gender
- Senior Citizen
- Partner
- Dependents
- Tenure
- Phone Service
- Internet Service
- Online Security
- Tech Support
- Streaming Services
- Contract Type
- Payment Method
- Monthly Charges
- Total Charges
- Customer Churn

---

## Project Workflow

### 1. Data Cleaning (Python)

- Loaded the raw dataset using Pandas.
- Handled missing values.
- Converted data types.
- Removed unnecessary records.
- Prepared a clean dataset for further analysis.

### 2. Exploratory Data Analysis (EDA)

Performed exploratory analysis to identify trends and patterns through visualizations, including:

- Churn distribution
- Contract-wise churn
- Internet service analysis
- Payment method analysis
- Correlation analysis
- Customer tenure analysis

---

### 3. SQL Business Analysis

Executed SQL queries to answer important business questions such as:

- Overall customer churn rate
- Churn by contract type
- Churn by internet service
- Churn by payment method
- Average monthly charges
- Average customer tenure
- Customer segmentation using CASE statements
- Window functions (RANK, ROW_NUMBER)
- Common Table Expressions (CTEs)
- Business performance analysis using aggregate functions

---

### 4. Power BI Dashboard

Designed an interactive dashboard to visualize customer behavior and churn patterns.

The dashboard includes:

- KPI Cards
- Churn Distribution
- Customer Churn by Contract Type
- Customer Churn by Internet Service
- Customer Churn by Payment Method
- Average Monthly Charges by Contract
- Interactive Slicers
- Dynamic Filtering

---

## Dashboard Features

- Interactive filtering by:
  - Gender
  - Contract Type
  - Internet Service
  - Payment Method
  - Senior Citizen

- KPI Cards displaying:
  - Total Customers
  - Churned Customers
  - Churn Rate
  - Average Monthly Charges
  - Average Customer Tenure
  - Average Total Charges

- Business-focused visualizations for customer retention analysis.

---

## Key Insights

- Customers with **Month-to-Month contracts** have the highest churn rate.
- **Fiber Optic** users show higher churn compared to other internet service categories.
- Customers using **Electronic Check** are more likely to leave.
- Higher **Monthly Charges** are associated with increased churn.
- Customers with shorter **Tenure** have a greater likelihood of churn.
- Long-term contracts contribute to improved customer retention.

---

## Business Value

This project demonstrates how data analytics can help organizations understand customer behavior and reduce customer churn.

The analysis enables businesses to:

- Identify customers at high risk of churn.
- Improve customer retention strategies.
- Analyze customer payment behavior.
- Evaluate contract performance.
- Support data-driven decision-making.
- Enhance long-term customer loyalty.

---

## Dashboard Preview

*(Add a screenshot of your Power BI dashboard here.)*

Example:

```
images/dashboard.png
```

---

## Project Structure

```
Customer-Churn-Analysis/
│
├── data/
│   ├── Telco-Customer-Churn.csv
│   └── Cleaned_Telco_Customer_Churn.csv
│
├── python/
│   └── Customer_Churn_Analysis.ipynb
│
├── sql/
│   └── customer_churn_queries.sql
│
├── powerbi/
│   └── Customer_Churn_Dashboard.pbix
│
├── images/
│   └── dashboard.png
│
├── report/
│   └── Customer_Churn_Report.pdf
│
└── README.md
```

---

## Skills Demonstrated

- Data Cleaning
- Data Preprocessing
- Exploratory Data Analysis (EDA)
- SQL Query Writing
- Business Analytics
- Data Visualization
- Dashboard Development
- DAX Measures
- Business Intelligence
- Data Storytelling

---

## Future Improvements

Potential enhancements for this project include:

- Building a machine learning model to predict customer churn.
- Deploying the dashboard using Power BI Service.
- Automating data refresh for real-time reporting.
- Integrating additional customer datasets for deeper analysis.

---

## Dashboard Preview

![Dashboard Preview](https://github.com/paritathakur04-cmd/Customer-Churn-Analysis/blob/main/Screenshot%202026-07-01%20143401.png)

---


## Conclusion

This project demonstrates an end-to-end data analytics workflow by combining Python, SQL, and Power BI to analyze customer churn. It showcases practical skills in data cleaning, business analysis, visualization, and dashboard development while delivering actionable insights that can support customer retention strategies and business decision-making.
