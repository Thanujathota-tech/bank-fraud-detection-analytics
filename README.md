# Bank Transaction Fraud Detection & Analytics

## Project Overview

This project analyzes bank transaction data to detect fraudulent activities using machine learning and visualize fraud patterns through an interactive dashboard.

The project demonstrates an **end-to-end data analytics workflow**, including database handling, data analysis, machine learning model building, and dashboard visualization.

## Tools & Technologies

* Python
* PostgreSQL
* Power BI
* Pandas
* Scikit-learn

## Project Workflow

PostgreSQL Database
↓
Data Extraction with Python
↓
Data Cleaning & Exploratory Data Analysis (EDA)
↓
Feature Engineering
↓
Machine Learning Models (Logistic Regression & Random Forest)
↓
Fraud Prediction
↓
Interactive Power BI Dashboard

## Machine Learning Models

Two models were built to detect fraudulent transactions:

**Logistic Regression**

* Accuracy: 99%
* Fraud Recall: 0.82

**Random Forest (Improved Model)**

* Accuracy: ~100%
* Fraud Precision: 1.00
* Fraud Recall: 0.89
* Fraud F1 Score: 0.94

## Key Insights

* Fraud transactions have **significantly higher average amounts** than normal transactions.
* Transaction **amount is the most important fraud indicator**.
* Mobile transactions show slightly higher fraud activity compared to other devices.
* Fraud activity varies across different hours of the day.

## Dashboard Features

The interactive dashboard built in Power BI includes:

* Total Transactions KPI
* Total Fraud Transactions KPI
* Fraud Rate KPI
* Fraud vs Normal Transactions Distribution
* Fraud by Device Type
* Fraud by Transaction Amount
* Fraud by Account Type
* Fraud Activity by Hour
* Interactive Filters (Year, Month, City, Merchant Category)

## Dashboard Preview

![Fraud Dashboard](images/dashboard_preview.png)

## Project Structure

bank-fraud-detection-analytics
│
├── data
│   └── banking_fraud_detection.csv
│
├── notebooks
│   └── fraud_detection_analysis.ipynb
│
├── dashboard
│   └── fraud_dashboard.pbix
|
├── Queires
│   └── Fraud_detection.sql
|
├── images
│   └── dashboard_preview.png
│
└── README.md

## Skills Demonstrated

* Data Cleaning & Preparation
* Exploratory Data Analysis
* Machine Learning for Fraud Detection
* Feature Engineering
* Data Visualization & Dashboard Design
* End-to-End Data Analytics Workflow

## Future Improvements

* Implement advanced models such as Gradient Boosting and XGBoost.
* Deploy the model as a real-time fraud detection API.
* Integrate live data pipelines for real-time fraud monitoring.


This project was developed as part of a data analytics portfolio demonstrating skills in data science, machine learning, and business intelligence.
