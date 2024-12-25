CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(100)
);

INSERT INTO customers (customer_id, customer_name, city) VALUES
(1, 'Anjali', 'Delhi'),
(2, 'Rohan', 'Mumbai'),
(3, 'Suresh', 'Delhi'),
(4, 'Priya', 'Chennai');


SELECT * FROM CUSTOMERS

/*
Write a SQL query to list all cities in the customers table.
*/

SELECT DISTINCT CITY
FROM CUSTOMERS