#  Omni Financial Vault: End-to-End Banking Analytics
**Author:** Shadab Kazi  
**Tech Stack:** PostgreSQL, SQL, Data Modeling, Financial Intelligence

---

##  Project Overview
The **Omni Financial Vault** is a simulated Core Banking System designed to perform advanced financial data analytics. This project demonstrates the ability to design relational database schemas, engineer synthetic financial datasets, and derive actionable business insights using SQL.

###  Key Objectives:
* **Risk Management:** Detect high-velocity fraudulent transfers and "structuring" patterns.
* **Customer Intelligence:** Segment clients into Wealth Tiers (Gold, Silver, Bronze) for targeted marketing.
* **Liquidity Analysis:** Identify geographic regions with high capital density for strategic expansion.
* **Growth Tracking:** Calculate Month-over-Month (MoM) transaction volume trends.

---

##  Database Architecture
The vault is built on a **Relational Schema** consisting of three core entities:
1. **Customers:** Demographic and occupational data.
2. **Accounts:** Financial standing, account types (Savings, Fixed Deposit, Credit), and balances.
3. **Transactions:** Granular records of all movement within the ecosystem.



---

##  Financial Insights & SQL Queries
The repository contains a suite of analytical scripts located in `/SQL_Scripts`:

| Analysis Type | Business Value | SQL Technique Used |
| :--- | :--- | :--- |
| **Fraud Detection** | Identifies $100k+ rapid transfers | `HAVING`, `GROUP BY`, Type Casting |
| **Wealth Segmentation** | Identifies HNWIs (High Net Worth Individuals) | `CASE WHEN`, `JOIN`, Aggregations |
| **Growth Metrics** | Calculates MoM Transaction Growth % | `CTE`, `WINDOW FUNCTIONS (LAG)` |
| **Dormant Risk** | Finds high-balance accounts with zero activity | `LEFT JOIN`, `NULL` filtering |

---

##  How to Replicate
1. Run `01_schema_design.sql` to build the structure.
2. Run `02_data_seeding.sql` to populate 100+ rows of synthetic data.
3. Execute `03_financial_analysis.sql` to generate the executive reports.
