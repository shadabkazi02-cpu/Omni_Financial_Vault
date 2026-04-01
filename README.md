# 🏦 Omni Financial Vault: End-to-End Banking Analytics
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=microsoft-power-bi&logoColor=black)
![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)

**Author:** Shadab Kazi  
**Focus:** Financial Data Engineering & Risk Analytics

---

## 📌 Project Overview
The **Omni Financial Vault** is a simulated Core Banking System designed to perform advanced financial data analytics. This project demonstrates the ability to design relational database schemas, engineer synthetic financial datasets, and derive actionable business insights using SQL.

### 🎯 Key Objectives:
* **Risk Management:** Detect high-velocity fraudulent transfers and "structuring" patterns.
* **Customer Intelligence:** Segment clients into Wealth Tiers (Gold, Silver, Bronze).
* **Liquidity Analysis:** Identify geographic regions with high capital density.
* **Growth Tracking:** Calculate Month-over-Month (MoM) transaction volume trends.

---

## 🛠️ Technical Stack & Environment
* **Database Engine:** PostgreSQL 16+
* **Interface:** pgAdmin 4
* **Techniques:** CTEs, Window Functions (`LAG`, `OVER`), Star Schema Modeling, Data Casting.

---

## 🏗️ Database Architecture
The vault utilizes a **Relational Schema** (normalized to 3NF) consisting of:
1. **Customers:** Demographic & Occupational metadata.
2. **Accounts:** Multi-product holdings (Savings, FD, Credit).
3. **Transactions:** Real-time ledger of all financial movement.



---

## 📊 Executive Summary of Findings
* **Fraud Patterns:** Identified 3 accounts in Mumbai/Pune showing rapid-fire transfers >$100k (Structuring risk).
* **Asset Concentration:** The 'Gold' segment (15% of users) holds 65% of total bank liquidity.
* **Sector Growth:** Identified 12% MoM volume growth in "Online Shopping" and "Travel" categories.

---

## 📈 Repository Structure
| File | Description |
| :--- | :--- |
| `01_schema_design.sql` | Table structures, Primary/Foreign keys, and constraints. |
| `02_data_seeding.sql` | 100+ rows of high-fidelity synthetic financial data. |
| `03_financial_analysis.sql` | Advanced analytical queries for Risk and Growth. |

---

## 🤝 Connect with Me
- **LinkedIn:** https://www.linkedin.com/in/shadabjkazi/
- **Portfolio:** (https://github.com/shadabkazi02-cpu)
- **Email:** shadabkazi02@gmail.com

---
*© 2026 Shadab Kazi. All rights reserved.*
