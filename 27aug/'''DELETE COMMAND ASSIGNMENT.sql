'''DELETE COMMAND ASSIGNMENT
Table Name: staff_delete
Column Data Type
staff_id INT PRIMARY KEY AUTO_INCREMENT
staff_name VARCHAR(50)
department VARCHAR(30)
city VARCHAR(30)
salary DECIMAL(10,2)
experience INT
age INT
joining_date DATE
status VARCHAR(20)
DATA
('Aarav', 'IT', 'Indore', 48000, 3, 26, '2022-04-15', 'Active'),
('Bhavna', 'HR', 'Bhopal', 56000, 5, 31, '2020-08-20', 'Active'),
('Chetan', 'Finance', 'Delhi', 62000, 7, 35, '2018-03-10', 'Active'),
('Divya', 'IT', 'Pune', 78000, 9, 38, '2016-11-05', 'Active'),
('Eshan', 'Sales', 'Indore', 51000, 4, 29, '2021-06-18', 'Inactive'),
('Farah', 'HR', NULL, 68000, 6, 34, '2019-01-25', 'Active'),
('Gaurav', 'Finance', 'Mumbai', 74000, 8, 40, '2017-09-12', 'Active'),
('Heena', 'IT', 'Delhi', 59000, 5, 30, '2020-02-17', 'Inactive'),
('Ishaan', 'Sales', 'Pune', 45000, 2, 25, '2023-01-10', 'Active'),
('Jaya', 'HR', 'Indore', 72000, 7, 36, '2018-07-22', 'Active');
Questions

Q1. Delete the employee whose name is Aarav using his staff_id.

Q2. Delete all employees who belong to the Sales department.

Q3. Delete all employees whose salary is below ₹50,000.

Q4. Delete all employees who belong to HR and have at least 5 years of experience.

Q5. Delete all employees who are from Indore or Bhopal.

Q6. Delete all employees who belong to neither IT nor Finance.

Q7. Delete all employees whose salary is between ₹50,000 and ₹65,000, inclusive.

Q8. Delete all employees who have less than 5 years of experience and whose status is Inactive.

Q9. Delete all employees whose names start with the letter D.

Q10. Delete all employees whose city is NULL.

Q11. Delete all employees who joined before January 1, 2020 and have a salary of at least ₹60,000.

Q12. Delete all employees who belong to IT or HR, have at least 3 years of experience, and earn less than ₹70,000.

Q13. Delete all employees who are not from Sales, have salary above ₹55,000, and are currently Active.

Q14. Delete all employees who belong to Finance or HR and have a salary below ₹65,000.

Q15. Delete the employee with the lowest salary from the table. If multiple employees have the same lowest salary, delete only one employee.

Q16. Delete the employee with the highest salary from the table. If multiple employees have the same highest salary, delete only one employee.

Q17. Delete only the lowest-paid employee who belongs to IT or HR, has at least 3 years of experience, and earns less than ₹70,000.

Q18. Delete only the highest-paid Active employee having at least 5 years of experience.

Q19. Delete only the lowest-paid employee who is neither from HR nor Sales, has at least 3 years of experience, and earns below ₹70,000.

Q20. Delete all employees who satisfy either of the following conditions:

