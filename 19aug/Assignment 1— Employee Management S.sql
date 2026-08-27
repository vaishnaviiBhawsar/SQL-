Assignment 1— Employee Management System


You are developing an Employee Management System for a company.

Create an employees table with the following information:

Employee ID
Employee Name
Department
City
Salary
Experience in years
Age
Joining Date
Sample Data

Insert at least 15 employees with different values.

Your data must include:

At least 4 different departments — IT, HR, Finance, Sales
At least 5 different cities — Indore, Bhopal, Pune, Mumbai, Bangalore
Salaries ranging from ₹30,000 to ₹1,00,000
Experience ranging from 1 to 10 years
Age ranging from 22 to 40 years
Joining dates from 2020 to 2026
Some employees should have the same department
Some employees should have the same city
Some employees should have similar salaries
Include employees who joined in different years





Write SQL queries to find:
=============================

-- ============================================
-- ASSIGNMENT 1 - EMPLOYEE MANAGEMENT SYSTEM
-- ============================================

CREATE DATABASE employee_management;

USE employee_management;


-- ============================================
-- CREATE EMPLOYEES TABLE
-- ============================================

CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    experience INT NOT NULL,
    age INT NOT NULL,
    joining_date DATE NOT NULL
);


-- ============================================
-- INSERT 15 EMPLOYEES
-- ============================================

INSERT INTO employees
(employee_name, department, city, salary, experience, age, joining_date)

VALUES
('Aarav Sharma', 'IT', 'Indore', 85000, 6, 30, '2021-05-10'),

('Sneha Verma', 'HR', 'Pune', 55000, 4, 28, '2022-08-15'),

('Rahul Singh', 'Finance', 'Mumbai', 75000, 7, 35, '2020-03-20'),

('Priya Patel', 'Sales', 'Bhopal', 45000, 3, 26, '2023-01-12'),

('Amit Kumar', 'IT', 'Bangalore', 95000, 8, 34, '2024-06-18'),

('Neha Gupta', 'HR', 'Indore', 50000, 5, 29, '2021-11-25'),

('Rohan Mehta', 'Finance', 'Pune', 65000, 5, 32, '2023-07-10'),

('Simran Kaur', 'Sales', 'Mumbai', 40000, 2, 24, '2025-02-14'),

('Manish Yadav', 'IT', 'Bhopal', 70000, 6, 31, '2022-04-08'),

('Anjali Jain', 'HR', 'Bangalore', 60000, 4, 27, '2024-09-30'),

('Sanjay Patel', 'Finance', 'Indore', 80000, 9, 38, '2020-12-05'),

('Meera Shah', 'Sales', 'Pune', 35000, 1, 22, '2026-01-20'),

('Akash Verma', 'IT', 'Mumbai', 90000, 7, 33, '2023-05-16'),

('Kavita Singh', 'HR', 'Bhopal', 48000, 3, 25, '2022-10-11'),

('Mohit Sharma', 'Finance', 'Bangalore', 100000, 10, 40, '2025-08-22');


-- ============================================
-- SQL QUERIES
-- ============================================


-- 1. Employees whose salary is greater than 60000

SELECT * FROM employees
WHERE salary > 60000;


-- 2. Employees whose salary is less than 50000

SELECT * FROM employees
WHERE salary < 50000;


-- 3. Employees whose age is greater than 30

SELECT * FROM employees
WHERE age > 30;


-- 4. Employees whose experience is greater than or equal to 5 years

SELECT * FROM employees
WHERE experience >= 5;


-- 5. Employees working in IT or Finance

SELECT * FROM employees
WHERE department IN ('IT', 'Finance');


-- 6. Employees working in IT, HR, or Sales

SELECT * FROM employees
WHERE department IN ('IT', 'HR', 'Sales');


-- 7. Employees not working in IT or HR

SELECT * FROM employees
WHERE department NOT IN ('IT', 'HR');


-- 8. Employees from Indore or Pune

SELECT * FROM employees
WHERE city IN ('Indore', 'Pune');


-- 9. Employees who are not from Indore, Mumbai, or Bhopal

SELECT * FROM employees
WHERE city NOT IN ('Indore', 'Mumbai', 'Bhopal');


-- 10. Employees whose salary is between 40000 and 70000

