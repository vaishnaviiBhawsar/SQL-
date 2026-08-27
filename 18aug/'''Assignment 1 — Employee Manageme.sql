'''Assignment 1 — Employee Management System
Objective

Create an Employee Management System database and design tables that cover the MySQL data types taught so far.

Use all the following data types at least once.

TINYINT, SMALLINT, MEDIUMINT, INT, BIGINT, DECIMAL, FLOAT, DOUBLE, CHAR, VARCHAR, TINYTEXT, TEXT, MEDIUMTEXT, LONGTEXT, ENUM,
SET, DATE, TIME, DATETIME, TIMESTAMP, YEAR, BOOLEAN

Also use:

PRIMARY KEY
AUTO_INCREMENT
UNSIGNED
DEFAULT CURRENT_TIMESTAMP
ON UPDATE CURRENT_TIMESTAMP


Part 1 — Create Database

Create a database named:

employee_management

Select the database.

Part 2 — Create employees Table

Create a table named:

employees

Use the following columns:

# Column Name Requirement
1 employee_id Employee unique ID; PRIMARY KEY + AUTO_INCREMENT
2 employee_code Fixed-length employee code
3 employee_name Employee full name
4 age Employee age; should not allow negative values
5 number_of_children Number of children
6 experience_months Total experience in months
7 salary Employee annual salary with exact decimal precision
8 performance_score Employee performance score with approximate decimal value
9 productivity_score Higher-precision approximate decimal value
10 department_id Department identification number
11 employee_status Employment status from predefined values
12 skills Employee can have multiple skills from predefined values
13 gender Employee gender from predefined values
14 date_of_birth Employee date of birth
15 joining_date Date employee joined company
16 login_time Daily office login time
17 interview_datetime Date and time of employee interview
18 birth_year Employee birth year
19 is_active Whether employee is currently active
20 short_note Very small text information
21 employee_description Employee description
22 training_history Larger training-related text
23 employee_profile Very large employee information
24 created_at Automatically store record creation date/time
25 updated_at Automatically update when record is modified

Important

You have to decide the appropriate data type for every column.

Do not blindly use VARCHAR everywhere.

For example:

"Employee can have multiple skills from a predefined list."

You should decide which MySQL datatype is appropriate.

Part 3 — Insert Data

Insert at least 15 employees.

Your data must satisfy the following requirements:

Employee ID

Do not manually provide employee_id.

Let AUTO_INCREMENT generate it.

Employee Code

Use fixed-length codes such as:

EMP001
EMP002
EMP003
Age

Use different realistic ages.

Include employees between approximately 22–55 years.

Numeric Data

Use different values for:

Number of children
Experience in months
Salary
Performance score
Productivity score

Include decimal salary values such as:

52500.50
78500.75
125000.25
Employee Status

Use all predefined statuses that you decide while creating the ENUM.

For example:

ACTIVE
INACTIVE
ON_LEAVE
RESIGNED
Skills

Use multiple combinations.

For example:

JAVA
PYTHON,MYSQL
JAVA,MYSQL
PYTHON,REACT,AWS
JAVA,PYTHON,MYSQL
Gender

Use all values defined in your ENUM.

Dates

Use different:

Birth dates
Joining dates
Time

Use different employee login times.

Date + Time

Insert different interview date/time values.

Year

Use different birth years.

Boolean

Insert both:

TRUE
FALSE
Text

Provide different values for:

Short note
Employee description
Training history
Employee profile
Part 4 — TIMESTAMP Requirement

For created_at:

The employee creation date and time should automatically be captured by MySQL.

For updated_at:

The employee modification date and time should automatically change whenever the employee record is updated.

Then:

Insert an employee.
Check created_at and updated_at.
Update the employee's name.
Check both timestamps again.
Verify that created_at remains unchanged.
Verify that updated_at changes.

This follows the timestamp behavior covered in your notes.

Part 5 — DDL Operations

After creating and inserting data into employees, perform the following operations.

ALTER TABLE
Add a column:
phone_number
Add a column:
email
Modify the size of employee_name.
Modify the size of employee_code.
Rename short_note to:
employee_note
Drop the email column.
Drop the phone_number column.
AUTO_INCREMENT using ALTER

Create another table:

employee_documents

Initially create document_id as a normal integer column.

Then use ALTER TABLE to make document_id an AUTO_INCREMENT column.

CREATE TABLE AS SELECT

Create:

employee_backup

using the existing employees table.

Copy the employee data into it.

TRUNCATE

Create:

employee_test

Insert some records.

Then:

Display the records.
TRUNCATE the table.
Display the records again.
Verify that the table still exists.
DROP

Finally:

Drop employee_test.
Drop employee_documents.
Verify the tables using SHOW TABLES.
Part 6 — Verification

