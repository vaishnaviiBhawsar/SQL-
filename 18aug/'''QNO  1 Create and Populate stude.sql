'''QNO  1: Create and Populate students Table
Columns:

id INT

name VARCHAR(100)

age INT

gender VARCHAR(10)

address VARCHAR(150)

phone VARCHAR(15)

email VARCHAR(100)

Task:

Insert 5 different student records with dummy data.

QNO  2: Create and Populate books Table
Columns:

book_id INT

title VARCHAR(150)

author VARCHAR(100)

genre VARCHAR(50)

publication_year INT

price DECIMAL(6,2)

publisher VARCHAR(100)

Task:

Insert 4 book records.

QNO  3: ALTER students Table
Task:

Add a column dob DATE

Rename column phone to mobile_number

Modify column age to SMALLINT

Drop column email

QNO  4: RENAME Table
Task:

Rename books table to library_books

QNO  5: TRUNCATE Table
Task:

Truncate all data from students table

QNO  6: DROP Table
Task:

Drop the library_books table

QNO  7: Create and Insert into products Table
Columns:

product_id INT

product_name VARCHAR(100)

category VARCHAR(50)

price DECIMAL(7,2)

stock_quantity INT

supplier_name VARCHAR(100)

manufacture_date DATE

expiry_date DATE

Task:

Insert 6 products (some with expiry dates, some without)

QNO  8: Create and Insert into employees Table
Columns:

emp_id INT

emp_name VARCHAR(100)

gender VARCHAR(10)

dob DATE

department VARCHAR(100)

position VARCHAR(100)

salary DECIMAL(8,2)

joining_date DATE

phone VARCHAR(15)

Task:

Insert 5 employee records




QNO 9:


You are designing a system to store movie reviews. Start with basic details and then evolve the table structure using ALTER, RENAME, TRUNCATE, and DROP, and perform INSERT operations at each stage.

 Initial Table Creation:
Create a table movie_reviews with the following columns:

review_id INT

movie_title VARCHAR(150)

reviewer_name VARCHAR(100)

rating DECIMAL(2,1)

review_text TEXT

 Insert 3 sample movie reviews

Step 1: Add More Columns (ALTER)
Add the following columns using ALTER:

review_date DATE

platform VARCHAR(50) — (e.g., IMDb, Rotten Tomatoes)

likes INT

 Insert 2 more rows with new columns

 Step 2: Rename a Column
Rename the column reviewer_name to critic_name

 Step 3: Modify Column Types
Modify:

rating to DECIMAL(3,1)

movie_title to VARCHAR(200)

 Step 4: Drop an Unnecessary Column
Drop the likes column

 Step 5: Truncate the Table
Truncate the table so all data is removed

 Step 6: Rename the Table
Rename movie_reviews to archived_reviews

 Step 7: Drop the Table
