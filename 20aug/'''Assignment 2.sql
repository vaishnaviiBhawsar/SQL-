'''Assignment 2 — Product Management System

Use the same products table and data created in previous Assignment.'''

==> Write SQL queries for the following questions:

-- ============================================
-- ASSIGNMENT 2 - PRODUCT MANAGEMENT SYSTEM
-- DATE-BASED SQL QUERIES
-- ============================================


-- 1. Find products manufactured after '2024-01-01'.

SELECT * FROM products
WHERE manufacturing_date > '2024-01-01';


-- 2. Find products manufactured before '2023-01-01'.

SELECT * FROM products
WHERE manufacturing_date < '2023-01-01';


-- 3. Find products manufactured between '2022-01-01' and '2024-12-31'.

SELECT * FROM products
WHERE manufacturing_date BETWEEN '2022-01-01' AND '2024-12-31';


-- 4. Find products manufactured after '2023-01-01'
-- whose price is greater than 20000.

SELECT * FROM products
WHERE manufacturing_date > '2023-01-01'
AND price > 20000;


-- 5. Find products manufactured between '2023-01-01' and '2025-12-31'
-- whose rating is at least 4.

SELECT * FROM products
WHERE manufacturing_date BETWEEN '2023-01-01' AND '2025-12-31'
AND rating >= 4;


-- 6. Find products manufactured after '2023-01-01'
-- whose stock is greater than 10.

SELECT * FROM products
WHERE manufacturing_date > '2023-01-01'
AND stock > 10;


-- 7. Find products manufactured before '2024-01-01'
-- OR whose price is greater than 80000.

SELECT * FROM products
WHERE manufacturing_date < '2024-01-01'
OR price > 80000;


-- 8. Find products manufactured between '2023-01-01' and '2025-12-31'
-- whose stock is not 0.

SELECT * FROM products
WHERE manufacturing_date BETWEEN '2023-01-01' AND '2025-12-31'
AND stock != 0;


-- 9. Find products manufactured after '2022-01-01'
-- whose price is between 15000 and 60000
-- and rating is at least 3.

SELECT * FROM products
WHERE manufacturing_date > '2022-01-01'
AND price BETWEEN 15000 AND 60000
AND rating >= 3;


-- 10. Find products manufactured before '2024-01-01'
-- whose rating is less than 3 OR whose stock is 0.

SELECT * FROM products
WHERE manufacturing_date < '2024-01-01'
AND (rating < 3 OR stock = 0);


-- 11. Find Electronics or Furniture products
-- manufactured after '2023-01-01'.

SELECT * FROM products
WHERE category IN ('Electronics', 'Furniture')
AND manufacturing_date > '2023-01-01';


-- 12. Find Electronics, Clothing, or Grocery products
-- manufactured between 2022 and 2025.

SELECT * FROM products
WHERE category IN ('Electronics', 'Clothing', 'Grocery')
AND manufacturing_date BETWEEN '2022-01-01' AND '2025-12-31';


-- 13. Find products from Indore, Pune, or Delhi
-- manufactured after '2023-06-01'.

SELECT * FROM products
WHERE city IN ('Indore', 'Pune', 'Delhi')
AND manufacturing_date > '2023-06-01';


-- 14. Find products NOT from Indore or Bhopal
-- manufactured after '2023-01-01'.

SELECT * FROM products
WHERE city NOT IN ('Indore', 'Bhopal')
AND manufacturing_date > '2023-01-01';


-- 15. Find products whose brand is NOT Samsung, LG, or Sony
-- and manufactured after '2022-01-01'.

SELECT * FROM products
WHERE brand NOT IN ('Samsung', 'LG', 'Sony')
AND manufacturing_date > '2022-01-01';


-- 16. Find products whose name starts with S
-- and manufactured after '2023-01-01'.

SELECT * FROM products
WHERE product_name LIKE 'S%'
AND manufacturing_date > '2023-01-01';


-- 17. Find products whose name contains phone
-- and manufactured between 2022 and 2025.

SELECT * FROM products
WHERE product_name LIKE '%phone%'
AND manufacturing_date BETWEEN '2022-01-01' AND '2025-12-31';


-- 18. Find products whose name contains the letter a
-- and manufacturing date is after '2024-01-01'.

SELECT * FROM products
WHERE product_name LIKE '%a%'
AND manufacturing_date > '2024-01-01';


-- 19. Find products whose brand starts with S
-- and manufactured after '2022-01-01'.

SELECT * FROM products
WHERE brand LIKE 'S%'
AND manufacturing_date > '2022-01-01';


-- 20. Find products whose brand ends with a
-- and manufacturing date is between 2023 and 2026.

SELECT * FROM products
WHERE brand LIKE '%a'
AND manufacturing_date BETWEEN '2023-01-01' AND '2026-12-31';


-- 21. Find products from Indore, Pune, or Delhi
-- manufactured after '2023-01-01'
-- price between 20000 and 70000
-- rating at least 4
-- stock is not 0.

SELECT * FROM products
WHERE city IN ('Indore', 'Pune', 'Delhi')
AND manufacturing_date > '2023-01-01'
AND price BETWEEN 20000 AND 70000
AND rating >= 4
AND stock != 0;


-- 22. Find Electronics or Furniture products
-- manufactured after '2022-12-31'
-- price less than 60000
-- stock greater than 10
-- rating at least 3.

SELECT * FROM products
WHERE category IN ('Electronics', 'Furniture')
AND manufacturing_date > '2022-12-31'
AND price < 60000
AND stock > 10
AND rating >= 3;


-- 23. Find products manufactured between 2022 and 2025
-- category Electronics, Clothing, or Furniture
-- rating greater than 3
-- city is not Mumbai.

SELECT * FROM products
WHERE manufacturing_date BETWEEN '2022-01-01' AND '2025-12-31'
AND category IN ('Electronics', 'Clothing', 'Furniture')
AND rating > 3
AND city != 'Mumbai';


-- 24. Find products manufactured after '2023-01-01'
-- name contains a
-- price NOT between 10000 and 50000
-- stock greater than 5.

SELECT * FROM products
WHERE manufacturing_date > '2023-01-01'
AND product_name LIKE '%a%'
AND price NOT BETWEEN 10000 AND 50000
AND stock > 5;


-- 25. Find products manufactured between 2023 and 2025
-- brand is not Samsung, LG, or Sony
-- price greater than 25000
-- rating at least 4
-- stock is not 0.

SELECT * FROM products
WHERE manufacturing_date BETWEEN '2023-01-01' AND '2025-12-31'
AND brand NOT IN ('Samsung', 'LG', 'Sony')
AND price > 25000
AND rating >= 4
AND stock != 0;


-- 26. Find Electronics or Furniture products
-- manufactured after '2023-01-01'
-- price greater than 40000 OR rating is 5
-- stock greater than 10.

SELECT * FROM products
WHERE category IN ('Electronics', 'Furniture')
AND manufacturing_date > '2023-01-01'
AND (price > 40000 OR rating = 5)
AND stock > 10;


-- 27. Find products from Indore, Pune, or Delhi
-- manufactured between 2023 and 2025
-- price between 15000 and 80000
-- rating at least 4
-- stock greater than 0
-- category is not Grocery.

SELECT * FROM products
WHERE city IN ('Indore', 'Pune', 'Delhi')
AND manufacturing_date BETWEEN '2023-01-01' AND '2025-12-31'
AND price BETWEEN 15000 AND 80000
AND rating >= 4
AND stock > 0
AND category != 'Grocery';


-- 28. Find products whose name starts with S or M
-- city is not Mumbai or Bhopal
-- price between 15000 and 80000
-- rating at least 4
-- manufacturing date after '2023-01-01'.

SELECT * FROM products
WHERE (product_name LIKE 'S%'
OR product_name LIKE 'M%')
AND city NOT IN ('Mumbai', 'Bhopal')
AND price BETWEEN 15000 AND 80000
AND rating >= 4
AND manufacturing_date > '2023-01-01';


-- 29. Find products manufactured between 2022 and 2025
-- category Electronics, Furniture, or Clothing
-- price NOT between 10000 and 50000
-- stock greater than 5
-- rating greater than 3
-- city is not Mumbai or Bhopal.

SELECT * FROM products
WHERE manufacturing_date BETWEEN '2022-01-01' AND '2025-12-31'
AND category IN ('Electronics', 'Furniture', 'Clothing')
AND price NOT BETWEEN 10000 AND 50000
AND stock > 5
AND rating > 3
AND city NOT IN ('Mumbai', 'Bhopal');


-- 30. Final Combined Query
-- Name starts with S OR contains phone
-- Category Electronics or Furniture
-- Manufacturing date between 2023 and 2026
-- Price between 20000 and 90000
-- Rating at least 4
-- Stock greater than 0
-- City Indore, Pune, or Delhi
-- Brand NOT Samsung, LG, or Sony.

SELECT * FROM products
WHERE (
    product_name LIKE 'S%'
    OR product_name LIKE '%phone%'
)
AND category IN ('Electronics', 'Furniture')
AND manufacturing_date BETWEEN '2023-01-01' AND '2026-12-31'
AND price BETWEEN 20000 AND 90000
AND rating >= 4
AND stock > 0
AND city IN ('Indore', 'Pune', 'Delhi')
AND brand NOT IN ('Samsung', 'LG', 'Sony');