Execute:

SHOW DATABASES;
SHOW TABLES;
DESC employees;
SHOW CREATE TABLE employees;

Then verify that your employees table contains all the required data types.


-- ============================================
-- ASSIGNMENT 1 - EMPLOYEE MANAGEMENT SYSTEM
-- ============================================

CREATE DATABASE employee_management;

USE employee_management;


-- ============================================
-- PART 2 - CREATE EMPLOYEES TABLE
-- ============================================

CREATE TABLE employees (
    employee_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,

    employee_code CHAR(6) NOT NULL,

    employee_name VARCHAR(100) NOT NULL,

    age TINYINT UNSIGNED NOT NULL,

    number_of_children SMALLINT UNSIGNED DEFAULT 0,

    experience_months MEDIUMINT UNSIGNED NOT NULL,

    salary DECIMAL(12,2) NOT NULL,

    performance_score FLOAT,

    productivity_score DOUBLE,

    department_id BIGINT UNSIGNED,

    employee_status ENUM(
        'ACTIVE',
        'INACTIVE',
        'ON_LEAVE',
        'RESIGNED'
    ) NOT NULL,

    skills SET(
        'JAVA',
        'PYTHON',
        'MYSQL',
        'REACT',
        'AWS',
        'SPRING'
    ),

    gender ENUM(
        'MALE',
        'FEMALE',
        'OTHER'
    ) NOT NULL,

    date_of_birth DATE,

    joining_date DATE,

    login_time TIME,

    interview_datetime DATETIME,

    birth_year YEAR,

    is_active BOOLEAN DEFAULT TRUE,

    short_note TINYTEXT,

    employee_description TEXT,

    training_history MEDIUMTEXT,

    employee_profile LONGTEXT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    ON UPDATE CURRENT_TIMESTAMP
);


-- ============================================
-- PART 3 - INSERT 15 EMPLOYEES
-- employee_id is NOT inserted manually
-- ============================================

INSERT INTO employees
(
    employee_code,
    employee_name,
    age,
    number_of_children,
    experience_months,
    salary,
    performance_score,
    productivity_score,
    department_id,
    employee_status,
    skills,
    gender,
    date_of_birth,
    joining_date,
    login_time,
    interview_datetime,
    birth_year,
    is_active,
    short_note,
    employee_description,
    training_history,
    employee_profile
)

VALUES

(
    'EMP001',
    'Aarav Sharma',
    28,
    0,
    60,
    52500.50,
    4.5,
    92.456789,
    101,
    'ACTIVE',
    'JAVA,MYSQL',
    'MALE',
    '1998-05-12',
    '2023-06-10',
    '09:00:00',
    '2023-05-15 10:30:00',
    1998,
    TRUE,
    'Good performer',
    'Works as a software developer.',
    'Completed Java and MySQL training.',
    'Experienced software developer with strong backend development skills.'
),

(
    'EMP002',
    'Sneha Verma',
    26,
    0,
    36,
    78500.75,
    4.7,
    95.678912,
    102,
    'ACTIVE',
    'PYTHON,MYSQL',
    'FEMALE',
    '2000-08-20',
    '2024-01-15',
    '09:15:00',
    '2023-12-20 11:00:00',
    2000,
    TRUE,
    'Python expert',
    'Works on data analysis projects.',
    'Completed Python and database training.',
    'Data-focused employee with strong Python and MySQL knowledge.'
),

(
    'EMP003',
    'Rahul Singh',
    35,
    2,
    120,
    125000.25,
    4.9,
    98.123456,
    103,
    'ACTIVE',
    'JAVA,PYTHON,MYSQL',
    'MALE',
    '1991-02-10',
    '2020-03-20',
    '08:45:00',
    '2020-02-01 14:00:00',
    1991,
    TRUE,
    'Senior employee',
    'Senior software engineer.',
    'Completed leadership and cloud training.',
    'Highly experienced employee managing multiple technical projects.'
),

(
    'EMP004',
    'Priya Patel',
    30,
    1,
    84,
    68000.50,
    4.2,
    88.456789,
    104,
    'ON_LEAVE',
    'PYTHON,REACT,AWS',
    'FEMALE',
    '1996-07-18',
    '2021-08-10',
    '09:30:00',
    '2021-07-01 10:00:00',
    1996,
    FALSE,
    'Currently on leave',
    'Frontend and cloud developer.',
    'Completed React and AWS training.',
    'Developer with experience in frontend development and cloud platforms.'
),

