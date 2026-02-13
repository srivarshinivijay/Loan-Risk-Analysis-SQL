INSERT INTO customers VALUES
(1,'Amit Sharma',29,'Male','Mumbai',75000,720,'Salaried');

INSERT INTO customers VALUES
(2,'Priya Verma',35,'Female','Delhi',50000,650,'Self-Employed');

INSERT INTO customers VALUES
(3,'Rahul Singh',42,'Male','Chennai',40000,580,'Business');

INSERT INTO customers VALUES
(4,'Sneha Iyer',31,'Female','Bangalore',90000,810,'Salaried');

INSERT INTO customers VALUES
(5,'Karan Mehta',38,'Male','Hyderabad',30000,550,'Self-Employed');

INSERT INTO loans VALUES
(101,1,500000,'Home Loan',8.5,15,'Approved',
TO_DATE('2024-01-10','YYYY-MM-DD'));

INSERT INTO loans VALUES
(102,2,200000,'Car Loan',9.0,5,'Approved',
TO_DATE('2024-02-12','YYYY-MM-DD'));

INSERT INTO loans VALUES
(103,3,150000,'Personal Loan',12.0,3,'Defaulted',
TO_DATE('2024-03-15','YYYY-MM-DD'));

INSERT INTO loans VALUES
(104,4,800000,'Home Loan',7.8,20,'Approved',
TO_DATE('2024-04-01','YYYY-MM-DD'));

INSERT INTO loans VALUES
(105,5,100000,'Personal Loan',13.5,2,'Rejected',
TO_DATE('2024-05-18','YYYY-MM-DD'));

INSERT INTO payments VALUES
(1,101,
TO_DATE('2024-02-01','YYYY-MM-DD'),
20000,'Paid');

INSERT INTO payments VALUES
(2,102,
TO_DATE('2024-03-01','YYYY-MM-DD'),
15000,'Paid');

INSERT INTO payments VALUES
(3,103,
TO_DATE('2024-04-01','YYYY-MM-DD'),
5000,'Missed');

INSERT INTO payments VALUES
(4,104,
TO_DATE('2024-05-01','YYYY-MM-DD'),
30000,'Paid');
