SELECT COUNT(*) AS total_loans FROM loans;

SELECT loan_status, COUNT(*) 
FROM loans
GROUP BY loan_status;

SELECT SUM(loan_amount) AS total_amount
FROM loans
WHERE loan_status = 'Approved';

SELECT 
    (SUM(CASE WHEN loan_status = 'Defaulted' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) 
    AS default_percentage
FROM loans;

SELECT c.city, COUNT(*) AS defaults   --City with Highest Defaults
FROM loans l
JOIN customers c ON l.customer_id = c.customer_id
WHERE l.loan_status = 'Defaulted'
GROUP BY c.city
ORDER BY defaults DESC;

SELECT AVG(c.credit_score) AS avg_credit_score   --Average Credit Score of Defaulters
FROM customers c
JOIN loans l ON c.customer_id = l.customer_id
WHERE l.loan_status = 'Defaulted';

SELECT               --Income Group vs Loan Status
    CASE 
        WHEN income < 40000 THEN 'Low Income'
        WHEN income BETWEEN 40000 AND 80000 THEN 'Middle Income'
        ELSE 'High Income'
    END AS income_group,
    l.loan_status,
    COUNT(*) AS total_loans
FROM customers c
JOIN loans l ON c.customer_id = l.customer_id
GROUP BY 
    CASE 
        WHEN income < 40000 THEN 'Low Income'
        WHEN income BETWEEN 40000 AND 80000 THEN 'Middle Income'
        ELSE 'High Income'
    END,
    l.loan_status;
    
SELECT     -- Rank Customers by Credit Score (Risk Ranking)
    name,
    credit_score,
    RANK() OVER (ORDER BY credit_score ASC) AS risk_rank
FROM customers;

SELECT       --Running Total of Loan Amount
    loan_id,
    loan_amount,
    SUM(loan_amount) OVER (ORDER BY application_date) AS running_total
FROM loans
WHERE loan_status = 'Approved';