'''QNO 1:

Table Name: staff\_update



| Column         | Data Type                      |

| -------------- | ------------------------------ |

| `staff\_id`     | INT PRIMARY KEY AUTO\_INCREMENT |

| `staff\_name`   | VARCHAR(50)                    |

| `department`   | VARCHAR(30)                    |

| `city`         | VARCHAR(30)                    |

| `salary`       | DECIMAL(10,2)                  |

| `experience`   | INT                            |

| `age`          | INT                            |

| `joining\_date` | DATE                           |

| `status`       | VARCHAR(20)                    |

===================================================





DATA:--

('Aarav', 'IT', 'Indore', 48000, 3, 26, '2022-04-15', 'Active'),

('Bhavna', 'HR', 'Bhopal', 56000, 5, 31, '2020-08-20', 'Active'),

('Chetan', 'Finance', 'Delhi', 62000, 7, 35, '2018-03-10', 'Active'),

('Divya', 'IT', 'Pune', 78000, 9, 38, '2016-11-05', 'Active'),

('Eshan', 'Sales', 'Indore', 51000, 4, 29, '2021-06-18', 'Inactive'),

('Farah', 'HR', NULL, 68000, 6, 34, '2019-01-25', 'Active');







Questions



Q1. Aarav's salary needs to be revised to ₹52,000. Update his salary using his employee ID.



Q2. Bhavna has been transferred to the Finance department in Indore. Update both her department and city.



Q3. Give a ₹4,000 increment to employees whose salary is below ₹60,000, who have at least 3 years of experience, and who do not belong to Sales.



Q4. Give a ₹3,000 increment to employees who either belong to IT with at least 3 years of experience or belong to HR with at least 5 years of experience.



Q5. Give a 10% increment to employees from IT or Finance whose current salary is below ₹70,000.



Q6. Give a ₹2,500 increment to employees who are neither from HR nor Sales and have between 5 and 8 years of experience.



Q7. Give a ₹5,000 increment to employees whose salary is between ₹50,000 and ₹70,000, excluding Finance employees.



Q8. Give a 7% increment to employees whose names start with either A or D.



Q9. Farah's city is missing. Update her city to Mumbai without modifying employees whose city is already available.



Q10. Give a 10% increment to employees who joined before January 1, 2020 and whose salary is below ₹70,000.



Q11. For IT employees having at least 5 years of experience, increase salary by 8%, increase experience by 1 year, and change their status to Promoted.



Q12. Give a ₹6,000 increment to employees having at least 5 years of experience, salary below ₹75,000, and belonging to either HR or Finance.



Q13. Apply the following salary revisions in a single statement:



IT → 12%

HR → 9%

Finance → 8%

Sales → 5%



Q14. Apply salary increments according to experience:



8 or more years → 15%

5–7 years → 10%

3–4 years → 7%

Less than 3 years → 5%



Q15. Apply these salary revisions in a single statement:



IT employees with at least 8 years → 18%

Other IT employees → 10%

HR employees with at least 6 years → 12%

Other HR employees → 7%

Finance employees → 8%

Sales employees → 5%



Q16. Update the status of every employee according to salary:



₹75,000 or more → Senior

₹60,000–₹74,999 → Experienced

₹50,000–₹59,999 → Regular

Below ₹50,000 → Junior



Q17. Display all employees with departments arranged in this business priority:



Finance → IT → HR → Sales



Do not change the actual department values.



Q18. Display all employees with departments arranged in this order:



IT → HR → Finance → Sales



Within each department, display the employee with the highest salary first.



Q19. Display employees according to experience priority:



8+ years → 5–7 years → 3–4 years → below 3 years



Q20. Give a ₹5,000 increment to only one employee. The employee must belong to IT or HR, have at least 3 years of experience, and earn less than ₹70,000. If multiple employees qualify, update only the lowest-paid employee.



Q21. Give a 10% increment to only one employee. The employee must be Active and have at least 5 years of experience. If multiple employees qualify, update only the highest-paid employee.



Q22. Give a ₹3,000 increment to only one employee who is neither from HR nor Sales and has at least 3 years of experience. If multiple employees qualify, update the lowest-paid employee.



Q23. Change the status to Promoted for only the highest-paid IT employee.



Q24. Give a 12% increment to employees who are either IT employees with at least 5 years of experience or Finance employees earning below ₹65,000. In addition, only Active employees earning below ₹80,000 should receive the increment.



Q25. Apply the following salary revision in one statement:



IT + 8 or more years → 18%

IT + 5–7 years → 12%

HR + at least 6 years → 10%

HR + less than 6 years → 7%

Finance + salary below ₹65,000 → 10%

Finance + salary ₹65,000 or above → 7%

Sales + at least 4 years → 6%

All remaining employees → 3%



Q26. Update both salary and status according to experience:



8+ years → salary +15%, status Promoted

5–7 years → salary +10%, status Eligible

3–4 years → salary +7%, status Regular

Below 3 years → salary +5%, status Junior



Q27. Change the status to Promoted for employees who have at least 6 years of experience, salary of at least ₹60,000, are Active, and belong to IT, HR, or Finance.



Q28. Employees belonging to IT, having at least 5 years of experience, and currently living in Pune or Delhi should receive a 10% salary increment, have their city changed to Bangalore, and their status changed to Transferred.



Q29. Give a ₹7,000 special increment to only one eligible employee. The employee must belong to IT, HR, or Finance, have at least 4 years of experience, be Active, and earn less than ₹75,000. If multiple employees qualify, update only the lowest-paid employee.



Q30. The company wants to perform an annual salary revision using one statement:



IT + experience >= 8 + salary >= ₹70,000 → 18%

IT + experience >= 5 → 12%

HR + experience >= 6 → 10%

HR + experience < 6 → 7%

Finance + salary < ₹65,000 → 10%

Finance + salary >= ₹65,000 → 7%

Sales + experience >= 4 → 6%

All remaining employees → 3%



Employees whose status is Inactive must not receive any increment.



Additionally, update the status based on the applicable increment:



15% or more → Promoted

10%–14.99% → Eligible

Below 10% → Under Review '''