(
    'EMP005',
    'Amit Kumar',
    40,
    2,
    180,
    95000.00,
    4.6,
    94.234567,
    105,
    'ACTIVE',
    'JAVA,SPRING',
    'MALE',
    '1986-03-25',
    '2022-05-12',
    '08:30:00',
    '2022-04-15 09:30:00',
    1986,
    TRUE,
    'Team lead',
    'Leads backend development team.',
    'Completed advanced Java and leadership training.',
    'Experienced team leader specializing in Java and Spring applications.'
),

(
    'EMP006',
    'Neha Gupta',
    24,
    0,
    24,
    45000.25,
    3.9,
    82.345678,
    106,
    'INACTIVE',
    'MYSQL,REACT',
    'FEMALE',
    '2002-11-11',
    '2025-02-10',
    '10:00:00',
    '2025-01-20 12:00:00',
    2002,
    FALSE,
    'Inactive employee',
    'Worked on frontend projects.',
    'Completed basic web development training.',
    'Junior developer with frontend and database experience.'
),

(
    'EMP007',
    'Rohan Mehta',
    32,
    1,
    96,
    88000.75,
    4.4,
    91.567891,
    107,
    'ACTIVE',
    'JAVA,MYSQL,SPRING',
    'MALE',
    '1994-09-05',
    '2021-04-18',
    '09:10:00',
    '2021-03-10 11:30:00',
    1994,
    TRUE,
    'Backend developer',
    'Works on enterprise applications.',
    'Completed Spring framework training.',
    'Backend specialist with experience in enterprise software.'
),

(
    'EMP008',
    'Simran Kaur',
    27,
    0,
    48,
    62000.50,
    4.1,
    86.987654,
    108,
    'RESIGNED',
    'PYTHON,REACT',
    'FEMALE',
    '1999-06-14',
    '2022-09-01',
    '09:20:00',
    '2022-08-10 10:15:00',
    1999,
    FALSE,
    'Former employee',
    'Worked as a web developer.',
    'Completed Python and React training.',
    'Former employee with experience in web development.'
),

(
    'EMP009',
    'Manish Yadav',
    45,
    3,
    240,
    110000.00,
    4.8,
    97.345678,
    109,
    'ACTIVE',
    'JAVA,AWS,SPRING',
    'MALE',
    '1981-01-20',
    '2020-11-25',
    '08:00:00',
    '2020-10-05 09:00:00',
    1981,
    TRUE,
    'Senior architect',
    'Designs large software systems.',
    'Completed architecture and AWS training.',
    'Senior technology architect with extensive industry experience.'
),

(
    'EMP010',
    'Anjali Jain',
    29,
    1,
    72,
    72000.25,
    4.3,
    89.234567,
    110,
    'ACTIVE',
    'PYTHON,MYSQL,AWS',
    'FEMALE',
    '1997-04-16',
    '2023-03-14',
    '09:05:00',
    '2023-02-20 10:45:00',
    1997,
    TRUE,
    'Cloud developer',
    'Works with cloud applications.',
    'Completed AWS and Python training.',
    'Cloud-focused developer with database and Python expertise.'
),

(
    'EMP011',
    'Sanjay Patel',
    38,
    2,
    156,
    105000.50,
    4.7,
    96.456789,
    111,
    'ON_LEAVE',
    'JAVA,PYTHON',
    'MALE',
    '1988-12-30',
    '2024-07-01',
    '08:50:00',
    '2024-06-10 13:00:00',
    1988,
    FALSE,
    'Senior developer',
    'Works on multiple programming projects.',
    'Completed advanced programming training.',
    'Senior developer with expertise in Java and Python.'
),

(
    'EMP012',
    'Meera Shah',
    22,
    0,
    12,
    38000.50,
    3.5,
    78.234567,
    112,
    'ACTIVE',
    'REACT',
    'FEMALE',
    '2004-05-05',
    '2026-01-10',
    '10:15:00',
    '2025-12-15 11:45:00',
    2004,
    TRUE,
    'Junior employee',
    'Works as a junior frontend developer.',
    'Completed React training.',
    'Entry-level employee learning modern frontend technologies.'
),

(
    'EMP013',
    'Akash Verma',
    33,
    2,
    108,
    99000.99,
    4.6,
    93.567891,
    113,
    'ACTIVE',
    'JAVA,MYSQL,AWS',
    'MALE',
    '1993-03-17',
    '2022-02-22',
    '08:40:00',
    '2022-01-30 10:00:00',
    1993,
    TRUE,
    'Experienced engineer',
    'Works on cloud backend systems.',
    'Completed AWS and Java training.',
    'Software engineer experienced in backend and cloud development.'
),

(
    'EMP014',
    'Kavita Singh',
    50,
    3,
    300,
    115000.25,
    4.9,
    99.123456,
    114,
    'RESIGNED',
    'PYTHON,AWS',
    'OTHER',
    '1976-08-08',
    '2021-01-15',
    '08:15:00',
    '2020-12-10 15:00:00',
    1976,
    FALSE,
    'Former manager',
    'Previously managed technology teams.',
    'Completed management and cloud training.',
    'Highly experienced former manager with technical and leadership skills.'
),

