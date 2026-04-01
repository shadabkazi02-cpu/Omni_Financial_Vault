-- Schema Design for Omni_Financial_Vault
-- Author: Shadab Kazi

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    occupation VARCHAR(50),
    customer_since DATE DEFAULT CURRENT_DATE
);

CREATE TABLE Accounts (
    account_id INT PRIMARY KEY,
    customer_id INT REFERENCES Customers(customer_id),
    account_type VARCHAR(20),
    balance DECIMAL(15, 2),
    status VARCHAR(10) DEFAULT 'Active'
);

CREATE TABLE Transactions (
    transaction_id SERIAL PRIMARY KEY,
    account_id INT REFERENCES Accounts(account_id),
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    amount DECIMAL(15, 2) NOT NULL,
    transaction_type VARCHAR(20),
    merchant_category VARCHAR(50),
    location VARCHAR(50)
);
