'''# Assignment 3 — Employee Management System

**Use the `employees` table and sample data given below.**

## Table Structure

Create an `employees` table with the following columns:

* `employee_id`
* `employee_name`
* `department`
* `city`
* `salary`
* `joining_date`
* `experience`
* `age`
* `gender`
* `employment_type`
* `skills`
* `email`
* `manager_id`

### Data Type Requirements

Use:

* `ENUM` for `gender`
* `ENUM` for `employment_type`
* `SET` for `skills`
* `DATE` for `joining_date`
* `DATE` for any other date column if required
* Allow appropriate columns such as `email` and `manager_id` to contain `NULL`

Insert **at least 10 employees** with different values.

Your data must include:

* At least SOME different departments
* At least SOME different cities
* Some employees with `NULL` email
* Some employees with `NULL` manager_id
* Different employment types such as `FULL_TIME`, `PART_TIME`, `CONTRACT`, `INTERN`
* Different combinations of skills using `SET`
* Employees who joined before 2022
* Employees who joined between 2022 and 2024
* Employees who joined after 2024
* Different salary ranges
* Different experience levels
* Both male and female employees

---

## Write SQL queries for the following questions:

Find employees from IT, Finance, or HR who joined after '2023-01-01', have salary between ₹40,000 and ₹90,000, and have experience greater than 3 years.
Find employees whose email is NULL, salary is greater than ₹50,000, and joining date is after '2022-01-01'.
Find employees whose manager_id is NOT NULL, department is not HR, and salary is either below ₹40,000 or above ₹80,000.
Find employees from Indore, Pune, or Delhi who joined between '2022-01-01' and '2025-12-31', have salary greater than ₹45,000, and experience of at least 3 years.
Find employees who are FULL_TIME, have JAVA or PYTHON in their skills, salary greater than ₹50,000, and email is NOT NULL.
Find employees whose name starts with A or S, joining date is after '2023-01-01', salary is between ₹30,000 and ₹80,000, and age is between 25 and 35.
Find employees who belong to IT or Finance, have JAVA in skills, experience greater than 4 years, and salary is NOT between ₹50,000 and ₹80,000.
Find employees whose department is IT, HR, or Marketing, city is not Mumbai, salary is greater than ₹40,000, and either email is NULL or manager_id is NULL.
Find employees who joined after '2022-01-01', are not INTERN, have salary greater than ₹45,000, and have either SQL or PYTHON in their skills.
Find employees whose salary is greater than ₹60,000 OR experience is greater than 7 years, but exclude employees from Mumbai and Bhopal.
Find employees who joined between '2023-01-01' and '2026-12-31', belong to Electronics-related departments? Instead, use: departments IT or Development, salary greater than ₹50,000, and email is NOT NULL.
Find employees whose name contains the letter a, department is not HR, salary is between ₹35,000 and ₹75,000, and joining date is after '2022-06-01'.
Find employees who have both JAVA and SQL skills, salary greater than ₹55,000, experience greater than 3 years, and manager_id is NOT NULL.
Find employees who have PYTHON or REACT skills, belong to IT or Development, joined after '2023-01-01', and salary is greater than ₹50,000.
Find employees whose employment type is CONTRACT or PART_TIME, salary is greater than ₹35,000, joining date is between '2022-01-01' and '2025-12-31', and email is NOT NULL.
Find employees whose gender is FEMALE, department is IT or Finance, salary is greater than ₹45,000, and experience is greater than 2 years.
Find employees whose city is Indore, Pune, or Delhi, department is not HR, joining date is after '2023-01-01', salary is between ₹40,000 and ₹1,00,000, and manager_id is NOT NULL.
Find employees whose salary is NOT between ₹30,000 and ₹60,000, experience is greater than 5 years, and either department is IT or Finance.
Find employees whose email is NULL OR manager_id is NULL, but salary must be greater than ₹40,000 and joining date must be after '2022-01-01'.
Find employees whose name starts with S OR contains a, department is IT or Finance, salary is between ₹40,000 and ₹90,000, and experience is at least 3 years.
Find employees who joined between '2022-01-01' and '2025-12-31', are not from Mumbai or Bhopal, salary is greater than ₹50,000, and have JAVA in their skills.
Find employees who are FULL_TIME, joined after '2023-01-01', have salary greater than ₹60,000, and have either JAVA + SQL or PYTHON + REACT skills.
Find employees from IT, Finance, or Development whose salary is between ₹45,000 and ₹90,000, experience is greater than 3 years, email is NOT NULL, and manager_id is NOT NULL.
Find employees whose joining date is after '2023-01-01', department is not HR, salary is greater than ₹50,000 OR experience is greater than 6 years, and city is not Mumbai.
Find employees whose name starts with A or M, gender is FEMALE, employment type is FULL_TIME, salary is greater than ₹45,000, and email is NOT NULL.
Find employees who have JAVA or SPRING in their skills, joined after '2022-01-01', salary is NOT between ₹40,000 and ₹70,000, and manager_id is NOT NULL.
Find employees from Indore, Pune, or Delhi whose joining date is between '2023-01-01' and '2026-12-31', salary is between ₹40,000 and ₹1,00,000, experience is greater than 2 years, and either email or manager_id is NULL.
Find employees belonging to IT or Development, whose name contains a, skills contain JAVA or PYTHON, salary is greater than ₹50,000, joining date is after '2023-01-01', and email is NOT NULL.
Find employees whose department is IT, Finance, or Development, city is not Mumbai or Bhopal, salary is between ₹40,000 and ₹90,000, experience is greater than 3 years, skills contain SQL, and manager_id is NOT NULL. Display the result ordered by salary in descending order.
Find employees whose name starts with S OR contains a, department is IT or Finance, joining date is between '2023-01-01' and '2026-12-31', salary is between ₹40,000 and ₹1,00,000, experience is greater than 2 years, email is NOT NULL, manager_id is NOT NULL, skills contain JAVA or PYTHON, and city is Indore, Pune, or Delhi. Display the result first by department ascending and then by salary descending.'''


