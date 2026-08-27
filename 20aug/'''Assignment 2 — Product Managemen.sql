'''Assignment 2 — Product Management System
Table: products

Create a products table with:

Product ID
Product Name
Category
Brand
City
Price
Stock
Rating
Manufacturing Date
Data Requirements

Insert at least 8 products.

Your data should include:

Categories: Electronics, Furniture, Clothing, Grocery
At least 5 different brands
Cities: Indore, Bhopal, Pune, Mumbai, Delhi
Price: ₹500 to ₹1,00,000
Stock: 0 to 100
Rating: 1 to 5
Manufacturing dates from 2021 to 2026
Some products with the same category
Some products with the same brand
Some similar prices
Some products with zero stock '''

SQL Queries

-- ============================================
-- ASSIGNMENT 2 - PRODUCT MANAGEMENT SYSTEM
-- ============================================

CREATE DATABASE product_management;

USE product_management;


-- ============================================
-- CREATE PRODUCTS TABLE
-- ============================================

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    brand VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    rating DECIMAL(2,1) NOT NULL,
    manufacturing_date DATE NOT NULL
);


-- ============================================
-- INSERT SAMPLE DATA
-- ============================================

INSERT INTO products
(product_name, category, brand, city, price, stock, rating, manufacturing_date)

VALUES

('Samsung Galaxy S24', 'Electronics', 'Samsung', 'Indore',
75000, 25, 4.5, '2025-02-10'),

('LG Smart TV', 'Electronics', 'LG', 'Mumbai',
55000, 15, 4.2, '2024-06-15'),

('Sony Headphones', 'Electronics', 'Sony', 'Pune',
12000, 50, 4.0, '2023-08-20'),

('Dell Laptop', 'Electronics', 'Dell', 'Delhi',
85000, 10, 4.7, '2025-01-05'),

('Samsung Washing Machine', 'Electronics', 'Samsung', 'Bhopal',
40000, 0, 4.1, '2022-04-18'),

('Wooden Sofa', 'Furniture', 'Ikea', 'Indore',
45000, 20, 4.3, '2024-03-12'),

('Dining Table', 'Furniture', 'Ikea', 'Pune',
35000, 8, 3.8, '2023-07-25'),

('Office Chair', 'Furniture', 'Godrej', 'Delhi',
15000, 60, 4.0, '2022-09-10'),

('Nike Shoes', 'Clothing', 'Nike', 'Mumbai',
8000, 35, 4.5, '2025-05-20'),

('Adidas T-Shirt', 'Clothing', 'Adidas', 'Bhopal',
2500, 80, 3.9, '2024-11-11'),

('Basmati Rice', 'Grocery', 'India Gate', 'Indore',
1200, 100, 4.4, '2023-02-15'),

('Organic Honey', 'Grocery', 'Patanjali', 'Delhi',
500, 0, 4.0, '2021-12-01');


-- ============================================
-- SQL QUERIES
-- ============================================


-- 1. Price > 30000 AND rating >= 4
-- Exclude Mumbai

SELECT * FROM products
WHERE price > 30000
AND rating >= 4
AND city != 'Mumbai';


-- 2. Stock < 20 OR price > 75000
-- Category is not Grocery

SELECT * FROM products
WHERE (stock < 20 OR price > 75000)
AND category != 'Grocery';


-- 3. Price between 15000 and 60000
-- Rating between 3 and 5
-- Manufactured after 2022

SELECT * FROM products
WHERE price BETWEEN 15000 AND 60000
AND rating BETWEEN 3 AND 5
AND manufacturing_date > '2022-12-31';


-- 4. Products from Indore, Pune, or Delhi
-- Price > 20000
-- Stock is not 0

SELECT * FROM products
WHERE city IN ('Indore', 'Pune', 'Delhi')
AND price > 20000
AND stock != 0;


-- 5. Electronics or Furniture using IN

SELECT * FROM products
WHERE category IN ('Electronics', 'Furniture');


-- 6. Electronics, Clothing, or Grocery using IN

SELECT * FROM products
WHERE category IN ('Electronics', 'Clothing', 'Grocery');


-- 7. Products not from Indore or Bhopal

SELECT * FROM products
WHERE city NOT IN ('Indore', 'Bhopal');


-- 8. Brand is not Samsung, LG, or Sony

SELECT * FROM products
WHERE brand NOT IN ('Samsung', 'LG', 'Sony');


-- 9. Price between 10000 and 50000

SELECT * FROM products
WHERE price BETWEEN 10000 AND 50000;


-- 10. Stock between 20 and 60

SELECT * FROM products
WHERE stock BETWEEN 20 AND 60;


-- 11. Rating between 3 and 5
-- Price > 20000

SELECT * FROM products
WHERE rating BETWEEN 3 AND 5
AND price > 20000;


-- 12. Manufactured between 2023 and 2025
-- Category Electronics or Furniture

SELECT * FROM products
WHERE manufacturing_date BETWEEN '2023-01-01' AND '2025-12-31'
AND category IN ('Electronics', 'Furniture');


-- 13. Product name starts with S

SELECT * FROM products
WHERE product_name LIKE 'S%';


-- 14. Product name contains phone

SELECT * FROM products
WHERE product_name LIKE '%phone%';


-- 15. Brand ends with a

SELECT * FROM products
WHERE brand LIKE '%a';


-- 16. Products from Indore or Pune
-- Price between 20000 and 70000
-- Rating >= 4

SELECT * FROM products
WHERE city IN ('Indore', 'Pune')
AND price BETWEEN 20000 AND 70000
AND rating >= 4;


-- 17. Electronics or Furniture
-- Stock > 10
-- Price < 60000
-- Manufacturing date after 2022

SELECT * FROM products
WHERE category IN ('Electronics', 'Furniture')
AND stock > 10
AND price < 60000
AND manufacturing_date > '2022-12-31';


-- 18. Name contains letter a
-- Price NOT between 10000 and 50000
-- Stock > 5

SELECT * FROM products
WHERE product_name LIKE '%a%'
AND price NOT BETWEEN 10000 AND 50000
AND stock > 5;


-- 19. Manufactured between 2022 and 2025
-- Electronics, Clothing, or Furniture
-- Rating > 3
-- City is not Mumbai

SELECT * FROM products
WHERE manufacturing_date BETWEEN '2022-01-01' AND '2025-12-31'
AND category IN ('Electronics', 'Clothing', 'Furniture')
AND rating > 3
AND city != 'Mumbai';


-- 20. Name starts with S or M
-- City is not Indore or Mumbai
-- Price between 15000 and 80000
-- Rating >= 4
-- Manufacturing date after 2023

SELECT * FROM products
WHERE (product_name LIKE 'S%'
OR product_name LIKE 'M%')
AND city NOT IN ('Indore', 'Mumbai')
AND price BETWEEN 15000 AND 80000
AND rating >= 4
AND manufacturing_date > '2023-12-31';