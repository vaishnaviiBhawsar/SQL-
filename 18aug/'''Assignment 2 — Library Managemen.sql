'''Assignment 2 — Library Management System

Design and create a Library Management System database in MySQL.

In this assignment, you have to think and decide everything.

You will be given only the requirements. You must decide:

Database name
Table names
Column names
Data types
Primary keys
Auto-increment
Default values
Appropriate constraints/data types
Scenario

A college wants to develop a Library Management System to maintain information about books, students, and book transactions.

The system should store the following information:

1. Books

The library wants to maintain:

Unique identification of every book
Book title
Author name
ISBN number
Price
Number of available copies
Book category
Publication date
Whether the book is currently available
A short description of the book
2. Students

The library wants to maintain:

Unique identification of every student
Student name
Enrollment/registration number
Age
Gender
Date of birth
Contact number
Email
Whether the student is currently active
Student registration date
3. Book Issue/Return

Whenever a student takes a book from the library, the system should record:

Which student took the book
Which book was issued
Issue date
Expected return date
Actual return date
Fine amount, if applicable
Whether the book has been returned
Any additional remarks
Date and time when the transaction was created
Requirements
Decide how many tables are required.
Decide the name of each table.
Decide all column names yourself.
Select the most appropriate MySQL data type for every column.
Decide which columns should be PRIMARY KEY.
Decide where AUTO_INCREMENT is appropriate.
Decide where UNSIGNED is appropriate.
Decide which fields should use ENUM, BOOLEAN, DATE, DATETIME, DECIMAL, etc.
Create all tables using DDL.
Insert at least 10 books, 10 students and 15 issue/return transactions. '''

-- ============================================
-- ASSIGNMENT 2 - LIBRARY MANAGEMENT SYSTEM
-- ============================================

CREATE DATABASE library_management;

USE library_management;


-- ============================================
-- TABLE 1 - BOOKS
-- ============================================

CREATE TABLE books (
    book_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,

    title VARCHAR(200) NOT NULL,

    author VARCHAR(150) NOT NULL,

    isbn CHAR(13) NOT NULL UNIQUE,

    price DECIMAL(10,2) UNSIGNED NOT NULL,

    available_copies SMALLINT UNSIGNED DEFAULT 0,

    category ENUM(
        'FICTION',
        'SCIENCE',
        'TECHNOLOGY',
        'HISTORY',
        'BIOLOGY',
        'MATHEMATICS',
        'OTHER'
    ) NOT NULL,

    publication_date DATE,

    is_available BOOLEAN DEFAULT TRUE,

    description TEXT
);


-- ============================================
-- TABLE 2 - STUDENTS
-- ============================================

CREATE TABLE students (
    student_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,

    student_name VARCHAR(100) NOT NULL,

    enrollment_number CHAR(10) NOT NULL UNIQUE,

    age TINYINT UNSIGNED,

    gender ENUM(
        'MALE',
        'FEMALE',
        'OTHER'
    ) NOT NULL,

    date_of_birth DATE,

    contact_number CHAR(10),

    email VARCHAR(100) UNIQUE,

    is_active BOOLEAN DEFAULT TRUE,

    registration_date DATE NOT NULL
);


-- ============================================
-- TABLE 3 - BOOK TRANSACTIONS
-- ============================================

CREATE TABLE book_transactions (
    transaction_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,

    student_id INT UNSIGNED NOT NULL,

    book_id INT UNSIGNED NOT NULL,

    issue_date DATE NOT NULL,

    expected_return_date DATE NOT NULL,

    actual_return_date DATE DEFAULT NULL,

    fine_amount DECIMAL(10,2) UNSIGNED DEFAULT 0.00,

    is_returned BOOLEAN DEFAULT FALSE,

    remarks VARCHAR(255),

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (student_id)
        REFERENCES students(student_id),

    FOREIGN KEY (book_id)
        REFERENCES books(book_id)
);


-- ============================================
-- INSERT 10 BOOKS
-- ============================================

INSERT INTO books
(
    title,
    author,
    isbn,
    price,
    available_copies,
    category,
    publication_date,
    is_available,
    description
)

VALUES

(
    'Python Programming',
    'Guido van Rossum',
    '9781234567890',
    850.00,
    5,
    'TECHNOLOGY',
    '2022-01-15',
    TRUE,
    'Introduction to Python programming.'
),

(
    'Database Systems',
    'Raghu Ramakrishnan',
    '9781234567891',
    950.50,
    3,
    'TECHNOLOGY',
    '2021-06-10',
    TRUE,
    'Database concepts and SQL fundamentals.'
),

(
    'Introduction to Biology',
    'Campbell',
    '9781234567892',
    1200.00,
    4,
    'BIOLOGY',
    '2020-08-20',
    TRUE,
    'Basic concepts of biology.'
),

(
    'Data Structures',
    'Mark Allen Weiss',
    '9781234567893',
    1100.75,
    2,
    'TECHNOLOGY',
    '2023-03-12',
    TRUE,
    'Data structures and algorithms.'
),

(
    'Indian History',
    'Bipan Chandra',
    '9781234567894',
    700.00,
    6,
    'HISTORY',
    '2019-05-18',
    TRUE,
    'History of India.'
),

(
    'Calculus Fundamentals',
    'James Stewart',
    '9781234567895',
    1050.00,
    4,
    'MATHEMATICS',
    '2022-09-25',
    TRUE,
    'Fundamental concepts of calculus.'
),

(
    'The Great Adventure',
    'John Smith',
    '9781234567896',
    500.00,
    3,
    'FICTION',
    '2024-01-10',
    TRUE,
    'An adventure fiction story.'
),

(
    'Computer Networks',
    'Andrew Tanenbaum',
    '9781234567897',
    1350.00,
    2,
    'TECHNOLOGY',
    '2021-11-05',
    TRUE,
    'Computer networking concepts.'
),

(
    'Human Genetics',
    'Rick Lewis',
    '9781234567898',
    1450.25,
    0,
    'BIOLOGY',
    '2023-07-15',
    FALSE,
    'Introduction to human genetics.'
),

(
    'Modern Science',
    'Albert Brown',
    '9781234567899',
    900.00,
    5,
    'SCIENCE',
    '2025-02-20',
    TRUE,
    'Modern scientific discoveries.'
);


-- ============================================
-- INSERT 10 STUDENTS
-- ============================================

INSERT INTO students
(
    student_name,
    enrollment_number,
    age,
    gender,
    date_of_birth,
    contact_number,
    email,
    is_active,
    registration_date
)

VALUES

(
    'Aarav Sharma',
    'STU0000001',
    20,
    'MALE',
    '2006-05-10',
    '9876543210',
    'aarav@gmail.com',
    TRUE,
    '2024-07-01'
),

(
    'Sneha Verma',
    'STU0000002',
    21,
    'FEMALE',
    '2005-08-15',
    '9876543211',
    'sneha@gmail.com',
    TRUE,
    '2024-07-01'
),

(
    'Rahul Singh',
    'STU0000003',
    22,
    'MALE',
    '2004-03-20',
    '9876543212',
    'rahul@gmail.com',
    TRUE,
    '2023-07-01'
),

(
    'Priya Patel',
    'STU0000004',
    19,
    'FEMALE',
    '2007-01-12',
    '9876543213',
    'priya@gmail.com',
    TRUE,
    '2025-07-01'
),

(
    'Amit Kumar',
    'STU0000005',
    23,
    'MALE',
    '2003-06-18',
    '9876543214',
    'amit@gmail.com',
    TRUE,
    '2022-07-01'
),

(
    'Neha Gupta',
    'STU0000006',
    20,
    'FEMALE',
    '2006-11-25',
    '9876543215',
    'neha@gmail.com',
    FALSE,
    '2024-07-01'
),

(
    'Rohan Mehta',
    'STU0000007',
    21,
    'MALE',
    '2005-07-10',
    '9876543216',
    'rohan@gmail.com',
    TRUE,
    '2023-07-01'
),

(
    'Simran Kaur',
    'STU0000008',
    22,
    'FEMALE',
    '2004-02-14',
    '9876543217',
    'simran@gmail.com',
    TRUE,
    '2022-07-01'
),

(
    'Manish Yadav',
    'STU0000009',
    24,
    'MALE',
    '2002-04-08',
    '9876543218',
    'manish@gmail.com',
    TRUE,
    '2021-07-01'
),

(
    'Meera Shah',
    'STU0000010',
    20,
    'OTHER',
    '2006-09-30',
    '9876543219',
    'meera@gmail.com',
    TRUE,
    '2025-07-01'
);


-- ============================================
-- INSERT 15 BOOK TRANSACTIONS
-- ============================================

INSERT INTO book_transactions
(
    student_id,
    book_id,
    issue_date,
    expected_return_date,
    actual_return_date,
    fine_amount,
    is_returned,
    remarks
)

VALUES

(1, 1, '2026-01-05', '2026-01-20', '2026-01-18', 0.00, TRUE, 'Returned on time'),

(2, 2, '2026-01-10', '2026-01-25', '2026-01-28', 30.00, TRUE, 'Returned late'),

(3, 3, '2026-02-01', '2026-02-15', NULL, 0.00, FALSE, 'Book not returned'),

(4, 4, '2026-02-05', '2026-02-20', '2026-02-19', 0.00, TRUE, 'Returned successfully'),

(5, 5, '2026-02-10', '2026-02-25', NULL, 0.00, FALSE, 'Still issued'),

(6, 6, '2026-03-01', '2026-03-15', '2026-03-14', 0.00, TRUE, 'Returned on time'),

(7, 7, '2026-03-05', '2026-03-20', '2026-03-25', 50.00, TRUE, 'Late return'),

(8, 8, '2026-03-10', '2026-03-25', NULL, 0.00, FALSE, 'Book currently issued'),

(9, 9, '2026-04-01', '2026-04-15', '2026-04-20', 40.00, TRUE, 'Late due to absence'),

(10, 10, '2026-04-05', '2026-04-20', NULL, 0.00, FALSE, 'Not returned'),

(1, 2, '2026-04-10', '2026-04-25', '2026-04-23', 0.00, TRUE, 'Returned early'),

(2, 3, '2026-05-01', '2026-05-15', NULL, 0.00, FALSE, 'Currently issued'),

(3, 4, '2026-05-05', '2026-05-20', '2026-05-19', 0.00, TRUE, 'Returned'),

(4, 5, '2026-06-01', '2026-06-15', NULL, 0.00, FALSE, 'Currently issued'),

(5, 6, '2026-06-05', '2026-06-20', '2026-06-22', 20.00, TRUE, 'Returned late');


-- ============================================
-- VERIFY DATA
-- ============================================

SELECT * FROM books;

SELECT * FROM students;

SELECT * FROM book_transactions;


-- ============================================
-- OPTIONAL: VIEW TRANSACTIONS WITH DETAILS
-- ============================================

SELECT
    bt.transaction_id,
    s.student_name,
    b.title AS book_title,
    bt.issue_date,
    bt.expected_return_date,
    bt.actual_return_date,
    bt.fine_amount,
    bt.is_returned,
    bt.remarks
FROM book_transactions bt
JOIN students s
ON bt.student_id = s.student_id
JOIN books b
ON bt.book_id = b.book_id;


-- ============================================
-- FINAL VERIFICATION
-- ============================================

SHOW DATABASES;

USE employee_management;
SHOW TABLES;
DESC employees;

USE library_management;
SHOW TABLES;

DESC books;
DESC students;
DESC book_transactions;