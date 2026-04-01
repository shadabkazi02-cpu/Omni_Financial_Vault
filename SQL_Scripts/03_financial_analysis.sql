-- 03_FINANCIAL_ANALYSIS.SQL
-- Author: Shadab Kazi
-- Purpose: Identifying high-risk transactions and high-value customer segments.

---------------------------------------------------------
-- 1. FRAUD DETECTION: High-Velocity Transfers
-- Identifies accounts with > 2 transfers in 24 hours totaling > $100k
---------------------------------------------------------
SELECT 
    account_id, 
    transaction_date::DATE as transfer_date,
    COUNT(*) as num_transfers,
    SUM(amount) as total_transfer_value
FROM transactions
WHERE transaction_type = 'Transfer'
GROUP BY account_id, transaction_date::DATE
HAVING COUNT(*) > 2 AND SUM(amount) > 100000;

---------------------------------------------------------
-- 2. CUSTOMER WEALTH SEGMENTATION
-- Categorizes customers based on total balance across all accounts
---------------------------------------------------------
SELECT 
    c.customer_id, 
    c.first_name, 
    c.last_name, 
    SUM(a.balance) as total_assets,
    CASE 
        WHEN SUM(a.balance) >= 500000 THEN 'Gold'
        WHEN SUM(a.balance) BETWEEN 100000 AND 499999 THEN 'Silver'
        ELSE 'Bronze'
    END as customer_segment
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_assets DESC;

---------------------------------------------------------
-- 3. MERCHANT CATEGORY SPENDING (CASH FLOW)
-- Shows where the bank's liquidity is flowing
---------------------------------------------------------
SELECT 
    merchant_category, 
    SUM(amount) as total_spent,
    COUNT(*) as transaction_count
FROM transactions
WHERE transaction_type = 'Payment'
GROUP BY merchant_category
ORDER BY total_spent DESC;

---------------------------------------------------------
-- 4. MONTH-OVER-MONTH (MoM) GROWTH ANALYSIS
-- Calculates how much total transaction volume grew compared to previous transactions
---------------------------------------------------------
WITH Monthly_Volume AS (
    SELECT 
        DATE_TRUNC('month', transaction_date) as month,
        SUM(amount) as current_month_volume
    FROM transactions
    GROUP BY 1
)
SELECT 
    month,
    current_month_volume,
    LAG(current_month_volume) OVER (ORDER BY month) as previous_month_volume,
    ROUND(((current_month_volume - LAG(current_month_volume) OVER (ORDER BY month)) / 
           NULLIF(LAG(current_month_volume) OVER (ORDER BY month), 0)) * 100, 2) as growth_percentage
FROM Monthly_Volume;

---------------------------------------------------------
-- 5. THE "DORMANT ACCOUNT" RISK REPORT
-- Identifies accounts with high balances but ZERO transactions in March 
-- (Crucial for Anti-Money Laundering/Lost Customer tracking)
---------------------------------------------------------
SELECT 
    a.account_id, 
    c.first_name, 
    c.last_name, 
    a.balance,
    a.account_type
FROM accounts a
JOIN customers c ON a.customer_id = c.customer_id
LEFT JOIN transactions t ON a.account_id = t.account_id
WHERE t.transaction_id IS NULL AND a.balance > 10000;

---------------------------------------------------------
-- 6. TOP SPENDING CITIES BY LIQUIDITY
-- Helps the bank decide where to open new physical branches
---------------------------------------------------------
SELECT 
    c.city, 
    SUM(a.balance) as total_city_liquidity,
    AVG(a.balance) as avg_balance_per_customer,
    COUNT(DISTINCT c.customer_id) as customer_base
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
GROUP BY c.city
ORDER BY total_city_liquidity DESC;