(
    'EMP015',
    'Mohit Sharma',
    55,
    4,
    360,
    120000.75,
    4.8,
    97.987654,
    115,
    'ACTIVE',
    'JAVA,PYTHON,MYSQL,SPRING',
    'MALE',
    '1971-09-19',
    '2020-06-01',
    '07:45:00',
    '2020-05-10 09:15:00',
    1971,
    TRUE,
    'Technical director',
    'Responsible for technical strategy.',
    'Completed executive leadership training.',
    'Senior technical professional with extensive software development experience.'
);


-- ============================================
-- CHECK INSERTED DATA
-- ============================================

SELECT * FROM employees;


-- ============================================
-- PART 4 - TIMESTAMP TEST
-- ============================================

INSERT INTO employees
(
    employee_code,
    employee_name,
    age,
    number_of_children,
    experience_months,
    salary,
    performance_score,
    productivity_score,
    department_id,
    employee_status,
    skills,
    gender,
    date_of_birth,
    joining_date,
    login_time,
    interview_datetime,
    birth_year,
    is_active,
    short_note,
    employee_description,
    training_history,
    employee_profile
)

VALUES
(
    'EMP016',
    'Test Employee',
    25,
    0,
    24,
    50000.50,
    4.0,
    85.123456,
    116,
    'ACTIVE',
    'JAVA,PYTHON',
    'OTHER',
    '2001-01-10',
    '2026-02-01',
    '09:00:00',
    '2026-01-20 10:30:00',
    2001,
    TRUE,
    'Timestamp test',
    'Testing timestamp behavior.',
    'Basic training completed.',
    'Employee created to test created_at and updated_at.'
);


-- Check timestamps before update

SELECT employee_id,
       employee_name,
       created_at,
       updated_at
FROM employees
WHERE employee_code = 'EMP016';


-- Update employee name

UPDATE employees
SET employee_name = 'Updated Test Employee'
WHERE employee_code = 'EMP016';


-- Check timestamps again

SELECT employee_id,
       employee_name,
       created_at,
       updated_at
FROM employees
WHERE employee_code = 'EMP016';


-- ============================================
-- PART 5 - DDL OPERATIONS
-- ============================================


-- Add phone_number

ALTER TABLE employees
ADD COLUMN phone_number VARCHAR(15);


-- Add email

ALTER TABLE employees
ADD COLUMN email VARCHAR(100);


-- Modify employee_name size

ALTER TABLE employees
MODIFY employee_name VARCHAR(150) NOT NULL;


-- Modify employee_code size

ALTER TABLE employees
MODIFY employee_code CHAR(10) NOT NULL;


-- Rename short_note to employee_note

ALTER TABLE employees
RENAME COLUMN short_note TO employee_note;


-- Drop email column

ALTER TABLE employees
DROP COLUMN email;


-- Drop phone_number column

ALTER TABLE employees
DROP COLUMN phone_number;


-- ============================================
-- EMPLOYEE DOCUMENTS TABLE
-- document_id initially normal INT
-- ============================================

CREATE TABLE employee_documents (
    document_id INT NOT NULL,
    employee_id INT UNSIGNED,
    document_name VARCHAR(100),
    document_type VARCHAR(50)
);


-- Make document_id AUTO_INCREMENT

ALTER TABLE employee_documents
MODIFY document_id INT AUTO_INCREMENT PRIMARY KEY;


-- ============================================
-- CREATE TABLE AS SELECT
-- EMPLOYEE BACKUP
-- ============================================

CREATE TABLE employee_backup
AS
SELECT * FROM employees;


-- Check backup

SELECT * FROM employee_backup;


-- ============================================
-- TRUNCATE OPERATION
-- ============================================

CREATE TABLE employee_test (
    test_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50)
);


INSERT INTO employee_test
(employee_name, department)

VALUES
('Test Employee 1', 'IT'),
('Test Employee 2', 'HR'),
('Test Employee 3', 'Finance');


-- Display records

SELECT * FROM employee_test;


-- Remove all records

TRUNCATE TABLE employee_test;


-- Display records again

SELECT * FROM employee_test;


-- Verify table still exists

SHOW TABLES;


-- ============================================
-- DROP OPERATIONS
-- ============================================

DROP TABLE employee_test;

DROP TABLE employee_documents;


-- Verify remaining tables

SHOW TABLES;


-- ============================================
-- PART 6 - VERIFICATION
-- ============================================

SHOW DATABASES;

SHOW TABLES;

DESC employees;

SHOW CREATE TABLE employees;