IT employees having at least 5 years of experience and salary below ₹80,000
Finance employees having salary below ₹65,000'''


mysql> create table staff_delete (staff_id int primary key auto_increment , staff_name varchar(50), department varchar(30), city varchar(30), salary decimal(10,2), experience int , age int, joining_date date, status varchar(20));
Query OK, 0 rows affected (0.04 sec)

mysql> desc staff_delete;
+--------------+---------------+------+-----+---------+----------------+
| Field        | Type          | Null | Key | Default | Extra          |
+--------------+---------------+------+-----+---------+----------------+
| staff_id     | int           | NO   | PRI | NULL    | auto_increment |
| staff_name   | varchar(50)   | YES  |     | NULL    |                |
| department   | varchar(30)   | YES  |     | NULL    |                |
| city         | varchar(30)   | YES  |     | NULL    |                |
| salary       | decimal(10,2) | YES  |     | NULL    |                |
| experience   | int           | YES  |     | NULL    |                |
| age          | int           | YES  |     | NULL    |                |
| joining_date | date          | YES  |     | NULL    |                |
| status       | varchar(20)   | YES  |     | NULL    |                |
+--------------+---------------+------+-----+---------+----------------+
9 rows in set (0.03 sec)

mysql> insert into staff_delete(staff_name,department,city,salary,experience,age,joining_date,status) values ('Aarav', 'IT', 'Indore', 48000, 3, 26, '2022-04-15', 'Active'),('Bhavna', 'HR', 'Bhopal', 56000, 5, 31, '2020-08-20', 'Active'),('Chetan', 'Finance', 'Delhi', 62000, 7, 35, '2018-03-10', 'Active'),('Divya', 'IT', 'Pune', 78000, 9, 38, '2016-11-05', 'Active'),('Eshan', 'Sales', 'Indore', 51000, 4, 29, '2021-06-18', 'Inactive'),('Farah', 'HR', NULL, 68000, 6, 34, '2019-01-25', 'Active'),('Gaurav', 'Finance', 'Mumbai', 74000, 8, 40, '2017-09-12', 'Active'),('Heena', 'IT', 'Delhi', 59000, 5, 30, '2020-02-17', 'Inactive'),('Ishaan', 'Sales', 'Pune', 45000, 2, 25, '2023-01-10', 'Active'),('Jaya', 'HR', 'Indore', 72000, 7, 36, '2018-07-22', 'Active');
Query OK, 10 rows affected (0.02 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> select * from staff_delete;
+----------+------------+------------+--------+----------+------------+------+--------------+----------+
| staff_id | staff_name | department | city   | salary   | experience | age  | joining_date | status   |
+----------+------------+------------+--------+----------+------------+------+--------------+----------+
|        1 | Aarav      | IT         | Indore | 48000.00 |          3 |   26 | 2022-04-15   | Active   |
|        2 | Bhavna     | HR         | Bhopal | 56000.00 |          5 |   31 | 2020-08-20   | Active   |
|        3 | Chetan     | Finance    | Delhi  | 62000.00 |          7 |   35 | 2018-03-10   | Active   |
|        4 | Divya      | IT         | Pune   | 78000.00 |          9 |   38 | 2016-11-05   | Active   |
|        5 | Eshan      | Sales      | Indore | 51000.00 |          4 |   29 | 2021-06-18   | Inactive |
|        6 | Farah      | HR         | NULL   | 68000.00 |          6 |   34 | 2019-01-25   | Active   |
|        7 | Gaurav     | Finance    | Mumbai | 74000.00 |          8 |   40 | 2017-09-12   | Active   |
|        8 | Heena      | IT         | Delhi  | 59000.00 |          5 |   30 | 2020-02-17   | Inactive |
|        9 | Ishaan     | Sales      | Pune   | 45000.00 |          2 |   25 | 2023-01-10   | Active   |
|       10 | Jaya       | HR         | Indore | 72000.00 |          7 |   36 | 2018-07-22   | Active   |
+----------+------------+------------+--------+----------+------------+------+--------------+----------+
10 rows in set (0.00 sec)

mysql> delete from staff_delete where staff_id = 1;
Query OK, 1 row affected (0.01 sec)

mysql>  select * from staff_delete;
+----------+------------+------------+--------+----------+------------+------+--------------+----------+
| staff_id | staff_name | department | city   | salary   | experience | age  | joining_date | status   |
+----------+------------+------------+--------+----------+------------+------+--------------+----------+
|        2 | Bhavna     | HR         | Bhopal | 56000.00 |          5 |   31 | 2020-08-20   | Active   |
|        3 | Chetan     | Finance    | Delhi  | 62000.00 |          7 |   35 | 2018-03-10   | Active   |
|        4 | Divya      | IT         | Pune   | 78000.00 |          9 |   38 | 2016-11-05   | Active   |
|        5 | Eshan      | Sales      | Indore | 51000.00 |          4 |   29 | 2021-06-18   | Inactive |
|        6 | Farah      | HR         | NULL   | 68000.00 |          6 |   34 | 2019-01-25   | Active   |
|        7 | Gaurav     | Finance    | Mumbai | 74000.00 |          8 |   40 | 2017-09-12   | Active   |
|        8 | Heena      | IT         | Delhi  | 59000.00 |          5 |   30 | 2020-02-17   | Inactive |
|        9 | Ishaan     | Sales      | Pune   | 45000.00 |          2 |   25 | 2023-01-10   | Active   |
|       10 | Jaya       | HR         | Indore | 72000.00 |          7 |   36 | 2018-07-22   | Active   |
+----------+------------+------------+--------+----------+------------+------+--------------+----------+
9 rows in set (0.00 sec)

mysql> delete from staff_delete where department = 'sales';
Query OK, 2 rows affected (0.01 sec)


mysql> delete from staff_delete where salary < 50000 ;
Query OK, 0 rows affected (0.00 sec)

mysql> delete from staff_delete where department = 'hr' and experience >= 5;
Query OK, 3 rows affected (0.00 sec)

mysql> delete from staff_delete where city in ('indore' , 'bhopal');
Query OK, 0 rows affected (0.00 sec)

mysql> delete from staff_delete where department not in ('it','finance');
Query OK, 0 rows affected (0.00 sec)

mysql> delete from staff_delete where salary between 50000 and 60000 ;
Query OK, 1 row affected (0.01 sec)

mysql> delete from staff_delete where salary between 50000 and 65000 ;
Query OK, 1 row affected (0.00 sec)

mysql> delete from staff_delete where experience < 5 and status = 'inactive';
Query OK, 0 rows affected (0.00 sec)


mysql> delete from staff_delete where staff_name like 'd%';
Query OK, 1 row affected (0.00 sec)

mysql> delete from staff_delete where city is null ;
Query OK, 0 rows affected (0.00 sec)

mysql> delete from staff_delete where year (joining_date)< '2020' and salary >= 60000;
Query OK, 1 row affected (0.00 sec)

mysql> select * from staff_delete;
Empty set (0.00 sec)

mysql> delete from staff_delete where department in ('it','hr') and experience >= 3 and salary < 70000;
Query OK, 0 rows affected (0.00 sec)

mysql> delete from staff_delete where department <> 'sales' and salary > 50000 and status = 'active';
Query OK, 0 rows affected (0.00 sec)

mysql> delete from staff_delete where department in ('finance', 'hr') and salary < 65000 ;
Query OK, 0 rows affected (0.00 sec)

mysql> delete from staff_delete order by salary asc limit 1;
Query OK, 0 rows affected (0.00 sec)

mysql> delete from staff_delete order by salary desc limit 1;
Query OK, 0 rows affected (0.00 sec)

mysql> delete from staff_delete where department in ('it','hr') and experience >= 3 and salary < 70000;
Query OK, 0 rows affected (0.00 sec)


mysql> delete from staff_delete where experience >=5 and status = 'active' order by salary desc limit 1 ;
Query OK, 0 rows affected (0.00 sec)

mysql> delete from staff_delete where department not in ('hr','sales') and experience >= 3 and salary < 70000  order by salary limit 1;
Query OK, 0 rows affected (0.00 sec)

mysql> delete from staff_delete where (department = 'it' and  experience >=5 and salary < 80000 ) or (department = 'finance' and salary < 65000);
Query OK, 0 rows affected (0.00 sec)
