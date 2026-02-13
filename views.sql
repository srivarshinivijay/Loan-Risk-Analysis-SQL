CREATE VIEW customer_risk_category AS       --Risk Category View
SELECT 
    customer_id,
    name,
    credit_score,
    CASE 
        WHEN credit_score < 600 THEN 'High Risk'
        WHEN credit_score BETWEEN 600 AND 750 THEN 'Medium Risk'
        ELSE 'Low Risk'
    END AS risk_level
FROM customers;

SELECT * FROM customer_risk_category;