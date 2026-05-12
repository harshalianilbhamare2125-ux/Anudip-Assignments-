
mysql> create database aggregation;
Query OK, 1 row affected (3.94 sec)

mysql> use aggregation;
Database changed

mysql> create table product(
    ->     product_id varchar(10) not null primary key,
    ->     product_name varchar(20) not null,
    ->     category varchar(20) not null,
    ->     selling_price double(12,2) not null,
    ->     original_price double(12,2) not null,
    ->     stock int not null
    -> );
Query OK, 0 rows affected, 2 warnings (0.21 sec)

mysql> desc product;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| product_id     | varchar(10)  | NO   | PRI | NULL    |       |
| product_name   | varchar(20)  | NO   |     | NULL    |       |
| category       | varchar(20)  | NO   |     | NULL    |       |
| selling_price  | double(12,2) | NO   |     | NULL    |       |
| original_price | double(12,2) | NO   |     | NULL    |       |
| stock          | int          | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
6 rows in set (0.07 sec)

mysql> insert into product values('P101','chair','furniture',6000,5000,12);
Query OK, 1 row affected (0.03 sec)

mysql> insert into product values('P102','table','furniture',8000,7500,14),('P103','Mobile','Electronics',20000,17000,20),('P104','jeans','clothing',2000,15000,14),('P105','WEBCAM','Electronics',6000,5500,13);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from product;
+------------+--------------+-------------+---------------+----------------+-------+
| product_id | product_name | category    | selling_price | original_price | stock |
+------------+--------------+-------------+---------------+----------------+-------+
| P101       | chair        | furniture   |       6000.00 |        5000.00 |    12 |
| P102       | table        | furniture   |       8000.00 |        7500.00 |    14 |
| P103       | Mobile       | Electronics |      20000.00 |       17000.00 |    20 |
| P104       | jeans        | clothing    |       2000.00 |       15000.00 |    14 |
| P105       | WEBCAM       | Electronics |       6000.00 |        5500.00 |    13 |
+------------+--------------+-------------+---------------+----------------+-------+
5 rows in set (0.00 sec)

mysql> select sum(selling_price)from product;
+--------------------+
| sum(selling_price) |
+--------------------+
|           42000.00 |
+--------------------+
1 row in set (0.01 sec)

mysql> select AVG(selling_price)from product;
+--------------------+
| AVG(selling_price) |
+--------------------+
|        8400.000000 |
+--------------------+
1 row in set (0.00 sec)

mysql> select count(*) from product;
+----------+
| count(*) |
+----------+
|        5 |
+----------+
1 row in set (0.02 sec)

mysql> select MAX(stock)from product;
+------------+
| MAX(stock) |
+------------+
|         20 |
+------------+
1 row in set (0.00 sec)

mysql> select MIN(stock)from product;
+------------+
| MIN(stock) |
+------------+
|         12 |
+------------+
1 row in set (0.00 sec)

mysql> select * from product ORDER BY stock;
+------------+--------------+-------------+---------------+----------------+-------+
| product_id | product_name | category    | selling_price | original_price | stock |
+------------+--------------+-------------+---------------+----------------+-------+
| P101       | chair        | furniture   |       6000.00 |        5000.00 |    12 |
| P105       | WEBCAM       | Electronics |       6000.00 |        5500.00 |    13 |
| P102       | table        | furniture   |       8000.00 |        7500.00 |    14 |
| P104       | jeans        | clothing    |       2000.00 |       15000.00 |    14 |
| P103       | Mobile       | Electronics |      20000.00 |       17000.00 |    20 |
+------------+--------------+-------------+---------------+----------------+-------+
5 rows in set (0.00 sec)

mysql> select * from product ORDER BY stock desc;
+------------+--------------+-------------+---------------+----------------+-------+
| product_id | product_name | category    | selling_price | original_price | stock |
+------------+--------------+-------------+---------------+----------------+-------+
| P103       | Mobile       | Electronics |      20000.00 |       17000.00 |    20 |
| P102       | table        | furniture   |       8000.00 |        7500.00 |    14 |
| P104       | jeans        | clothing    |       2000.00 |       15000.00 |    14 |
| P105       | WEBCAM       | Electronics |       6000.00 |        5500.00 |    13 |
| P101       | chair        | furniture   |       6000.00 |        5000.00 |    12 |
+------------+--------------+-------------+---------------+----------------+-------+
5 rows in set (0.00 sec)

mysql> select * from product ORDER BY stock DESC LIMIT 3;
+------------+--------------+-------------+---------------+----------------+-------+
| product_id | product_name | category    | selling_price | original_price | stock |
+------------+--------------+-------------+---------------+----------------+-------+
| P103       | Mobile       | Electronics |      20000.00 |       17000.00 |    20 |
| P102       | table        | furniture   |       8000.00 |        7500.00 |    14 |
| P104       | jeans        | clothing    |       2000.00 |       15000.00 |    14 |
+------------+--------------+-------------+---------------+----------------+-------+
3 rows in set (0.00 sec)


