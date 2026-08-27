mysql> INSERT INTO EMPLOYEE_ACTIVITY (EMPLOYEE_NAME, DEPARTMENT, SALARY,employeement_type,SKILLS, EMAIL,CITY) VALUES ('AMIT SHARMA','IT', 75000, 'FULL_TIME',('PYTHON,MYSQL,AI_ML'),'amit.sharma@gmail.com','INDORE'),('PRIYA VERMA','HR',52000,'FULL_TIME',('mysql,react'),'priya.verma@gmail.com','bhopal'),('rahul mehta','IT',95000,'CONTRACT', ('PYTHON,JAVA,AWS'),'rahul.mehta@gmail.com','INDORE'),('NEHA JOSHI','FINANCE',68000,'PART_TIME',('MYSQL,AI_ML'),'neha.joshi@yahoo.com','PUNE'),('VIKAS PATEL','IT',85000,'FULL_TIME',('PYTHON,REACT,AWS,AI_ML'),'vikas.patel@gmail.com','MUMBAI');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee_activity;
+-------------+---------------+------------+----------+-------------------+------------------------+---------------------+---------------------+-----------------------+--------+
| employee_id | employee_name | department | salary   | employeement_type | skills                 | joining_date        | updated_at          | email                 | city   |
+-------------+---------------+------------+----------+-------------------+------------------------+---------------------+---------------------+-----------------------+--------+
|           1 | AMIT SHARMA   | IT         | 75000.00 | FULL_TIME         | PYTHON,MYSQL,AI_ML     | 2026-08-25 10:38:16 | 2026-08-25 10:38:16 | amit.sharma@gmail.com | INDORE |
|           2 | PRIYA VERMA   | HR         | 52000.00 | FULL_TIME         | MYSQL,REACT            | 2026-08-25 10:38:16 | 2026-08-25 10:38:16 | priya.verma@gmail.com | bhopal |
|           3 | rahul mehta   | IT         | 95000.00 | CONTRACT          | PYTHON,JAVA,AWS        | 2026-08-25 10:38:16 | 2026-08-25 10:38:16 | rahul.mehta@gmail.com | INDORE |
|           4 | NEHA JOSHI    | FINANCE    | 68000.00 | PART_TIME         | MYSQL,AI_ML            | 2026-08-25 10:38:16 | 2026-08-25 10:38:16 | neha.joshi@yahoo.com  | PUNE   |
|           5 | VIKAS PATEL   | IT         | 85000.00 | FULL_TIME         | PYTHON,REACT,AWS,AI_ML | 2026-08-25 10:38:16 | 2026-08-25 10:38:16 | vikas.patel@gmail.com | MUMBAI |
+-------------+---------------+------------+----------+-------------------+------------------------+---------------------+---------------------+-----------------------+--------+
5 rows in set (0.01 sec)