mysql> create table staff\_update (staff\_id int auto\_increment primary key , staff\_name varchar(50), department varchar(30), city varchar(30), salary decimal(10,2), experience int, age int , joining\_date date, status varchar(20));

Query OK, 0 rows affected (0.07 sec)





mysql> desc staff\_update;

+--------------+---------------+------+-----+---------+----------------+

| Field        | Type          | Null | Key | Default | Extra          |

+--------------+---------------+------+-----+---------+----------------+

| staff\_id     | int           | NO   | PRI | NULL    | auto\_increment |

| staff\_name   | varchar(50)   | YES  |     | NULL    |                |

| department   | varchar(30)   | YES  |     | NULL    |                |

| city         | varchar(30)   | YES  |     | NULL    |                |

| salary       | decimal(10,2) | YES  |     | NULL    |                |

| experience   | int           | YES  |     | NULL    |                |

| age          | int           | YES  |     | NULL    |                |

| joining\_date | date          | YES  |     | NULL    |                |

| status       | varchar(20)   | YES  |     | NULL    |                |

+--------------+---------------+------+-----+---------+----------------+

9 rows in set (0.04 sec)







insert into staff\_update (staff\_name, department, city, salary, experience, age, joining\_date, status) values ('AARAV' , 'IT', 'INDORE', 48000, 3, 26,'2022-04-15','ACTIVE'),('Bhavna', 'HR', 'Bhopal', 56000, 5, 31, '2020-08-20', 'Active'),('Chetan', 'Finance', 'Delhi', 62000, 7, 35, '2018-03-10', 'Active'),('Divya', 'IT', 'Pune', 78000, 9, 38, '2016-11-05', 'Active'),('Eshan', 'Sales', 'Indore', 51000, 4, 29, '2021-06-18', 'Inactive'),('Farah', 'HR', NULL, 68000, 6, 34, '2019-01-25', 'Active');

Query OK, 6 rows affected (0.01 sec)

Records: 6  Duplicates: 0  Warnings: 0



mysql> SELECT \* FROM STAFF\_UPDATE;

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

| staff\_id | staff\_name | department | city   | salary   | experience | age  | joining\_date | status   |

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

|        1 | AARAV      | IT         | INDORE | 48000.00 |          3 |   26 | 2022-04-15   | ACTIVE   |

|        2 | Bhavna     | HR         | Bhopal | 56000.00 |          5 |   31 | 2020-08-20   | Active   |

|        3 | Chetan     | Finance    | Delhi  | 62000.00 |          7 |   35 | 2018-03-10   | Active   |

|        4 | Divya      | IT         | Pune   | 78000.00 |          9 |   38 | 2016-11-05   | Active   |

|        5 | Eshan      | Sales      | Indore | 51000.00 |          4 |   29 | 2021-06-18   | Inactive |

|        6 | Farah      | HR         | NULL   | 68000.00 |          6 |   34 | 2019-01-25   | Active   |

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

6 rows in set (0.00 sec)





QUESTIONS:



Q1. Aarav's salary needs to be revised to ₹52,000. Update his salary using his employee ID.





mysql> UPDATE STAFF\_UPDATE SET SALARY = 52000 WHERE STAFF\_ID = 1;

Query OK, 1 row affected (0.05 sec)

Rows matched: 1  Changed: 1  Warnings: 0



mysql> SELECT \* FROM STAFF\_UPDATE;

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

| staff\_id | staff\_name | department | city   | salary   | experience | age  | joining\_date | status   |

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

|        1 | AARAV      | IT         | INDORE | 52000.00 |          3 |   26 | 2022-04-15   | ACTIVE   |

|        2 | Bhavna     | HR         | Bhopal | 56000.00 |          5 |   31 | 2020-08-20   | Active   |

|        3 | Chetan     | Finance    | Delhi  | 62000.00 |          7 |   35 | 2018-03-10   | Active   |

|        4 | Divya      | IT         | Pune   | 78000.00 |          9 |   38 | 2016-11-05   | Active   |

|        5 | Eshan      | Sales      | Indore | 51000.00 |          4 |   29 | 2021-06-18   | Inactive |

|        6 | Farah      | HR         | NULL   | 68000.00 |          6 |   34 | 2019-01-25   | Active   |

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

6 rows in set (0.04 sec)





Q2. Bhavna has been transferred to the Finance department in Indore. Update both her department and city.



mysql> UPDATE STAFF\_UPDATE SET DEPARTMENT = 'FINANCE' , CITY= 'INDORE' WHERE STAFF\_ID = 2;

Query OK, 1 row affected (0.00 sec)

Rows matched: 1  Changed: 1  Warnings: 0



mysql> SELECT \* FROM STAFF\_UPDATE;

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

| staff\_id | staff\_name | department | city   | salary   | experience | age  | joining\_date | status   |

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

|        1 | AARAV      | IT         | INDORE | 48000.00 |          3 |   26 | 2022-04-15   | ACTIVE   |

|        2 | Bhavna     | FINANCE    | INDORE | 56000.00 |          5 |   31 | 2020-08-20   | Active   |

|        3 | Chetan     | Finance    | Delhi  | 62000.00 |          7 |   35 | 2018-03-10   | Active   |

|        4 | Divya      | IT         | Pune   | 78000.00 |          9 |   38 | 2016-11-05   | Active   |

|        5 | Eshan      | Sales      | Indore | 51000.00 |          4 |   29 | 2021-06-18   | Inactive |

|        6 | Farah      | HR         | NULL   | 68000.00 |          6 |   34 | 2019-01-25   | Active   |

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

6 rows in set (0.00 sec)



Q4. Give a ₹3,000 increment to employees who either belong to IT with at least 3 years of experience or belong to HR with at least 5 years of experience.



mysql> UPDATE STAFF\_UPDATE SET SALARY = SALARY + 3000 WHERE ( DEPARTMENT = 'IT' AND EXPERIENCE >= 3) OR (DEPARTMENT = 'HR' AND EXPERIENCE >=5);

Query OK, 3 rows affected (0.01 sec)

Rows matched: 3  Changed: 3  Warnings: 0



mysql> SELECT \* FROM STAFF\_UPDATE;

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

