CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    city VARCHAR(50),
    account_open_date DATE
);

CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    customer_id INT,
    account_type VARCHAR(20),
    balance DECIMAL(12,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    transaction_date TIMESTAMP,
    transaction_type VARCHAR(20),
    amount DECIMAL(10,2),
    merchant_category VARCHAR(50),
    location VARCHAR(100),
    device_type VARCHAR(50),
    is_fraud INT,
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);


SELECT * FROM CUSTOMERS;
SELECT * FROM ACCOUNTS;
SELECT * FROM TRANSACTIONS;

SELECT COUNT(*) FROM CUSTOMERS;
SELECT COUNT(*)  FROM ACCOUNTS;
SELECT COUNT(*)  FROM TRANSACTIONS;
