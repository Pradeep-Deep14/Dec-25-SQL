CREATE TABLE sales (
         sale_id INT PRIMARY KEY, 
         product_id INT, 
         revenue DECIMAL(10, 2)
     );
     CREATE TABLE products (
         product_id INT PRIMARY KEY, 
         product_name VARCHAR(100), 
         category VARCHAR(50)
     );
     INSERT INTO products VALUES 
         (1, 'Smartphone', 'Electronics'), 
         (2, 'Laptop', 'Electronics'), 
         (3, 'Washing Machine', 'Appliances');
     INSERT INTO sales VALUES 
         (1, 1, 50000.00), 
         (2, 2, 75000.00), 
         (3, 3, 30000.00), 
         (4, 1, 70000.00);

SELECT * FROM SALES
SELECT * FROM PRODUCTS


/*
Find the most popular product in each category based on total sales.
*/

SELECT P.PRODUCT_NAME,
       P.CATEGORY,
       SUM(S.REVENUE) AS TOTAL_SALES
FROM PRODUCTS P
JOIN SALES S
ON P.PRODUCT_ID = S.PRODUCT_ID
GROUP BY 1,2
ORDER BY 3 DESC
LIMIT 1