| staff\_id | staff\_name | department | city   | salary   | experience | age  | joining\_date | status   |

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

|        1 | AARAV      | IT         | INDORE | 51000.00 |          3 |   26 | 2022-04-15   | ACTIVE   |

|        2 | Bhavna     | FINANCE    | INDORE | 56000.00 |          5 |   31 | 2020-08-20   | Active   |

|        3 | Chetan     | Finance    | Delhi  | 62000.00 |          7 |   35 | 2018-03-10   | Active   |

|        4 | Divya      | IT         | Pune   | 81000.00 |          9 |   38 | 2016-11-05   | Active   |

|        5 | Eshan      | Sales      | Indore | 51000.00 |          4 |   29 | 2021-06-18   | Inactive |

|        6 | Farah      | HR         | NULL   | 71000.00 |          6 |   34 | 2019-01-25   | Active   |

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

6 rows in set (0.02 sec)



Q5. Give a 10% increment to employees from IT or Finance whose current salary is below ₹70,000.



mysql> UPDATE STAFF\_UPDATE SET SALARY = SALARY \* 1.10 WHERE DEPARTMENT IN ('IT','FINANCE') AND SALARY < 70000 ;

Query OK, 3 rows affected (0.01 sec)

Rows matched: 3  Changed: 3  Warnings: 0



mysql> SELECT \* FROM STAFF\_UPDATE;

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

| staff\_id | staff\_name | department | city   | salary   | experience | age  | joining\_date | status   |

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

|        1 | AARAV      | IT         | INDORE | 56100.00 |          3 |   26 | 2022-04-15   | ACTIVE   |

|        2 | Bhavna     | FINANCE    | INDORE | 61600.00 |          5 |   31 | 2020-08-20   | Active   |

|        3 | Chetan     | Finance    | Delhi  | 68200.00 |          7 |   35 | 2018-03-10   | Active   |

|        4 | Divya      | IT         | Pune   | 81000.00 |          9 |   38 | 2016-11-05   | Active   |

|        5 | Eshan      | Sales      | Indore | 51000.00 |          4 |   29 | 2021-06-18   | Inactive |

|        6 | Farah      | HR         | NULL   | 71000.00 |          6 |   34 | 2019-01-25   | Active   |

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

6 rows in set (0.00 sec)



Q6. Give a ₹2,500 increment to employees who are neither from HR nor Sales and have between 5 and 8 years of experience.



mysql> UPDATE STAFF\_UPDATE  SET SALARY = SALARY + 2500 WHERE DEPARTMENT NOT IN ('HR','SALES') AND EXPERIENCE BETWEEN 5 AND 8;

Query OK, 2 rows affected (0.01 sec)

Rows matched: 2  Changed: 2  Warnings: 0



mysql> SELECT \* FROM STAFF\_UPDATE;

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

| staff\_id | staff\_name | department | city   | salary   | experience | age  | joining\_date | status   |

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

|        1 | AARAV      | IT         | INDORE | 56100.00 |          3 |   26 | 2022-04-15   | ACTIVE   |

|        2 | Bhavna     | FINANCE    | INDORE | 64100.00 |          5 |   31 | 2020-08-20   | Active   |

|        3 | Chetan     | Finance    | Delhi  | 70700.00 |          7 |   35 | 2018-03-10   | Active   |

|        4 | Divya      | IT         | Pune   | 81000.00 |          9 |   38 | 2016-11-05   | Active   |

|        5 | Eshan      | Sales      | Indore | 51000.00 |          4 |   29 | 2021-06-18   | Inactive |

|        6 | Farah      | HR         | NULL   | 71000.00 |          6 |   34 | 2019-01-25   | Active   |

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

6 rows in set (0.00 sec)



Q7. Give a ₹5,000 increment to employees whose salary is between ₹50,000 and ₹70,000, excluding Finance employees.



mysql> UPDATE STAFF\_UPDATE SET SALARY = SALARY + 5000 WHERE SALARY BETWEEN 50000 AND 70000 AND DEPARTMENT <> 'FINANCE';

Query OK, 2 rows affected (0.03 sec)

Rows matched: 2  Changed: 2  Warnings: 0



mysql> SELECT \* FROM STAFF\_UPDATE;

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

| staff\_id | staff\_name | department | city   | salary   | experience | age  | joining\_date | status   |

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

|        1 | AARAV      | IT         | INDORE | 61100.00 |          3 |   26 | 2022-04-15   | ACTIVE   |

|        2 | Bhavna     | FINANCE    | INDORE | 64100.00 |          5 |   31 | 2020-08-20   | Active   |

|        3 | Chetan     | Finance    | Delhi  | 70700.00 |          7 |   35 | 2018-03-10   | Active   |

|        4 | Divya      | IT         | Pune   | 81000.00 |          9 |   38 | 2016-11-05   | Active   |

|        5 | Eshan      | Sales      | Indore | 56000.00 |          4 |   29 | 2021-06-18   | Inactive |

|        6 | Farah      | HR         | NULL   | 71000.00 |          6 |   34 | 2019-01-25   | Active   |

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

6 rows in set (0.00 sec)







Q8. Give a 7% increment to employees whose names start with either A or D.



mysql> UPDATE STAFF\_UPDATE SET SALARY = SALARY \* 1.07 AND STAFF\_NAME LIKE 'A%' OR STAFF\_NAME LIKE 'D%';

Query OK, 6 rows affected (0.00 sec)

Rows matched: 6  Changed: 6  Warnings: 0



mysql> SELECT \* FROM STAFF\_UPDATE;

+----------+------------+------------+--------+--------+------------+------+--------------+----------+

| staff\_id | staff\_name | department | city   | salary | experience | age  | joining\_date | status   |

+----------+------------+------------+--------+--------+------------+------+--------------+----------+

|        1 | AARAV      | IT         | INDORE |   1.00 |          3 |   26 | 2022-04-15   | ACTIVE   |

|        2 | Bhavna     | FINANCE    | INDORE |   0.00 |          5 |   31 | 2020-08-20   | Active   |

|        3 | Chetan     | Finance    | Delhi  |   0.00 |          7 |   35 | 2018-03-10   | Active   |

