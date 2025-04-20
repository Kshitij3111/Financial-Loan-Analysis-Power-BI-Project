# 🏦 Financial Loan Project  
## Project Description
---
## 📘 Introduction

The Financial Loan Project is a data visualization and analysis project aimed at delivering actionable insights into a bank's lending operations. With the increasing demand for transparency and strategic planning in the financial sector, this project enables data-driven decision-making by visualizing key metrics related to loan applications, disbursements, repayments, and borrower behavior.

The report is designed to be user-friendly, highly informative, and easy to interact with through three primary dashboards: **Summary**, **Overview**, and **Details**.

---

## 🎯 Project Goals

- Analyze loan application trends over time
- Identify the distribution of loan types and borrower profiles
- Differentiate between performing (Good) and non-performing (Bad) loans
- Explore geographical and demographic patterns in lending
- Create a unified reporting tool for decision-makers in the bank

---

## 🧩 Dashboard Breakdown

### 🔹 Dashboard 1: Summary

![Screenshot (18)](https://github.com/user-attachments/assets/66ff237f-801d-4b63-996e-12488f8f054c)


This dashboard provides a high-level snapshot of the overall loan performance using Key Performance Indicators (KPIs). These KPIs track trends over time and compare Month-to-Date (MTD) values and Month-over-Month (MoM) changes. 

#### Key Metrics:

1. **Total Loan Applications**  
   - Total number of loans applied for in a given time frame
   - MTD and MoM metrics help identify spikes or drops in demand

2. **Total Funded Amount**  
   - Sum of all loan amounts disbursed
   - Helps understand disbursement trends and liquidity usage

3. **Total Amount Received**  
   - Total repayment amount received from borrowers
   - Useful for tracking incoming cash flows

4. **Average Interest Rate**  
   - Average rate across all loans
   - Helps understand overall profitability and risk profile

5. **Average Debt-to-Income (DTI) Ratio**  
   - Indicates borrower financial health
   - Higher DTI may point to higher risk

---

### 🔹 Good vs Bad Loan Analysis

A vital part of the dashboard distinguishes between **Good Loans** and **Bad Loans** based on loan status:

#### 🟩 Good Loans:
- Status: `Fully Paid` or `Current`
- Indicates financially healthy and compliant borrowers

##### Good Loan KPIs:
- % of Good Loan Applications
- Total Good Loan Applications
- Funded Amount for Good Loans
- Total Received Amount for Good Loans

#### 🔺 Bad Loans:
- Status: `Charged Off`
- Indicates default or non-recoverable loans

##### Bad Loan KPIs:
- % of Bad Loan Applications
- Total Bad Loan Applications
- Funded Amount for Bad Loans
- Total Received Amount for Bad Loans

This segmentation helps in evaluating portfolio risk and improving lending criteria.

---

### 🔹 Loan Status Grid View

A tabular breakdown of loan metrics categorized by **Loan Status** (e.g., Current, Fully Paid, Charged Off, Late). This view allows for:
- Quick comparison across statuses
- Performance tracking by status
- Insight into status-wise contribution to total loan amounts

Each row includes:
- Total Applications  
- Total Funded  
- Total Received  
- MTD Funded  
- MTD Received  
- Avg. Interest Rate  
- Avg. DTI  

---

## 📊 Dashboard 2: Overview – Visual Insights

![Screenshot (18)](https://github.com/user-attachments/assets/2e9ca98f-3ddf-43b2-859d-091d0c32e222)


This dashboard uses charts and maps to make data visually accessible and easy to analyze.

### 1. **Monthly Trends – Line Chart**
- Tracks how loan applications, funded amounts, and received amounts vary over time
- Helps in identifying patterns, seasonality, and growth trends

### 2. **Regional Analysis – Filled Map**
- Displays geographic distribution of loans by U.S. states
- Highlights regions with high or low lending activity

### 3. **Loan Term Analysis – Donut Chart**
- Shows distribution of loans by term (e.g., 36 months, 60 months)
- Understands borrower preferences for short-term vs. long-term loans

### 4. **Employment Length – Bar Chart**
- Analyzes loan data based on borrower employment length
- Helps assess risk based on employment stability

### 5. **Loan Purpose – Bar Chart**
- Categorizes loans by their stated purpose (e.g., debt consolidation, credit card refinancing)
- Identifies which loan types are most common or risky

### 6. **Home Ownership – Tree Map**
- Displays data based on home ownership status (own, rent, mortgage)
- Offers insight into how home ownership affects loan applications

---

## 📋 Dashboard 3: Details – Deep Dive

![Screenshot (18)](https://github.com/user-attachments/assets/b81f89ab-717e-43a5-acad-e7ee881fbf34)


The Details Dashboard serves as a **comprehensive data exploration interface**. It includes:
- All loan records with filters for deep analysis
- Quick access to any loan’s attributes (e.g., borrower income, employment, status)
- Supports detailed reporting, audit checks, and ad hoc queries

---

## 🔧 Tools & Technologies

- **MySQL** – Used to get absolute figure using complex calculations
- **Power BI** – Used to build the dashboards and visuals
- **Excel / CSV Data** – Source data files used for analysis
- **Data Modeling** – Relationships, DAX formulas, calculated fields for KPI logic
- **Interactive Filters** – Used for drilldowns and segmentation

---