-- ============================================
-- ASSIGNMENT 3 - EMPLOYEE MANAGEMENT SYSTEM
-- ============================================

CREATE DATABASE employee_management;
USE employee_management;

-- ============================================
-- CREATE TABLE
-- ============================================

CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    joining_date DATE NOT NULL,
    experience INT NOT NULL,
    age INT NOT NULL,
    gender ENUM('MALE','FEMALE') NOT NULL,
    employment_type ENUM(
        'FULL_TIME',
        'PART_TIME',
        'CONTRACT',
        'INTERN'
    ) NOT NULL,
    skills SET(
        'JAVA',
        'PYTHON',
        'SQL',
        'REACT',
        'SPRING',
        'MYSQL'
    ),
    email VARCHAR(100) NULL,
    manager_id INT NULL
);

-- ============================================
-- INSERT SAMPLE DATA
-- ============================================

INSERT INTO employees
(employee_name, department, city, salary, joining_date,
experience, age, gender, employment_type, skills, email, manager_id)

VALUES

('Aarav Sharma', 'IT', 'Indore', 75000, '2024-02-15',
5, 29, 'MALE', 'FULL_TIME',
'JAVA,SQL,SPRING',
'aarav@gmail.com', 101),

('Sneha Verma', 'Finance', 'Pune', 65000, '2023-06-10',
6, 30, 'FEMALE', 'FULL_TIME',
'JAVA,SQL',
'sneha@gmail.com', 102),

('Aditi Gupta', 'HR', 'Delhi', 55000, '2024-01-20',
4, 28, 'FEMALE', 'FULL_TIME',
'PYTHON,SQL',
NULL, 103),