|        4 | Divya      | IT         | Pune   |   1.00 |          9 |   38 | 2016-11-05   | Active   |

|        5 | Eshan      | Sales      | Indore |   0.00 |          4 |   29 | 2021-06-18   | Inactive |

|        6 | Farah      | HR         | NULL   |   0.00 |          6 |   34 | 2019-01-25   | Active   |

+----------+------------+------------+--------+--------+------------+------+--------------+----------+

6 rows in set (0.00 sec)





Q9. Farah's city is missing. Update her city to Mumbai without modifying employees whose city is already available.



mysql> update staff\_update set city = 'mumbai' where city is null;

Query OK, 1 row affected (0.05 sec)

Rows matched: 1  Changed: 1  Warnings: 0



mysql> select \* from staff\_update;

+----------+------------+------------+--------+--------+------------+------+--------------+----------+

| staff\_id | staff\_name | department | city   | salary | experience | age  | joining\_date | status   |

+----------+------------+------------+--------+--------+------------+------+--------------+----------+

|        1 | AARAV      | IT         | INDORE |   1.00 |          3 |   26 | 2022-04-15   | ACTIVE   |

|        2 | Bhavna     | FINANCE    | INDORE |   0.00 |          5 |   31 | 2020-08-20   | Active   |

|        3 | Chetan     | Finance    | Delhi  |   0.00 |          7 |   35 | 2018-03-10   | Active   |

|        4 | Divya      | IT         | Pune   |   1.00 |          9 |   38 | 2016-11-05   | Active   |

|        5 | Eshan      | Sales      | Indore |   0.00 |          4 |   29 | 2021-06-18   | Inactive |

|        6 | Farah      | HR         | mumbai |   0.00 |          6 |   34 | 2019-01-25   | Active   |

+----------+------------+------------+--------+--------+------------+------+--------------+----------+

6 rows in set (0.00 sec)





Q10. Give a 10% increment to employees who joined before January 1, 2020 and whose salary is below ₹70,000.



mysql> update staff\_update set salary= salary \* 1.10 where year(joining\_date) < '2020' and salary < 70000;

Query OK, 2 rows affected (0.01 sec)

Rows matched: 2  Changed: 2  Warnings: 0



mysql> select \* from staff\_update;

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

| staff\_id | staff\_name | department | city   | salary   | experience | age  | joining\_date | status   |

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

|        1 | AARAV      | IT         | INDORE | 48000.00 |          3 |   26 | 2022-04-15   | ACTIVE   |

|        2 | Bhavna     | HR         | Bhopal | 56000.00 |          5 |   31 | 2020-08-20   | Active   |

|        3 | Chetan     | Finance    | Delhi  | 68200.00 |          7 |   35 | 2018-03-10   | Active   |

|        4 | Divya      | IT         | Pune   | 78000.00 |          9 |   38 | 2016-11-05   | Active   |

|        5 | Eshan      | Sales      | Indore | 51000.00 |          4 |   29 | 2021-06-18   | Inactive |

|        6 | Farah      | HR         | NULL   | 74800.00 |          6 |   34 | 2019-01-25   | Active   |

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

6 rows in set (0.00 sec)







Q11. For IT employees having at least 5 years of experience, increase salary by 8%, increase experience by 1 year, and change their status to Promoted.



update staff\_update set salary = salary \*1.08 , experience = experience + 1 , status = 'promoted' where department = 'it' and experience >= 5;

Query OK, 1 row affected (0.01 sec)

Rows matched: 1  Changed: 1  Warnings: 0



mysql> select \* from staff\_update;

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

| staff\_id | staff\_name | department | city   | salary   | experience | age  | joining\_date | status   |

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

|        1 | AARAV      | IT         | INDORE | 48000.00 |          3 |   26 | 2022-04-15   | ACTIVE   |

|        2 | Bhavna     | HR         | Bhopal | 56000.00 |          5 |   31 | 2020-08-20   | Active   |

|        3 | Chetan     | Finance    | Delhi  | 68200.00 |          7 |   35 | 2018-03-10   | Active   |

|        4 | Divya      | IT         | Pune   | 84240.00 |         10 |   38 | 2016-11-05   | promoted |

|        5 | Eshan      | Sales      | Indore | 51000.00 |          4 |   29 | 2021-06-18   | Inactive |

|        6 | Farah      | HR         | NULL   | 74800.00 |          6 |   34 | 2019-01-25   | Active   |

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

6 rows in set (0.00 sec)





Q12. Give a ₹6,000 increment to employees having at least 5 years of experience, salary below ₹75,000, and belonging to either HR or Finance.



&#x20;update staff\_update set salary = salary + 6000 where experience >= 5 and salary < 75000 and department in ('hr','finance');

Query OK, 3 rows affected (0.01 sec)

Rows matched: 3  Changed: 3  Warnings: 0



mysql> select \* from staff\_update;

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

| staff\_id | staff\_name | department | city   | salary   | experience | age  | joining\_date | status   |

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

|        1 | AARAV      | IT         | INDORE | 48000.00 |          3 |   26 | 2022-04-15   | ACTIVE   |

|        2 | Bhavna     | HR         | Bhopal | 62000.00 |          5 |   31 | 2020-08-20   | Active   |

|        3 | Chetan     | Finance    | Delhi  | 74200.00 |          7 |   35 | 2018-03-10   | Active   |

|        4 | Divya      | IT         | Pune   | 84240.00 |         10 |   38 | 2016-11-05   | promoted |

|        5 | Eshan      | Sales      | Indore | 51000.00 |          4 |   29 | 2021-06-18   | Inactive |

|        6 | Farah      | HR         | NULL   | 80800.00 |          6 |   34 | 2019-01-25   | Active   |

+----------+------------+------------+--------+----------+------------+------+--------------+----------+

6 rows in set (0.00 sec)



Q13. Apply the following salary revisions in a single statement:



IT → 12%

HR → 9%

Finance → 8%

Sales → 5%



mysql> update staff\_update set salary =

&#x20;   -> case

&#x20;   ->     when department ='it' then salary \* 1.12 when department = ' hr' then salary \* 1.09 when department = 'finance' then salary \* 1.08 when department = 'sales' then salary \* 1.05 else salary end;

