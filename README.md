#  Omni Financial Vault: End-to-End Banking Analytics
**Author:** Shadab Kazi  
**Tech Stack:** PostgreSQL 16+, pgAdmin 4, SQL, Data Engineering

---

##  Project Overview
The **Omni Financial Vault** is a simulated Core Banking System designed to perform advanced financial data analytics. This project demonstrates the ability to design relational database schemas, engineer synthetic financial datasets, and derive actionable business insights using SQL.

###  Key Objectives:
* **Risk Management:** Detect high-velocity fraudulent transfers and "structuring" patterns.
* **Customer Intelligence:** Segment clients into Wealth Tiers (Gold, Silver, Bronze) for targeted marketing.
* **Liquidity Analysis:** Identify geographic regions with high capital density for strategic expansion.
* **Growth Tracking:** Calculate Month-over-Month (MoM) transaction volume trends.

---

##  Technical Stack & Environment
To ensure industry-standard performance and scalability, the following tools were utilized:
* **Database Engine:** PostgreSQL (Relational Database Management System)
* **Interface:** pgAdmin 4 (GUI for Database Administration)
* **Data Modeling:** Star Schema architecture (Fact-Dimension relationships)
* **Query Techniques:** CTEs (Common Table Expressions), Window Functions (`LAG`, `OVER`), and Case Logic.

---

##  Database Architecture
The vault is built on a **Relational Schema** consisting of three core entities:
1. **Customers:** Demographic and occupational data.
2. **Accounts:** Financial standing, account types (Savings, Fixed Deposit, Credit), and balances.
3. **Transactions:** Granular records of all movement within the ecosystem.



---

##  Executive Summary of Findings
Based on the analytical suite performed in the `03_financial_analysis.sql` script, the following insights were derived:

* **Fraudulent Patterns:** Identified 3 accounts in high-volume regions (Mumbai, Pune) with rapid-fire transfers exceeding $100,000, signaling potential "structuring" risks.
* **High-Net-Worth Distribution:** The 'Gold' segment represents only 15% of the customer base but holds 65% of the bank's total liquidity.
* **Regional Liquidity:** Mumbai leads in total capital density, suggesting a high priority for opening a specialized private banking branch.
* **Sector Spending:** Identified a 12% MoM growth in "Online Shopping" and "Travel" merchant categories, indicating a shift in consumer liquidity.

---

##  Financial Insights & SQL Queries
The repository contains a suite of analytical scripts located in `/SQL_Scripts`:

| Analysis Type | Business Value | SQL Technique Used |
| :--- | :--- | :--- |
| **Fraud Detection** | Identifies $100k+ rapid transfers | `HAVING`, `GROUP BY`, Casting |
| **Wealth Segmentation** | Identifies HNWIs (High Net Worth) | `CASE WHEN`, `JOIN`, Aggregations |
| **Growth Metrics** | Calculates MoM Transaction Growth % | `CTE`, `WINDOW FUNCTIONS (LAG)` |
| **Dormant Risk** | Finds high-balance inactive accounts | `LEFT JOIN`, `NULL` filtering |

---

##  How to Replicate
1. Run `01_schema_design.sql` to build the structure.
2. Run `02_data_seeding.sql` to populate 100+ rows of synthetic data.
3. Execute `03_financial_analysis.sql` to generate the executive reports.