('Rohan Singh', 'Development', 'Indore', 85000, '2025-03-12',
7, 32, 'MALE', 'FULL_TIME',
'JAVA,SQL,REACT',
'rohan@gmail.com', 101),

('Simran Patel', 'IT', 'Mumbai', 45000, '2023-09-18',
3, 26, 'FEMALE', 'CONTRACT',
'PYTHON,REACT',
'simran@gmail.com', NULL),

('Manish Kumar', 'Finance', 'Delhi', 95000, '2022-05-10',
8, 35, 'MALE', 'FULL_TIME',
'JAVA,SPRING,SQL',
'manish@gmail.com', 102),

('Anjali Jain', 'Development', 'Pune', 60000, '2024-07-22',
4, 27, 'FEMALE', 'PART_TIME',
'PYTHON,REACT',
NULL, 101),

('Sanjay Mehta', 'Marketing', 'Bhopal', 38000, '2021-11-15',
6, 34, 'MALE', 'FULL_TIME',
'SQL',
'sanjay@gmail.com', 104),

('Meera Shah', 'IT', 'Indore', 70000, '2025-01-05',
5, 31, 'FEMALE', 'FULL_TIME',
'JAVA,SQL,PYTHON',
'meera@gmail.com', 101),

('Akash Yadav', 'HR', 'Pune', 42000, '2022-08-19',
3, 25, 'MALE', 'INTERN',
'PYTHON',
NULL, NULL),

('Sonia Kapoor', 'Finance', 'Delhi', 80000, '2025-05-11',
6, 33, 'FEMALE', 'FULL_TIME',
'JAVA,SQL',
'sonia@gmail.com', 102),

('Rahul Joshi', 'Development', 'Mumbai', 55000, '2023-03-14',
4, 28, 'MALE', 'CONTRACT',
'JAVA,REACT',
'rahul@gmail.com', NULL),

('Aman Tiwari', 'IT', 'Pune', 35000, '2021-09-10',
2, 24, 'MALE', 'PART_TIME',
'SQL,MYSQL',
NULL, 101),

('Shreya Singh', 'Finance', 'Indore', 68000, '2024-09-25',
5, 29, 'FEMALE', 'FULL_TIME',
'PYTHON,REACT',
'shreya@gmail.com', 102),

('Mohit Patel', 'Marketing', 'Delhi', 48000, '2023-11-30',
4, 30, 'MALE', 'CONTRACT',
'SQL,REACT',
'mohit@gmail.com', 104);


-- ============================================
-- 1
-- IT, Finance, HR | Joined after 2023
-- Salary 40000-90000 | Experience > 3
-- ============================================

SELECT * FROM employees
WHERE department IN ('IT', 'Finance', 'HR')
AND joining_date > '2023-01-01'
AND salary BETWEEN 40000 AND 90000
AND experience > 3;


-- ============================================
-- 2
-- Email NULL | Salary > 50000
-- Joined after 2022
-- ============================================

SELECT * FROM employees
WHERE email IS NULL
AND salary > 50000
AND joining_date > '2022-01-01';


-- ============================================
-- 3
-- manager_id NOT NULL | Department NOT HR
-- Salary below 40000 OR above 80000
-- ============================================

SELECT * FROM employees
WHERE manager_id IS NOT NULL
AND department != 'HR'
AND (salary < 40000 OR salary > 80000);


-- ============================================
-- 4
-- Indore, Pune, Delhi
-- Joining date between 2022 and 2025
-- Salary > 45000 | Experience >= 3
-- ============================================

SELECT * FROM employees
WHERE city IN ('Indore', 'Pune', 'Delhi')
AND joining_date BETWEEN '2022-01-01' AND '2025-12-31'
AND salary > 45000
AND experience >= 3;


-- ============================================
-- 5
-- FULL_TIME | JAVA OR PYTHON
-- Salary > 50000 | Email NOT NULL
-- ============================================