Query OK, 4 rows affected (0.01 sec)

Rows matched: 6  Changed: 4  Warnings: 0



mysql> select staff\_name , salary, department from staff\_update;

+------------+----------+------------+

| staff\_name | salary   | department |

+------------+----------+------------+

| AARAV      | 53760.00 | IT         |

| Bhavna     | 62000.00 | HR         |

| Chetan     | 80136.00 | Finance    |

| Divya      | 94348.80 | IT         |

| Eshan      | 53550.00 | Sales      |

| Farah      | 80800.00 | HR         |

+------------+----------+------------+

6 rows in set (0.00 sec)





Q14. Apply salary increments according to experience:



8 or more years → 15%

5–7 years → 10%

3–4 years → 7%

Less than 3 years → 5%



update staff\_update set salary = case when experience >= 8 then salary \* 1.15 when experience between 5 and 7 then salary \* 1.10 when experience between 3 and 4 then salary \* 1.07 when experience < 3 then salary \* 1.05 else salary end;

Query OK, 6 rows affected (0.01 sec)

Rows matched: 6  Changed: 6  Warnings: 0



mysql> select \* from staff\_update;

+----------+------------+------------+--------+-----------+------------+------+--------------+----------+

| staff\_id | staff\_name | department | city   | salary    | experience | age  | joining\_date | status   |

+----------+------------+------------+--------+-----------+------------+------+--------------+----------+

|        1 | AARAV      | IT         | INDORE |  57523.20 |          3 |   26 | 2022-04-15   | ACTIVE   |

|        2 | Bhavna     | HR         | Bhopal |  68200.00 |          5 |   31 | 2020-08-20   | Active   |

|        3 | Chetan     | Finance    | Delhi  |  88149.60 |          7 |   35 | 2018-03-10   | Active   |

|        4 | Divya      | IT         | Pune   | 108501.12 |         10 |   38 | 2016-11-05   | promoted |

|        5 | Eshan      | Sales      | Indore |  57298.50 |          4 |   29 | 2021-06-18   | Inactive |

|        6 | Farah      | HR         | NULL   |  88880.00 |          6 |   34 | 2019-01-25   | Active   |

+----------+------------+------------+--------+-----------+------------+------+--------------+----------+

6 rows in set (0.00 sec)





Q15. Apply these salary revisions in a single statement:



IT employees with at least 8 years → 18%

Other IT employees → 10%

HR employees with at least 6 years → 12%

Other HR employees → 7%

Finance employees → 8%

Sales employees → 5%



mysql> update staff\_update set salary = case when department = 'it' and experience >= 8 then salary \* 1.18 when department = 'it' then salary\*1.10 when department = 'hr' and experience >=6  then salary \* 1.12 when department = 'hr' then salary \* 1.07 when department = 'finance' then salary \* 1.08 when department = 'sales' then salary \* 1.05 else salary end;

Query OK, 6 rows affected, 3 warnings (0.01 sec)

Rows matched: 6  Changed: 6  Warnings: 3



mysql> select \* from staff\_update;

+----------+------------+------------+--------+-----------+------------+------+--------------+----------+

| staff\_id | staff\_name | department | city   | salary    | experience | age  | joining\_date | status   |

+----------+------------+------------+--------+-----------+------------+------+--------------+----------+

|        1 | AARAV      | IT         | INDORE |  63275.52 |          3 |   26 | 2022-04-15   | ACTIVE   |

|        2 | Bhavna     | HR         | Bhopal |  72974.00 |          5 |   31 | 2020-08-20   | Active   |

|        3 | Chetan     | Finance    | Delhi  |  95201.57 |          7 |   35 | 2018-03-10   | Active   |

|        4 | Divya      | IT         | Pune   | 128031.32 |         10 |   38 | 2016-11-05   | promoted |

|        5 | Eshan      | Sales      | Indore |  60163.43 |          4 |   29 | 2021-06-18   | Inactive |

|        6 | Farah      | HR         | NULL   |  99545.60 |          6 |   34 | 2019-01-25   | Active   |

+----------+------------+------------+--------+-----------+------------+------+--------------+----------+

6 rows in set (0.00 sec)





Q16. Update the status of every employee according to salary:



₹75,000 or more → Senior

₹60,000–₹74,999 → Experienced

₹50,000–₹59,999 → Regular

Below ₹50,000 → Junior



mysql> update staff\_update set status = case  when salary >= 75000 then status = 'senior' when salary between 60000 and 74999 then status = 'experienced' when salary between 50000 and 59999 then status = 'regular' when salary < 50000 then status = 'junior' end;

Query OK, 6 rows affected (0.00 sec)

Rows matched: 6  Changed: 6  Warnings: 0



mysql> select \* from staff\_update;

+----------+------------+------------+--------+-----------+------------+------+--------------+--------+

| staff\_id | staff\_name | department | city   | salary    | experience | age  | joining\_date | status |

+----------+------------+------------+--------+-----------+------------+------+--------------+--------+

|        1 | AARAV      | IT         | INDORE |  63275.52 |          3 |   26 | 2022-04-15   | 0      |

|        2 | Bhavna     | HR         | Bhopal |  72974.00 |          5 |   31 | 2020-08-20   | 0      |

|        3 | Chetan     | Finance    | Delhi  |  95201.57 |          7 |   35 | 2018-03-10   | 0      |

|        4 | Divya      | IT         | Pune   | 128031.32 |         10 |   38 | 2016-11-05   | 0      |

|        5 | Eshan      | Sales      | Indore |  60163.43 |          4 |   29 | 2021-06-18   | 0      |

|        6 | Farah      | HR         | NULL   |  99545.60 |          6 |   34 | 2019-01-25   | 0      |

+----------+------------+------------+--------+-----------+------------+------+--------------+--------+

6 rows in set (0.00 sec)





**Q17. Display all employees with departments arranged in this business priority:**



**Finance → IT → HR → Sales**



**Do not change the actual department values.**



**mysql> select staff\_name, department,salary from staff\_update order by case when department = 'finance' then 1 when department = 'it' then 2 when department = 'hr' then 3 when department = 'sales' then 4 else 5 end;**