mysql> CREATE TABLE employee(employee_id varchar(10) not null primary key,employee_name varchar(20) not null,department varchar(20) not null,salary int not null);
Query OK, 0 rows affected (0.05 sec)

mysql> insert into employee values
    -> ('E101','Harshu','HR',40000),
    -> ('E102','Riya','IT',60000),
    -> ('E103','Rahul','HR',70000),
    -> ('E104','Sneha','Sales',50000),
    -> ('E105','Aman','Finance',55000);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT
    -> * from employee;
+-------------+---------------+------------+--------+
| employee_id | employee_name | department | salary |
+-------------+---------------+------------+--------+
| E101        | Harshu        | HR         |  40000 |
| E102        | Riya          | IT         |  60000 |
| E103        | Rahul         | HR         |  70000 |
| E104        | Sneha         | Sales      |  50000 |
| E105        | Aman          | Finance    |  55000 |
+-------------+---------------+------------+--------+
5 rows in set (0.00 sec)

mysql> select department,Count(*)as toatal_employees from employee group by department;
+------------+------------------+
| department | toatal_employees |
+------------+------------------+
| HR         |                2 |
| IT         |                1 |
| Sales      |                1 |
| Finance    |                1 |
+------------+------------------+
4 rows in set (0.00 sec)

mysql> select department,SUM(salary)AS total_salary from employee group by department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |       110000 |
| IT         |        60000 |
| Sales      |        50000 |
| Finance    |        55000 |
+------------+--------------+
4 rows in set (0.00 sec)

mysql> select department,AVG(salary)AS AVERAGE_SALARY FROM employee group by department;
+------------+----------------+
| department | AVERAGE_SALARY |
+------------+----------------+
| HR         |     55000.0000 |
| IT         |     60000.0000 |
| Sales      |     50000.0000 |
| Finance    |     55000.0000 |
+------------+----------------+
4 rows in set (0.00 sec)

mysql> select department, salary,count(*) from employee group by department, salary;
+------------+--------+----------+
| department | salary | count(*) |
+------------+--------+----------+
| HR         |  40000 |        1 |
| IT         |  60000 |        1 |
| HR         |  70000 |        1 |
| Sales      |  50000 |        1 |
| Finance    |  55000 |        1 |
+------------+--------+----------+
5 rows in set (0.00 sec)

mysql> select * from employee;
+-------------+---------------+------------+--------+
| employee_id | employee_name | department | salary |
+-------------+---------------+------------+--------+
| E101        | Harshu        | HR         |  40000 |
| E102        | Riya          | IT         |  60000 |
| E103        | Rahul         | HR         |  70000 |
| E104        | Sneha         | Sales      |  50000 |
| E105        | Aman          | Finance    |  55000 |
+-------------+---------------+------------+--------+
5 rows in set (0.00 sec)

mysql> select * from employee;
+-------------+---------------+------------+--------+
| employee_id | employee_name | department | salary |
+-------------+---------------+------------+--------+
| E101        | Harshu        | HR         |  40000 |
| E102        | Riya          | IT         |  60000 |
| E103        | Rahul         | HR         |  70000 |
| E104        | Sneha         | Sales      |  50000 |
| E105        | Aman          | Finance    |  55000 |
+-------------+---------------+------------+--------+
5 rows in set (0.00 sec)

mysql> select department, count(*)as total_employee from employee group by department having count(*) >1;
+------------+----------------+
| department | total_employee |
+------------+----------------+
| HR         |              2 |
+------------+----------------+
1 row in set (0.00 sec)

mysql> select department, SUM(salary)as total_salary from employee by department having sum(salary)> 8000;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'by department having sum(salary)> 8000' at line 1
mysql> select department,
    -> SUM(salary) as total_salary
    -> from employee
    -> group by department
    -> having SUM(salary) > 8000;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |       110000 |
| IT         |        60000 |
| Sales      |        50000 |
| Finance    |        55000 |
+------------+--------------+
4 rows in set (0.00 sec)

mysql> select department,sum(salary)as total_salary from employee group by department having sum(salary) >2000;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |       110000 |
| IT         |        60000 |
| Sales      |        50000 |
| Finance    |        55000 |
+------------+--------------+
4 rows in set (0.00 sec)

mysql> select department,AVG(salary)as Average_salary from employee group by department having avg(salary) >5000;
+------------+----------------+
| department | Average_salary |
+------------+----------------+
| HR         |     55000.0000 |
| IT         |     60000.0000 |
| Sales      |     50000.0000 |
| Finance    |     55000.0000 |
+------------+----------------+
4 rows in set (0.00 sec)