SELECT * FROM employees
WHERE employment_type = 'FULL_TIME'
AND (FIND_IN_SET('JAVA', skills)
OR FIND_IN_SET('PYTHON', skills))
AND salary > 50000
AND email IS NOT NULL;


-- ============================================
-- 6
-- Name starts with A or S
-- Joined after 2023
-- Salary 30000-80000
-- Age 25-35
-- ============================================

SELECT * FROM employees
WHERE (employee_name LIKE 'A%'
OR employee_name LIKE 'S%')
AND joining_date > '2023-01-01'
AND salary BETWEEN 30000 AND 80000
AND age BETWEEN 25 AND 35;


-- ============================================
-- 7
-- IT or Finance | JAVA
-- Experience > 4
-- Salary NOT between 50000 and 80000
-- ============================================

SELECT * FROM employees
WHERE department IN ('IT', 'Finance')
AND FIND_IN_SET('JAVA', skills)
AND experience > 4
AND salary NOT BETWEEN 50000 AND 80000;


-- ============================================
-- 8
-- IT, HR, Marketing
-- City NOT Mumbai
-- Salary > 40000
-- Email NULL OR manager_id NULL
-- ============================================

SELECT * FROM employees
WHERE department IN ('IT', 'HR', 'Marketing')
AND city != 'Mumbai'
AND salary > 40000
AND (email IS NULL OR manager_id IS NULL);


-- ============================================
-- 9
-- Joined after 2022
-- NOT INTERN
-- Salary > 45000
-- SQL OR PYTHON
-- ============================================

SELECT * FROM employees
WHERE joining_date > '2022-01-01'
AND employment_type != 'INTERN'
AND salary > 45000
AND (
    FIND_IN_SET('SQL', skills)
    OR FIND_IN_SET('PYTHON', skills)
);


-- ============================================
-- 10
-- Salary > 60000 OR Experience > 7
-- Exclude Mumbai and Bhopal
-- ============================================

SELECT * FROM employees
WHERE (salary > 60000 OR experience > 7)
AND city NOT IN ('Mumbai', 'Bhopal');


-- ============================================
-- 11
-- Joined between 2023 and 2026
-- IT or Development
-- Salary > 50000
-- Email NOT NULL
-- ============================================

SELECT * FROM employees
WHERE joining_date BETWEEN '2023-01-01' AND '2026-12-31'
AND department IN ('IT', 'Development')
AND salary > 50000
AND email IS NOT NULL;


-- ============================================
-- 12
-- Name contains a
-- Department NOT HR
-- Salary 35000-75000
-- Joined after 2022-06-01
-- ============================================

SELECT * FROM employees
WHERE employee_name LIKE '%a%'
AND department != 'HR'
AND salary BETWEEN 35000 AND 75000
AND joining_date > '2022-06-01';


-- ============================================
-- 13
-- JAVA AND SQL
-- Salary > 55000
-- Experience > 3
-- manager_id NOT NULL
-- ============================================

SELECT * FROM employees
WHERE FIND_IN_SET('JAVA', skills)
AND FIND_IN_SET('SQL', skills)
AND salary > 55000
AND experience > 3
AND manager_id IS NOT NULL;


-- ============================================
-- 14
-- PYTHON OR REACT
-- IT or Development
-- Joined after 2023
-- Salary > 50000
-- ============================================

SELECT * FROM employees
WHERE (
    FIND_IN_SET('PYTHON', skills)
    OR FIND_IN_SET('REACT', skills)
)
AND department IN ('IT', 'Development')
AND joining_date > '2023-01-01'
AND salary > 50000;


-- ============================================
-- 15
-- CONTRACT or PART_TIME
-- Salary > 35000
-- Joined between 2022 and 2025
-- Email NOT NULL
-- ============================================