**+------------+------------+-----------+**

**| staff\_name | department | salary    |**

**+------------+------------+-----------+**

**| Chetan     | Finance    |  95201.57 |**

**| AARAV      | IT         |  63275.52 |**

**| Divya      | IT         | 128031.32 |**

**| Bhavna     | HR         |  72974.00 |**

**| Farah      | HR         |  99545.60 |**

**| Eshan      | Sales      |  60163.43 |**

**+------------+------------+-----------+**

**6 rows in set (0.00 sec)**



**Q18. Display all employees with departments arranged in this order:**



**IT → HR → Finance → Sales**



**Within each department, display the employee with the highest salary first.**

select staff_name, department,salary from staff_update order by case when department = 'it' then 1 when department = 'hr' then 2 when department = 'finance' then 3 when department = 'sales' then 4 else 5 end, salary desc;
+------------+------------+-----------+
| staff_name | department | salary    |
+------------+------------+-----------+
| Divya      | IT         | 128031.32 |
| AARAV      | IT         |  63275.52 |
| Farah      | HR         |  99545.60 |
| Bhavna     | HR         |  72974.00 |
| Chetan     | Finance    |  95201.57 |
| Eshan      | Sales      |  60163.43 |
+------------+------------+-----------+
6 rows in set (0.00 sec)


Q19. Display employees according to experience priority:

8+ years → 5–7 years → 3–4 years → below 3 years

ysql> select staff_name , experience , salary from staff_update order by case when experience >= 8  then 1 when experience between 5 and 7 then 2 when experience between 3 and 4 then 3 when experience < 3 then 4 end;
+------------+------------+-----------+
| staff_name | experience | salary    |
+------------+------------+-----------+
| Divya      |         10 | 128031.32 |
| Bhavna     |          5 |  72974.00 |
| Chetan     |          7 |  95201.57 |
| Farah      |          6 |  99545.60 |
| AARAV      |          3 |  63275.52 |
| Eshan      |          4 |  60163.43 |
+------------+------------+-----------+
6 rows in set (0.00 sec)

Q20. Give a ₹5,000 increment to only one employee. The employee must belong to IT or HR, have at least 3 years of experience, and earn less than ₹70,000. If multiple employees qualify, update only the lowest-paid employee.

mysql> update staff_update set salary = salary+ 5000 where department in ('it','hr') and experience >= 3 and salary < 70000 order by salary asc limit 1;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from staff_update;
+----------+------------+------------+--------+-----------+------------+------+--------------+--------+
| staff_id | staff_name | department | city   | salary    | experience | age  | joining_date | status |
+----------+------------+------------+--------+-----------+------------+------+--------------+--------+
|        1 | AARAV      | IT         | INDORE |  68275.52 |          3 |   26 | 2022-04-15   | 0      |
|        2 | Bhavna     | HR         | Bhopal |  72974.00 |          5 |   31 | 2020-08-20   | 0      |
|        3 | Chetan     | Finance    | Delhi  |  95201.57 |          7 |   35 | 2018-03-10   | 0      |
|        4 | Divya      | IT         | Pune   | 128031.32 |         10 |   38 | 2016-11-05   | 0      |
|        5 | Eshan      | Sales      | Indore |  60163.43 |          4 |   29 | 2021-06-18   | 0      |
|        6 | Farah      | HR         | NULL   |  99545.60 |          6 |   34 | 2019-01-25   | 0      |
+----------+------------+------------+--------+-----------+------------+------+--------------+--------+
6 rows in set (0.00 sec)


Q21. Give a 10% increment to only one employee. The employee must be Active and have at least 5 years of experience. If multiple employees qualify, update only the highest-paid employee.

 update staff_update set salary = salary * 1.10 where status = 'active' and experience >= 5 order by salary desc limit 1;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> select * from staff_update;
+----------+------------+------------+--------+-----------+------------+------+--------------+--------+
| staff_id | staff_name | department | city   | salary    | experience | age  | joining_date | status |
+----------+------------+------------+--------+-----------+------------+------+--------------+--------+
|        1 | AARAV      | IT         | INDORE |  68275.52 |          3 |   26 | 2022-04-15   | 0      |
|        2 | Bhavna     | HR         | Bhopal |  72974.00 |          5 |   31 | 2020-08-20   | 0      |
|        3 | Chetan     | Finance    | Delhi  |  95201.57 |          7 |   35 | 2018-03-10   | 0      |
|        4 | Divya      | IT         | Pune   | 128031.32 |         10 |   38 | 2016-11-05   | 0      |
|        5 | Eshan      | Sales      | Indore |  60163.43 |          4 |   29 | 2021-06-18   | 0      |
|        6 | Farah      | HR         | NULL   |  99545.60 |          6 |   34 | 2019-01-25   | 0      |
+----------+------------+------------+--------+-----------+------------+------+--------------+--------+
6 rows in set (0.00 sec)


Q22. Give a ₹3,000 increment to only one employee who is neither from HR nor Sales and has at least 3 years of experience. If multiple employees qualify, update the lowest-paid employee.

ysql> update staff_update set salary = salary + 3000 where department not in ('hr','sales' ) and experience >= 3 order by salary limit 1;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from staff_update;
+----------+------------+------------+--------+-----------+------------+------+--------------+--------+
| staff_id | staff_name | department | city   | salary    | experience | age  | joining_date | status |
+----------+------------+------------+--------+-----------+------------+------+--------------+--------+
|        1 | AARAV      | IT         | INDORE |  71275.52 |          3 |   26 | 2022-04-15   | 0      |
|        2 | Bhavna     | HR         | Bhopal |  72974.00 |          5 |   31 | 2020-08-20   | 0      |
|        3 | Chetan     | Finance    | Delhi  |  95201.57 |          7 |   35 | 2018-03-10   | 0      |
|        4 | Divya      | IT         | Pune   | 128031.32 |         10 |   38 | 2016-11-05   | 0      |
|        5 | Eshan      | Sales      | Indore |  60163.43 |          4 |   29 | 2021-06-18   | 0      |
|        6 | Farah      | HR         | NULL   |  99545.60 |          6 |   34 | 2019-01-25   | 0      |
+----------+------------+------------+--------+-----------+------------+------+--------------+--------+
6 rows in set (0.00 sec)

