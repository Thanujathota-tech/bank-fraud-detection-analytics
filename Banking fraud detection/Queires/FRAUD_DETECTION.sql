SELECT * FROM CUSTOMERS;
SELECT * FROM ACCOUNTS;
SELECT * FROM TRANSACTIONS;

-- Calculate Fraud Rate
SELECT 
    COUNT(*) AS total_transactions,
    SUM(is_fraud) AS fraud_transactions,
    ROUND(SUM(is_fraud)*100.0/COUNT(*),2) AS fraud_rate_percentage
FROM transactions;

-- Fraud by Merchant Category
SELECT
MERCHANT_CATEGORY,
ROUND(SUM(IS_FRAUD)*100.0/COUNT(*),2) AS Fraud_rate
FROM
TRANSACTIONS
GROUP BY MERCHANT_CATEGORY
ORDER BY FRAUD_RATE;

-- Identify High-Risk Customers
SELECT
a.customer_id as customer_id,
c.full_name as full_name,
sum(t.is_fraud) as fraud_count
from
customers c join accounts a
on c.customer_id=a.customer_id
join transactions t
on a.account_id=t.account_id
GROUP BY a.customer_id,c.full_name
having sum(t.is_fraud)>1
ORDER BY fraud_count desc;

-- Detect Suspicious Late-Night Transactions
-- Fraud often happens during unusual hours.
-- We will analyze transactions between 12 AM – 4 AM.
SELECT 
    COUNT(*) AS late_night_transactions,
    SUM(is_fraud) AS late_night_frauds,
    ROUND(SUM(is_fraud)*100.0/COUNT(*),2) AS fraud_rate
FROM transactions
WHERE EXTRACT(HOUR FROM transaction_date) BETWEEN 0 AND 4;

-- Final Fraud Dataset View
CREATE VIEW fraud_dataset AS
SELECT
   t.transaction_id,
   c.customer_id,
   c.full_name,
   c.age,
   c.gender,
   c.city AS customer_city,
   a.account_type,
   t.transaction_date,
   t.transaction_type,
   t.amount,
   t.merchant_category,
   t.location AS transaction_location,
   t.device_type,
   t.is_fraud
FROM transactions t
JOIN accounts a
ON t.account_id = a.account_id
JOIN customers c
ON a.customer_id = c.customer_id;

SELECT * 
FROM fraud_dataset
LIMIT 10;


















