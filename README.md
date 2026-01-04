# 🏦 Loan Default Risk Analysis

End-to-End Data Analytics Project (Python | SQL | Power BI)

## 📌 Project Overview

Loan defaults pose significant financial risk to lending institutions.
This project analyzes customer demographic, financial, and loan-related data to identify key drivers of loan default and provide actionable insights for credit risk management.

The analysis follows a full-stack data analyst workflow, from data cleaning and feature engineering to SQL analysis and interactive Power BI dashboards.

## 🎯 Business Problem

**Financial institutions need to:**

Identify high-risk customer segments

Understand why customers default

Improve credit approval and pricing strategies

Reduce non-performing assets (NPAs)

**Key Question:**

Which customer and loan characteristics are most strongly associated with loan default, and how can these insights help reduce credit risk?

## 🧰 Tools & Technologies

Python (Pandas, NumPy, Matplotlib)

PostgreSQL (SQL analysis)

Power BI (Dashboard & visualization)

Jupyter Notebook

GitHub (Version control & documentation)

## 📂 Dataset Description

**The dataset contains customer-level loan information, including:**

Customer Attributes

Age

Income

Employment type

Marital status

Dependents

Financial Indicators

Credit score

Debt-to-Income (DTI) ratio

Number of credit lines

Loan Details

Loan amount

Interest rate

Loan term

Loan purpose

Target Variable

Default Flag (1 = Default, 0 = Non-default)

## 🔍 Project Workflow
1️⃣ Data Cleaning & Preparation (Python)

Checked data types, null values, and distributions

Standardized column names

Validated target variable (defaultflag)

Ensured logical value ranges (e.g., age between 18–69)

2️⃣ Exploratory Data Analysis (EDA)

Univariate analysis for numerical & categorical features

Bivariate analysis using default flag

Multivariate analysis using correlation matrix

Identified early risk patterns

3️⃣ Feature Engineering

Created meaningful business-driven features:

age_group

income_group

creditscore_band

loanamount_group

interestrate_group

employment_stability

dti_level

Validated each engineered feature against default rates.

4️⃣ SQL Analysis (PostgreSQL)

Loaded cleaned data into PostgreSQL

Answered core business questions:

Default rate by age group

Default rate by income group

Credit score impact on default

Interest rate vs default

Employment stability and risk

Loan amount & DTI impact

5️⃣ Power BI Dashboard

Built an interactive executive dashboard with:

KPIs

Total Customers

Total Defaults

Default Rate (%)

Risk Segmentation Visuals

Default Rate by Income Group

Default Rate by Age Group

Default Rate by Credit Score Band

Interest Rate vs Default

Employment Stability vs Default

Loan Amount vs Default

DTI Level vs Default

Interactivity

Individual slicers for:

Income Group

Age Group

Employment Stability

Loan Purpose

## 📊 Key Insights

Low-income customers show significantly higher default rates

Poor credit scores are the strongest predictor of default

Higher interest rates correlate with increased default risk

Unstable employment leads to higher default probability

High DTI ratios indicate elevated financial stress

## 💡 Business Recommendations

Strengthen credit checks for high-risk segments

Implement risk-based pricing

Offer better interest rates to financially stable customers

Monitor high-DTI customers more closely

Use dashboard for continuous portfolio risk monitoring

## 📁 Repository Structure
Loan-Default-Analysis/

│

├── data/
│   └── raw_dataset.csv
│
├── notebooks/
│   ├── 01_data_cleaning.ipynb
│   ├── 02_eda.ipynb
│   ├── 03_feature_engineering.ipynb
│
├── sql/
│   └── loan_default_analysis.sql
│
├── powerbi/
│   └── loan_default_dashboard.pbix
│
├── docs/
│   ├── Business_Problem_Document.pdf
│   └── Project_Report.pdf
│
└── README.md

## 🧠 What This Project Demonstrates

End-to-end analytics thinking

Business-focused problem solving

Strong SQL & Power BI skills

Ability to communicate insights to stakeholders

## 📬 Contact

If you’d like to discuss this project or collaborate, feel free to reach out via GitHub or LinkedIn.

⭐ If you like this project, don’t forget to star the repo!