SELECT * FROM employees
WHERE salary BETWEEN 40000 AND 70000;


-- 11. Employees whose age is between 25 and 35

SELECT * FROM employees
WHERE age BETWEEN 25 AND 35;


-- 12. Employees whose experience is between 3 and 7 years

SELECT * FROM employees
WHERE experience BETWEEN 3 AND 7;


-- 13. Employees who joined between 2022 and 2025

SELECT * FROM employees
WHERE joining_date BETWEEN '2022-01-01' AND '2025-12-31';


-- 14. Employees who joined before 2023

SELECT * FROM employees
WHERE joining_date < '2023-01-01';


-- 15. Employees who joined after 2024

SELECT * FROM employees
WHERE joining_date > '2024-12-31';


-- 16. Employees from Indore AND working in IT

SELECT * FROM employees
WHERE city = 'Indore'
AND department = 'IT';


-- 17. Employees working in IT AND having salary greater than 70000

SELECT * FROM employees
WHERE department = 'IT'
AND salary > 70000;


-- 18. Salary between 50000 and 90000
-- AND experience greater than 4 years

SELECT * FROM employees
WHERE salary BETWEEN 50000 AND 90000
AND experience > 4;


-- 19. Employees working in IT or Finance
-- AND salary greater than 60000

SELECT * FROM employees
WHERE department IN ('IT', 'Finance')
AND salary > 60000;


-- 20. Joining date between 2021 and 2024
-- AND salary greater than 50000

SELECT * FROM employees
WHERE joining_date BETWEEN '2021-01-01' AND '2024-12-31'
AND salary > 50000;


-- 21. Employees whose salary is NOT between 40000 and 70000

SELECT * FROM employees
WHERE salary NOT BETWEEN 40000 AND 70000;


-- 22. Employees whose department is not IT, HR, or Sales

SELECT * FROM employees
WHERE department NOT IN ('IT', 'HR', 'Sales');


-- 23. Employees whose joining date is NOT between 2022 and 2025

SELECT * FROM employees
WHERE joining_date NOT BETWEEN '2022-01-01' AND '2025-12-31';


-- 24. Employees from Indore or Pune
-- Salary between 45000 and 80000
-- Experience more than 3 years

SELECT * FROM employees
WHERE city IN ('Indore', 'Pune')
AND salary BETWEEN 45000 AND 80000
AND experience > 3;


-- 25. Employees who did not join between 2020 and 2023
-- AND salary greater than 60000

SELECT * FROM employees
WHERE joining_date NOT BETWEEN '2020-01-01' AND '2023-12-31'
AND salary > 60000;


-- 26. Employees from Indore, Pune, or Bangalore
-- Salary between 50000 and 90000
-- Experience at least 4 years

SELECT * FROM employees
WHERE city IN ('Indore', 'Pune', 'Bangalore')
AND salary BETWEEN 50000 AND 90000
AND experience >= 4;


-- 27. Employees not from Bhopal or Mumbai
-- Not working in HR
-- Joined between 2021 and 2025

SELECT * FROM employees
WHERE city NOT IN ('Bhopal', 'Mumbai')
AND department != 'HR'
AND joining_date BETWEEN '2021-01-01' AND '2025-12-31';


-- 28. Employees working in IT or Finance
-- Salary > 60000
-- Age between 25 and 35
-- Joined after 2022

SELECT * FROM employees
WHERE department IN ('IT', 'Finance')
AND salary > 60000
AND age BETWEEN 25 AND 35
AND joining_date > '2022-12-31';


-- 29. Salary NOT between 40000 and 75000
-- Experience between 2 and 8 years
-- Not working in Sales

SELECT * FROM employees
WHERE salary NOT BETWEEN 40000 AND 75000
AND experience BETWEEN 2 AND 8
AND department != 'Sales';


-- 30. Employees from Indore or Pune
-- Working in IT, Finance, or HR
-- Salary between 45000 and 85000
-- Joined between 2020 and 2024

SELECT * FROM employees
WHERE city IN ('Indore', 'Pune')
AND department IN ('IT', 'Finance', 'HR')
AND salary BETWEEN 45000 AND 85000
AND joining_date BETWEEN '2020-01-01' AND '2024-12-31';