Finally, drop the archived_reviews table'''

-- =========================================
-- QNO 1: CREATE AND POPULATE STUDENTS TABLE
-- =========================================

CREATE DATABASE college_db;

USE college_db;

CREATE TABLE students (
    id INT,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    address VARCHAR(150),
    phone VARCHAR(15),
    email VARCHAR(100)
);

INSERT INTO students
VALUES
(1, 'Aarav Sharma', 20, 'Male', 'Indore', '9876543210', 'aarav@gmail.com'),
(2, 'Sneha Verma', 21, 'Female', 'Bhopal', '9876543211', 'sneha@gmail.com'),
(3, 'Rahul Singh', 22, 'Male', 'Pune', '9876543212', 'rahul@gmail.com'),
(4, 'Priya Patel', 19, 'Female', 'Mumbai', '9876543213', 'priya@gmail.com'),
(5, 'Amit Kumar', 23, 'Male', 'Delhi', '9876543214', 'amit@gmail.com');

SELECT * FROM students;


-- =========================================
-- QNO 2: CREATE AND POPULATE BOOKS TABLE
-- =========================================

CREATE TABLE books (
    book_id INT,
    title VARCHAR(150),
    author VARCHAR(100),
    genre VARCHAR(50),
    publication_year INT,
    price DECIMAL(6,2),
    publisher VARCHAR(100)
);

INSERT INTO books
VALUES
(1, 'The Alchemist', 'Paulo Coelho', 'Fiction', 1988, 499.00, 'HarperCollins'),
(2, 'Python Programming', 'Guido Rossum', 'Technology', 2022, 799.00, 'Tech Books'),
(3, 'Atomic Habits', 'James Clear', 'Self Help', 2018, 650.00, 'Penguin'),
(4, 'Wings of Fire', 'A.P.J. Abdul Kalam', 'Biography', 1999, 450.00, 'Universities Press');

SELECT * FROM books;


-- =========================================
-- QNO 3: ALTER STUDENTS TABLE
-- =========================================

-- Add dob column

ALTER TABLE students
ADD COLUMN dob DATE;


-- Rename phone to mobile_number

ALTER TABLE students
RENAME COLUMN phone TO mobile_number;


-- Modify age to SMALLINT

ALTER TABLE students
MODIFY COLUMN age SMALLINT;


-- Drop email column

ALTER TABLE students
DROP COLUMN email;


DESC students;


-- =========================================
-- QNO 4: RENAME BOOKS TABLE
-- =========================================

RENAME TABLE books TO library_books;

SHOW TABLES;


-- =========================================
-- QNO 5: TRUNCATE STUDENTS TABLE
-- =========================================

-- Check data before truncate

SELECT * FROM students;


-- Remove all records

TRUNCATE TABLE students;


-- Check data after truncate

SELECT * FROM students;


-- =========================================
-- QNO 6: DROP LIBRARY_BOOKS TABLE
-- =========================================

DROP TABLE library_books;

SHOW TABLES;


-- =========================================
-- QNO 7: CREATE AND INSERT PRODUCTS TABLE
-- =========================================

CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(7,2),
    stock_quantity INT,
    supplier_name VARCHAR(100),
    manufacture_date DATE,
    expiry_date DATE
);

INSERT INTO products
VALUES
(1, 'Laptop', 'Electronics', 65000.00, 10, 'Dell Supplier', '2025-01-10', NULL),

(2, 'Mobile Phone', 'Electronics', 30000.00, 25, 'Samsung Supplier', '2025-02-15', NULL),

(3, 'Milk', 'Grocery', 60.00, 100, 'Amul Supplier', '2026-01-01', '2026-01-10'),

(4, 'Bread', 'Grocery', 45.00, 50, 'Britannia Supplier', '2026-01-02', '2026-01-07'),

(5, 'Shampoo', 'Personal Care', 350.00, 40, 'Loreal Supplier', '2025-10-01', '2027-10-01'),

(6, 'Office Chair', 'Furniture', 8500.00, 15, 'Furniture Hub', '2024-06-15', NULL);

SELECT * FROM products;


-- =========================================
-- QNO 8: CREATE AND INSERT EMPLOYEES TABLE
-- =========================================

CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(100),
    gender VARCHAR(10),
    dob DATE,
    department VARCHAR(100),
    position VARCHAR(100),
    salary DECIMAL(8,2),
    joining_date DATE,
    phone VARCHAR(15)
);

INSERT INTO employees
VALUES
(1, 'Aarav Sharma', 'Male', '1995-05-10', 'IT', 'Software Developer', 65000.00, '2022-01-10', '9876543210'),

(2, 'Sneha Verma', 'Female', '1998-08-15', 'HR', 'HR Executive', 50000.00, '2023-03-15', '9876543211'),

(3, 'Rahul Singh', 'Male', '1992-02-20', 'Finance', 'Accountant', 60000.00, '2021-07-01', '9876543212'),

(4, 'Priya Patel', 'Female', '1997-11-12', 'Marketing', 'Marketing Manager', 75000.00, '2020-09-20', '9876543213'),

(5, 'Amit Kumar', 'Male', '1990-04-18', 'IT', 'Team Lead', 90000.00, '2019-06-10', '9876543214');

SELECT * FROM employees;


-- =========================================
-- QNO 9: MOVIE REVIEWS TABLE
-- =========================================


-- INITIAL TABLE CREATION

CREATE TABLE movie_reviews (
    review_id INT,
    movie_title VARCHAR(150),
    reviewer_name VARCHAR(100),
    rating DECIMAL(2,1),
    review_text TEXT
);


-- INSERT 3 SAMPLE MOVIE REVIEWS

INSERT INTO movie_reviews
VALUES
(1, 'Inception', 'Rahul Sharma', 9.0, 'Amazing science fiction movie.'),

(2, 'Interstellar', 'Priya Verma', 9.5, 'A visually stunning movie with an emotional story.'),

(3, 'Titanic', 'Amit Singh', 8.5, 'A classic romantic movie.');


SELECT * FROM movie_reviews;


-- =========================================
-- STEP 1: ADD MORE COLUMNS
-- =========================================

ALTER TABLE movie_reviews
ADD COLUMN review_date DATE,
ADD COLUMN platform VARCHAR(50),
ADD COLUMN likes INT;


-- INSERT 2 MORE ROWS WITH NEW COLUMNS

INSERT INTO movie_reviews
VALUES
(4, 'Avengers Endgame', 'Sneha Gupta', 9.0,
 'Best superhero movie.', '2026-01-10', 'IMDb', 500),

(5, 'The Dark Knight', 'Rohan Mehta', 9.5,
 'Excellent performance and story.', '2026-02-15', 'Rotten Tomatoes', 750);


SELECT * FROM movie_reviews;


-- =========================================
-- STEP 2: RENAME reviewer_name
-- =========================================

ALTER TABLE movie_reviews
RENAME COLUMN reviewer_name TO critic_name;


-- =========================================
-- STEP 3: MODIFY COLUMN TYPES
-- =========================================

ALTER TABLE movie_reviews
MODIFY COLUMN rating DECIMAL(3,1);


ALTER TABLE movie_reviews
MODIFY COLUMN movie_title VARCHAR(200);


-- =========================================
-- STEP 4: DROP likes COLUMN
-- =========================================

ALTER TABLE movie_reviews
DROP COLUMN likes;


DESC movie_reviews;


-- =========================================
-- STEP 5: TRUNCATE TABLE
-- =========================================

-- Check records before truncate

SELECT * FROM movie_reviews;


-- Remove all records

TRUNCATE TABLE movie_reviews;


-- Check records after truncate

SELECT * FROM movie_reviews;


-- =========================================
-- STEP 6: RENAME TABLE
-- =========================================

RENAME TABLE movie_reviews TO archived_reviews;


SHOW TABLES;


-- =========================================
-- STEP 7: DROP TABLE
-- =========================================

DROP TABLE archived_reviews;


-- FINAL CHECK

SHOW TABLES;