SELECT * FROM employees
WHERE employment_type IN ('CONTRACT', 'PART_TIME')
AND salary > 35000
AND joining_date BETWEEN '2022-01-01' AND '2025-12-31'
AND email IS NOT NULL;


-- ============================================
-- 16
-- FEMALE
-- IT or Finance
-- Salary > 45000
-- Experience > 2
-- ============================================

SELECT * FROM employees
WHERE gender = 'FEMALE'
AND department IN ('IT', 'Finance')
AND salary > 45000
AND experience > 2;


-- ============================================
-- 17
-- Indore, Pune, Delhi
-- Department NOT HR
-- Joined after 2023
-- Salary 40000-100000
-- manager_id NOT NULL
-- ============================================

SELECT * FROM employees
WHERE city IN ('Indore', 'Pune', 'Delhi')
AND department != 'HR'
AND joining_date > '2023-01-01'
AND salary BETWEEN 40000 AND 100000
AND manager_id IS NOT NULL;


-- ============================================
-- 18
-- Salary NOT between 30000 and 60000
-- Experience > 5
-- IT or Finance
-- ============================================

SELECT * FROM employees
WHERE salary NOT BETWEEN 30000 AND 60000
AND experience > 5
AND department IN ('IT', 'Finance');


-- ============================================
-- 19
-- Email NULL OR manager_id NULL
-- Salary > 40000
-- Joined after 2022
-- ============================================

SELECT * FROM employees
WHERE (email IS NULL OR manager_id IS NULL)
AND salary > 40000
AND joining_date > '2022-01-01';


-- ============================================
-- 20
-- Name starts S OR contains a
-- IT or Finance
-- Salary 40000-90000
-- Experience >= 3
-- ============================================

SELECT * FROM employees
WHERE (
    employee_name LIKE 'S%'
    OR employee_name LIKE '%a%'
)
AND department IN ('IT', 'Finance')
AND salary BETWEEN 40000 AND 90000
AND experience >= 3;


-- ============================================
-- 21
-- Joined between 2022 and 2025
-- NOT Mumbai or Bhopal
-- Salary > 50000
-- JAVA skill
-- ============================================

SELECT * FROM employees
WHERE joining_date BETWEEN '2022-01-01' AND '2025-12-31'
AND city NOT IN ('Mumbai', 'Bhopal')
AND salary > 50000
AND FIND_IN_SET('JAVA', skills);


-- ============================================
-- 22
-- FULL_TIME
-- Joined after 2023
-- Salary > 60000
-- JAVA + SQL OR PYTHON + REACT
-- ============================================

SELECT * FROM employees
WHERE employment_type = 'FULL_TIME'
AND joining_date > '2023-01-01'
AND salary > 60000
AND (
    (
        FIND_IN_SET('JAVA', skills)
        AND FIND_IN_SET('SQL', skills)
    )
    OR
    (
        FIND_IN_SET('PYTHON', skills)
        AND FIND_IN_SET('REACT', skills)
    )
);


-- ============================================
-- 23
-- IT, Finance, Development
-- Salary 45000-90000
-- Experience > 3
-- Email NOT NULL
-- manager_id NOT NULL
-- ============================================

SELECT * FROM employees
WHERE department IN ('IT', 'Finance', 'Development')
AND salary BETWEEN 45000 AND 90000
AND experience > 3
AND email IS NOT NULL
AND manager_id IS NOT NULL;


-- ============================================
-- 24
-- Joined after 2023
-- Department NOT HR
-- Salary > 50000 OR Experience > 6
-- City NOT Mumbai
-- ============================================

SELECT * FROM employees
WHERE joining_date > '2023-01-01'
AND department != 'HR'
AND (salary > 50000 OR experience > 6)
AND city != 'Mumbai';


-- ============================================
-- 25
-- Name starts A or M
-- FEMALE
-- FULL_TIME
-- Salary > 45000
-- Email NOT NULL
-- ============================================