mysql> select * employee_activity where salary > 80000 or(department = 'it' and salary between 60000 and 70000
    ->
    ->
    -> select * employee_activity where salary > 80000 or(department = 'it' and salary between 60000 and 70000);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'employee_activity where salary > 80000 or(department = 'it' and salary between 6' at line 1
mysql> select * employee_activity where salary > 80000 or(department = 'it' and salary between 60000 and 70000);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'employee_activity where salary > 80000 or(department = 'it' and salary between 6' at line 1
mysql> select * from employee_activity where salary > 80000 or(department = 'it' and salary between 60000 and 70000);
+-------------+---------------+------------+----------+-------------------+------------------------+---------------------+---------------------+-----------------------+--------+
| employee_id | employee_name | department | salary   | employeement_type | skills                 | joining_date        | updated_at          | email                 | city   |
+-------------+---------------+------------+----------+-------------------+------------------------+---------------------+---------------------+-----------------------+--------+
|           3 | rahul mehta   | IT         | 95000.00 | CONTRACT          | PYTHON,JAVA,AWS        | 2026-08-25 10:38:16 | 2026-08-25 10:38:16 | rahul.mehta@gmail.com | INDORE |
|           5 | VIKAS PATEL   | IT         | 85000.00 | FULL_TIME         | PYTHON,REACT,AWS,AI_ML | 2026-08-25 10:38:16 | 2026-08-25 10:38:16 | vikas.patel@gmail.com | MUMBAI |
+-------------+---------------+------------+----------+-------------------+------------------------+---------------------+---------------------+-----------------------+--------+
2 rows in set (0.01 sec)

mysql> select * from employee_activity where salary > 80000 or(department = 'it' and salary between 60000 and 70000) order by salary desc;
+-------------+---------------+------------+----------+-------------------+------------------------+---------------------+---------------------+-----------------------+--------+
| employee_id | employee_name | department | salary   | employeement_type | skills                 | joining_date        | updated_at          | email                 | city   |
+-------------+---------------+------------+----------+-------------------+------------------------+---------------------+---------------------+-----------------------+--------+
|           3 | rahul mehta   | IT         | 95000.00 | CONTRACT          | PYTHON,JAVA,AWS        | 2026-08-25 10:38:16 | 2026-08-25 10:38:16 | rahul.mehta@gmail.com | INDORE |
|           5 | VIKAS PATEL   | IT         | 85000.00 | FULL_TIME         | PYTHON,REACT,AWS,AI_ML | 2026-08-25 10:38:16 | 2026-08-25 10:38:16 | vikas.patel@gmail.com | MUMBAI |
+-------------+---------------+------------+----------+-------------------+------------------------+---------------------+---------------------+-----------------------+--------+
2 rows in set (0.00 sec)

mysql> select salary from employee_activity order by salary desc;
+----------+
| salary   |
+----------+
| 95000.00 |
| 85000.00 |
| 75000.00 |
| 68000.00 |
| 52000.00 |
+----------+
5 rows in set (0.00 sec)

mysql> select * from employee_activity where department <> 'hr' and  employeement_type in ('full_time' ,'contract') and salary > 70000;
+-------------+---------------+------------+----------+-------------------+------------------------+---------------------+---------------------+-----------------------+--------+
| employee_id | employee_name | department | salary   | employeement_type | skills                 | joining_date        | updated_at          | email                 | city   |
+-------------+---------------+------------+----------+-------------------+------------------------+---------------------+---------------------+-----------------------+--------+
|           1 | AMIT SHARMA   | IT         | 75000.00 | FULL_TIME         | PYTHON,MYSQL,AI_ML     | 2026-08-25 10:38:16 | 2026-08-25 10:38:16 | amit.sharma@gmail.com | INDORE |
|           3 | rahul mehta   | IT         | 95000.00 | CONTRACT          | PYTHON,JAVA,AWS        | 2026-08-25 10:38:16 | 2026-08-25 10:38:16 | rahul.mehta@gmail.com | INDORE |
|           5 | VIKAS PATEL   | IT         | 85000.00 | FULL_TIME         | PYTHON,REACT,AWS,AI_ML | 2026-08-25 10:38:16 | 2026-08-25 10:38:16 | vikas.patel@gmail.com | MUMBAI |
+-------------+---------------+------------+----------+-------------------+------------------------+---------------------+---------------------+-----------------------+--------+
3 rows in set (0.00 sec)

mysql> select employee_name,salary from  employee_activity order by salary desc limit 3;
+---------------+----------+
| employee_name | salary   |
+---------------+----------+
| rahul mehta   | 95000.00 |
| VIKAS PATEL   | 85000.00 |
| AMIT SHARMA   | 75000.00 |
+---------------+----------+
3 rows in set (0.00 sec)

mysql> select * from employee_activity where name like '%a%' and skills in('python','ai_ml');
ERROR 1054 (42S22): Unknown column 'name' in 'where clause'
mysql> select * from employee_activity where employee_name like '%a%' and skills in('python','ai_ml');
Empty set (0.00 sec)

mysql> select * from employee_activity where employee_name like '%a%' and skills like '%python%',or skills like '%ai_ml%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',or skills like '%ai_ml%'' at line 1
mysql> select * from employee_activity where employee_name like '%a%' and skills like '%python%',or skills like '%ai_ml%';^C
mysql> select * from employee_activity where employee_name like '%a%' and skills like '%python%' or skills like '%ai_ml%';
+-------------+---------------+------------+----------+-------------------+------------------------+---------------------+---------------------+-----------------------+--------+
| employee_id | employee_name | department | salary   | employeement_type | skills                 | joining_date        | updated_at          | email                 | city   |
+-------------+---------------+------------+----------+-------------------+------------------------+---------------------+---------------------+-----------------------+--------+
|           1 | AMIT SHARMA   | IT         | 75000.00 | FULL_TIME         | PYTHON,MYSQL,AI_ML     | 2026-08-25 10:38:16 | 2026-08-25 10:38:16 | amit.sharma@gmail.com | INDORE |
|           3 | rahul mehta   | IT         | 95000.00 | CONTRACT          | PYTHON,JAVA,AWS        | 2026-08-25 10:38:16 | 2026-08-25 10:38:16 | rahul.mehta@gmail.com | INDORE |
|           4 | NEHA JOSHI    | FINANCE    | 68000.00 | PART_TIME         | MYSQL,AI_ML            | 2026-08-25 10:38:16 | 2026-08-25 10:38:16 | neha.joshi@yahoo.com  | PUNE   |
|           5 | VIKAS PATEL   | IT         | 85000.00 | FULL_TIME         | PYTHON,REACT,AWS,AI_ML | 2026-08-25 10:38:16 | 2026-08-25 10:38:16 | vikas.patel@gmail.com | MUMBAI |
+-------------+---------------+------------+----------+-------------------+------------------------+---------------------+---------------------+-----------------------+--------+
4 rows in set (0.00 sec)
