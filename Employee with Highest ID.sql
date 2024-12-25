CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100)
);

INSERT INTO employees (employee_id, employee_name) VALUES
(1, 'Ravi'),
(2, 'Aisha'),
(3, 'Rajesh'),
(4, 'Sita');


SELECT * FROM EMPLOYEES

/*
Write a SQL query to find the employee with the highest ID.
*/

SELECT EMPLOYEE_NAME,
       MAX(EMPLOYEE_ID) AS HIGHEST_ID
FROM EMPLOYEES
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1