SELECT * FROM employees
WHERE (employee_name LIKE 'A%'
OR employee_name LIKE 'M%')
AND gender = 'FEMALE'
AND employment_type = 'FULL_TIME'
AND salary > 45000
AND email IS NOT NULL;


-- ============================================
-- 26
-- JAVA OR SPRING
-- Joined after 2022
-- Salary NOT between 40000 and 70000
-- manager_id NOT NULL
-- ============================================

SELECT * FROM employees
WHERE (
    FIND_IN_SET('JAVA', skills)
    OR FIND_IN_SET('SPRING', skills)
)
AND joining_date > '2022-01-01'
AND salary NOT BETWEEN 40000 AND 70000
AND manager_id IS NOT NULL;


-- ============================================
-- 27
-- Indore, Pune, Delhi
-- Joining between 2023 and 2026
-- Salary 40000-100000
-- Experience > 2
-- Email OR manager_id NULL
-- ============================================

SELECT * FROM employees
WHERE city IN ('Indore', 'Pune', 'Delhi')
AND joining_date BETWEEN '2023-01-01' AND '2026-12-31'
AND salary BETWEEN 40000 AND 100000
AND experience > 2
AND (email IS NULL OR manager_id IS NULL);


-- ============================================
-- 28
-- IT or Development
-- Name contains a
-- JAVA OR PYTHON
-- Salary > 50000
-- Joined after 2023
-- Email NOT NULL
-- ============================================

SELECT * FROM employees
WHERE department IN ('IT', 'Development')
AND employee_name LIKE '%a%'
AND (
    FIND_IN_SET('JAVA', skills)
    OR FIND_IN_SET('PYTHON', skills)
)
AND salary > 50000
AND joining_date > '2023-01-01'
AND email IS NOT NULL;


-- ============================================
-- 29
-- IT, Finance, Development
-- NOT Mumbai or Bhopal
-- Salary 40000-90000
-- Experience > 3
-- SQL skill
-- manager_id NOT NULL
-- ORDER BY salary DESC
-- ============================================

SELECT * FROM employees
WHERE department IN ('IT', 'Finance', 'Development')
AND city NOT IN ('Mumbai', 'Bhopal')
AND salary BETWEEN 40000 AND 90000
AND experience > 3
AND FIND_IN_SET('SQL', skills)
AND manager_id IS NOT NULL
ORDER BY salary DESC;


-- ============================================
-- 30
-- Name starts S OR contains a
-- IT or Finance
-- Joining between 2023 and 2026
-- Salary 40000-100000
-- Experience > 2
-- Email NOT NULL
-- manager_id NOT NULL
-- JAVA OR PYTHON
-- City Indore, Pune, Delhi
-- ORDER BY department ASC, salary DESC
-- ============================================

SELECT * FROM employees
WHERE (
    employee_name LIKE 'S%'
    OR employee_name LIKE '%a%'
)
AND department IN ('IT', 'Finance')
AND joining_date BETWEEN '2023-01-01' AND '2026-12-31'
AND salary BETWEEN 40000 AND 100000
AND experience > 2
AND email IS NOT NULL
AND manager_id IS NOT NULL
AND (
    FIND_IN_SET('JAVA', skills)
    OR FIND_IN_SET('PYTHON', skills)
)
AND city IN ('Indore', 'Pune', 'Delhi')
ORDER BY department ASC, salary DESC;
Important for SET skills

Since skills is a SET, use:

FIND_IN_SET('JAVA', skills)

For both JAVA and SQL:

FIND_IN_SET('JAVA', skills)
AND FIND_IN_SET('SQL', skills)

For JAVA or PYTHON:

FIND_IN_SET('JAVA', skills)
OR FIND_IN_SET('PYTHON', skills)

For the last query, your ORDER BY is correctly written as:

ORDER BY department ASC, salary DESC;

Not:

ORDER BY department ASC AND ORDER BY salary DESC;