Q23. Change the status to Promoted for only the highest-paid IT employee.

mysql> update staff_update set status = 'promoted'  where department = 'it' order by salary desc limit 1;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from staff_update;
+----------+------------+------------+--------+-----------+------------+------+--------------+----------+
| staff_id | staff_name | department | city   | salary    | experience | age  | joining_date | status   |
+----------+------------+------------+--------+-----------+------------+------+--------------+----------+
|        1 | AARAV      | IT         | INDORE |  71275.52 |          3 |   26 | 2022-04-15   | 0        |
|        2 | Bhavna     | HR         | Bhopal |  72974.00 |          5 |   31 | 2020-08-20   | 0        |
|        3 | Chetan     | Finance    | Delhi  |  95201.57 |          7 |   35 | 2018-03-10   | 0        |
|        4 | Divya      | IT         | Pune   | 128031.32 |         10 |   38 | 2016-11-05   | promoted |
|        5 | Eshan      | Sales      | Indore |  60163.43 |          4 |   29 | 2021-06-18   | 0        |
|        6 | Farah      | HR         | NULL   |  99545.60 |          6 |   34 | 2019-01-25   | 0        |
+----------+------------+------------+--------+-----------+------------+------+--------------+----------+
6 rows in set (0.00 sec)




Q24. Give a 12% increment to employees who are either IT employees with at least 5 years of experience or Finance employees earning below ₹65,000. In addition, only Active employees earning below ₹80,000 should receive the increment.

