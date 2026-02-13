-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    city VARCHAR(50),
    income DECIMAL(10,2),
    credit_score INT,
    employment_status VARCHAR(50)
);
-- Loans Table
CREATE TABLE loans (
    loan_id INT PRIMARY KEY,
    customer_id INT,
    loan_amount DECIMAL(12,2),
    loan_type VARCHAR(50),
    interest_rate DECIMAL(5,2),
    loan_term_years INT,
    loan_status VARCHAR(20),
    application_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
-- Payments Table
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    loan_id INT,
    payment_date DATE,
    amount_paid DECIMAL(12,2),
    payment_status VARCHAR(20),
    FOREIGN KEY (loan_id) REFERENCES loans(loan_id)
);