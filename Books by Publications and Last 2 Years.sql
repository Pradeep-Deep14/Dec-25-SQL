CREATE TABLE penguin_books (
         book_id INT, 
         author_id INT, 
         author_name VARCHAR(100), 
         book_title VARCHAR(100), 
         publish_date DATE
     );
     CREATE TABLE harpercollins_books (
         book_id INT, 
         author_id INT, 
         author_name VARCHAR(100), 
         book_title VARCHAR(100), 
         publish_date DATE
     );
     INSERT INTO penguin_books VALUES 
         (1, 601, 'Chetan Bhagat', 'The 3 Mistakes of My Life', '2022-05-15'), 
         (2, 602, 'Durjoy Datta', 'Hold My Hand', '2023-03-01'), 
         (3, 601, 'Chetan Bhagat', 'One Indian Girl', '2023-01-10');
     INSERT INTO harpercollins_books VALUES 
         (1, 601, 'Chetan Bhagat', 'Half Girlfriend', '2022-08-20'), 
         (2, 603, 'Shashi Tharoor', 'An Era of Darkness', '2023-06-10'), 
         (3, 602, 'Durjoy Datta', 'Our Impossible Love', '2023-02-18');

SELECT * FROM PENGUIN_BOOKS
SELECT * FROM HARPERCOLLINS_BOOKS

/*
Identify all authors who have written books published by both Penguin and HarperCollins in the last two years.
*/

SELECT P.AUTHOR_NAME
FROM PENGUIN_BOOKS P
JOIN HARPERCOLLINS_BOOKS H
ON P.AUTHOR_ID = H.AUTHOR_ID
WHERE P.PUBLISH_DATE >= CURRENT_DATE - INTERVAL '2 Years'
AND H.PUBLISH_DATE >= CURRENT_DATE - INTERVAL '2 Years'