> update staff_update set salary = salary * 1.12 where ((department = 'it' and experience >= 5 ) or (department = 'finance' and salary < 65000 )) and status = 'active' and salary < 80000;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> select * from staff_update;
+----------+------------+------------+--------+-----------+------------+------+--------------+----------+
| staff_id | staff_name | department | city   | salary    | experience | age  | joining_date | status   |
+----------+------------+------------+--------+-----------+------------+------+--------------+----------+
|        1 | AARAV      | IT         | INDORE |  71275.52 |          3 |   26 | 2022-04-15   | 0        |
|        2 | Bhavna     | HR         | Bhopal |  72974.00 |          5 |   31 | 2020-08-20   | 0        |
|        3 | Chetan     | Finance    | Delhi  |  95201.57 |          7 |   35 | 2018-03-10   | 0        |
|        4 | Divya      | IT         | Pune   | 128031.32 |         10 |   38 | 2016-11-05   | promoted |
|        5 | Eshan      | Sales      | Indore |  60163.43 |          4 |   29 | 2021-06-18   | 0        |
|        6 | Farah      | HR         | NULL   |  99545.60 |          6 |   34 | 2019-01-25   | 0        |
+----------+------------+------------+--------+-----------+------------+------+--------------+----------+
6 rows in set (0.00 sec


Q25. Apply the following salary revision in one statement:

IT + 8 or more years → 18%
IT + 5–7 years → 12%
HR + at least 6 years → 10%
HR + less than 6 years → 7%
Finance + salary below ₹65,000 → 10%
Finance + salary ₹65,000 or above → 7%
Sales + at least 4 years → 6%
All remaining employees → 3%

8 when depart' at line 1
mysql> SELECT salary, department, staff_name,
    -> CASE
    ->     WHEN department = 'IT' AND experience >= 8 THEN salary * 1.18
    ->     WHEN department = 'IT' AND experience BETWEEN 5 AND 7 THEN salary * 1.12
    ->     WHEN department = 'HR' AND experience >= 6 THEN salary * 1.10
    ->     WHEN department = 'HR' AND experience < 6 THEN salary * 1.07
    ->     WHEN department = 'Finance' AND salary < 65000 THEN salary * 1.10
    ->     WHEN department = 'Finance' AND salary >= 65000 THEN salary * 1.07
    ->     WHEN department = 'Sales' AND experience >= 4 THEN salary * 1.06
    ->     ELSE salary * 1.03
    -> END AS new_salary
    -> FROM staff_update;
+-----------+------------+------------+-------------+
| salary    | department | staff_name | new_salary  |
+-----------+------------+------------+-------------+
|  71275.52 | IT         | AARAV      |  73413.7856 |
|  72974.00 | HR         | Bhavna     |  78082.1800 |
|  95201.57 | Finance    | Chetan     | 101865.6799 |
| 128031.32 | IT         | Divya      | 151076.9576 |
|  60163.43 | Sales      | Eshan      |  63773.2358 |
|  99545.60 | HR         | Farah      | 109500.1600 |
+-----------+------------+------------+-------------+
6 rows in set (0.00 sec)


Q26. Update both salary and status according to experience:

8+ years → salary +15%, status Promoted
5–7 years → salary +10%, status Eligible
3–4 years → salary +7%, status Regular
Below 3 years → salary +5%, status Junior

 UPDATE staff_update
    -> SET
    ->     salary = CASE
    ->         WHEN experience >= 8 THEN salary * 1.15
    ->         WHEN experience BETWEEN 5 AND 7 THEN salary * 1.10
    ->         WHEN experience BETWEEN 3 AND 4 THEN salary * 1.07
    ->         ELSE salary * 1.05
    ->     END,
    ->
    ->     status = CASE
    ->         WHEN experience >= 8 THEN 'Promoted'
    ->         WHEN experience BETWEEN 5 AND 7 THEN 'Eligible'
    ->         WHEN experience BETWEEN 3 AND 4 THEN 'Regular'
    ->         ELSE 'Junior'
    ->     END;
Query OK, 6 rows affected, 4 warnings (0.01 sec)
Rows matched: 6  Changed: 6  Warnings: 4

mysql> select * from staff_update;
+----------+------------+------------+--------+-----------+------------+------+--------------+----------+
| staff_id | staff_name | department | city   | salary    | experience | age  | joining_date | status   |
+----------+------------+------------+--------+-----------+------------+------+--------------+----------+
|        1 | AARAV      | IT         | INDORE |  76264.81 |          3 |   26 | 2022-04-15   | Regular  |
|        2 | Bhavna     | HR         | Bhopal |  80271.40 |          5 |   31 | 2020-08-20   | Eligible |
|        3 | Chetan     | Finance    | Delhi  | 104721.73 |          7 |   35 | 2018-03-10   | Eligible |
|        4 | Divya      | IT         | Pune   | 147236.02 |         10 |   38 | 2016-11-05   | Promoted |
|        5 | Eshan      | Sales      | Indore |  64374.87 |          4 |   29 | 2021-06-18   | Regular  |
|        6 | Farah      | HR         | NULL   | 109500.16 |          6 |   34 | 2019-01-25   | Eligible |
+----------+------------+------------+--------+-----------+------------+------+--------------+----------+
6 rows in set (0.00 sec)



Q27. Change the status to Promoted for employees who have at least 6 years of experience, salary of at least ₹60,000, are Active, and belong to IT, HR, or Finance.

update staff_update set status = 'promoted' where experience >= 6 and salary >= 60000 and status = 'active' and department in ('it','hr','finance');
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0



Q28. Employees belonging to IT, having at least 5 years of experience, and currently living in Pune or Delhi should receive a 10% salary increment, have their city changed to Bangalore, and their status changed to Transferred.


 update staff_update set salary = salary + 1.10 , city = 'Banglore' , status = 'transfered' where department = 'it' and experience >= 5 and city in ('pune','delhi');
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from staff_update;
+----------+------------+------------+----------+-----------+------------+------+--------------+------------+
| staff_id | staff_name | department | city     | salary    | experience | age  | joining_date | status     |
+----------+------------+------------+----------+-----------+------------+------+--------------+------------+
|        1 | AARAV      | IT         | INDORE   |  76264.81 |          3 |   26 | 2022-04-15   | Regular    |
|        2 | Bhavna     | HR         | Bhopal   |  80271.40 |          5 |   31 | 2020-08-20   | Eligible   |
|        3 | Chetan     | Finance    | Delhi    | 104721.73 |          7 |   35 | 2018-03-10   | Eligible   |
|        4 | Divya      | IT         | Banglore | 147237.12 |         10 |   38 | 2016-11-05   | transfered |
|        5 | Eshan      | Sales      | Indore   |  64374.87 |          4 |   29 | 2021-06-18   | Regular    |
|        6 | Farah      | HR         | NULL     | 109500.16 |          6 |   34 | 2019-01-25   | Eligible   |
+----------+------------+------------+----------+-----------+------------+------+--------------+------------+
6 rows in set (0.00 sec)


Q29. Give a ₹7,000 special increment to only one eligible employee. The employee must belong to IT, HR, or Finance, have at least 4 years of experience, be Active, and earn less than ₹75,000. If multiple employees qualify, update only the lowest-paid employee.

mysql> update staff_update set salary = salary + 7000 where department in ('it','hr','finance') and experience >= 4 and status = 'active' and salary < 75000 order by salary limit 1;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0


Q30. The company wants to perform an annual salary revision using one statement:

IT + experience >= 8 + salary >= ₹70,000 → 18%
IT + experience >= 5 → 12%
HR + experience >= 6 → 10%
HR + experience < 6 → 7%
Finance + salary < ₹65,000 → 10%
Finance + salary >= ₹65,000 → 7%
Sales + experience >= 4 → 6%
All remaining employees → 3%

Employees whose status is Inactive must not receive any increment.

Additionally, update the status based on the applicable increment:

15% or more → Promoted
10%–14.99% → Eligible
Below 10% → Under Review



UPDATE staff_update
SET
    salary = CASE
        WHEN status = 'Inactive' THEN salary
        WHEN department = 'IT' AND experience >= 8 AND salary >= 70000 THEN salary * 1.18
        WHEN department = 'IT' AND experience >= 5 THEN salary * 1.12
        WHEN department = 'HR' AND experience >= 6 THEN salary * 1.10
        WHEN department = 'HR' AND experience < 6 THEN salary * 1.07
        WHEN department = 'Finance' AND salary < 65000 THEN salary * 1.10
        WHEN department = 'Finance' AND salary >= 65000 THEN salary * 1.07
        WHEN department = 'Sales' AND experience >= 4 THEN salary * 1.06
        ELSE salary * 1.03
    END,

    status = CASE
        WHEN status = 'Inactive' THEN status
        WHEN department = 'IT' AND experience >= 8 AND salary >= 70000 THEN 'Promoted'
        WHEN department = 'IT' AND experience >= 5 THEN 'Eligible'
        WHEN department = 'HR' AND experience >= 6 THEN 'Eligible'
        WHEN department = 'HR' AND experience < 6 THEN 'Under Review'
        WHEN department = 'Finance' AND salary < 65000 THEN 'Eligible'
        WHEN department = 'Finance' AND salary >= 65000 THEN 'Under Review'
        WHEN department = 'Sales' AND experience >= 4 THEN 'Under Review'
        ELSE 'Under Review'
    END;


mysql> select * from staff_update;
+----------+------------+------------+----------+-----------+------------+------+--------------+--------------+
| staff_id | staff_name | department | city     | salary    | experience | age  | joining_date | status       |
+----------+------------+------------+----------+-----------+------------+------+--------------+--------------+
|        1 | AARAV      | IT         | INDORE   |  80909.33 |          3 |   26 | 2022-04-15   | Under Review |
|        2 | Bhavna     | HR         | Bhopal   |  91902.73 |          5 |   31 | 2020-08-20   | Under Review |
|        3 | Chetan     | Finance    | Delhi    | 119895.91 |          7 |   35 | 2018-03-10   | Under Review |
|        4 | Divya      | IT         | Banglore | 205012.96 |         10 |   38 | 2016-11-05   | Promoted     |
|        5 | Eshan      | Sales      | Indore   |  72331.60 |          4 |   29 | 2021-06-18   | Under Review |
|        6 | Farah      | HR         | NULL     | 132495.20 |          6 |   34 | 2019-01-25   | Eligible     |
+----------+------------+------------+----------+-----------+------------+------+--------------+--------------+
6 rows in set (0.00 sec)
