Q. MySQL Commands for Customer and Demo Table   

show databases; → Displays all databases. 
use ecommerce; → Selects ecommerce database. 
desc customer; → Shows table structure. 
insert into → Adds records into table. 
select → Retrieves data from table. 
alter table → Changes table structure. 
modify → Changes datatype or constraints. 
add → Adds new column. 
change column → Renames column. 
primary key → Unique identifier for records. 
delete → Removes selected rows. 
truncate → Deletes all rows but keeps structure.

mysql> show databases;  ---- Show all databases
+---------------------------+
| Database                  |
+---------------------------+
| ecommerce                 |
| information_schema        |
| mysql                     |
| performance_schema        |
| student_management_system |
| sys                       |
+---------------------------+
6 rows in set (0.17 sec)

mysql> use ecommerce;        ---- Select database
Database changed
mysql> desc customer;          ----Display structure of customer table
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| customer_id | varchar(5)   | NO   | PRI | NULL    |       |
| name        | varchar(10)  | NO   |     | NULL    |       |
| city        | varchar(10)  | NO   |     | NULL    |       |
| address     | varchar(100) | NO   |     | NULL    |       |
| phone_no    | varchar(10)  | NO   |     | NULL    |       |
| pin_code    | int          | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
6 rows in set (0.06 sec)

mysql> select * from customer;   ---Display all records from customer table
Empty set (0.05 sec)

-- Display all records from customer table
mysql> insert into customer(customer_id,name,city,address,phone_no,pin_code) value('C101','harshali','mumbai','kalyan vayle nagar','8956543286','423303');      
Query OK, 1 row affected (0.03 sec)

mysql> select * from customer;   ---Insert record into customer table
+-------------+----------+--------+--------------------+------------+----------+
| customer_id | name     | city   | address            | phone_no   | pin_code |
+-------------+----------+--------+--------------------+------------+----------+
| C101        | harshali | mumbai | kalyan vayle nagar | 8956543286 |   423303 |
+-------------+----------+--------+--------------------+------------+----------+
1 row in set (0.00 sec)

mysql> select customer_id, name from customer;  --- . Select specific columns
+-------------+----------+
| customer_id | name     |
+-------------+----------+
| C101        | harshali |
+-------------+----------+
1 row in set (0.00 sec)

mysql> insert into customer value('C102','ashuwini','nashik','nashik road',4321567438,'423302');  ---Insert values without column names
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer value('C103','akshra','pune','nashik raka',3456213458,'433215');
Query OK, 1 row affected (0.00 sec)

mysql> select * from customer;
+-------------+----------+--------+--------------------+------------+----------+
| customer_id | name     | city   | address            | phone_no   | pin_code |
+-------------+----------+--------+--------------------+------------+----------+
| C101        | harshali | mumbai | kalyan vayle nagar | 8956543286 |   423303 |
| C102        | ashuwini | nashik | nashik road        | 4321567438 |   423302 |
| C103        | akshra   | pune   | nashik raka        | 3456213458 |   433215 |
+-------------+----------+--------+--------------------+------------+----------+
3 rows in set (0.00 sec)

mysql> desc customer;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| customer_id | varchar(5)   | NO   | PRI | NULL    |       |
| name        | varchar(10)  | NO   |     | NULL    |       |
| city        | varchar(10)  | NO   |     | NULL    |       |
| address     | varchar(100) | NO   |     | NULL    |       |
| phone_no    | varchar(10)  | NO   |     | NULL    |       |
| pin_code    | int          | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> alter table customer modify customer_id varchar(10) not null;   -- Modify datatype of column
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| customer_id | varchar(10)  | NO   | PRI | NULL    |       |
| name        | varchar(10)  | NO   |     | NULL    |       |
| city        | varchar(10)  | NO   |     | NULL    |       |
| address     | varchar(100) | NO   |     | NULL    |       |
| phone_no    | varchar(10)  | NO   |     | NULL    |       |
| pin_code    | int          | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

mysql> alter table customer add bill_no int not null;    --Add new column
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| customer_id | varchar(10)  | NO   | PRI | NULL    |       |
| name        | varchar(10)  | NO   |     | NULL    |       |
| city        | varchar(10)  | NO   |     | NULL    |       |
| address     | varchar(100) | NO   |     | NULL    |       |
| phone_no    | varchar(10)  | NO   |     | NULL    |       |
| pin_code    | int          | NO   |     | NULL    |       |
| bill_no     | int          | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> alter table customer add state varchar(10) not null,add country varchar(10) not null;   ---Add multiple columns
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| customer_id | varchar(10)  | NO   | PRI | NULL    |       |
| name        | varchar(10)  | NO   |     | NULL    |       |
| city        | varchar(10)  | NO   |     | NULL    |       |
| address     | varchar(100) | NO   |     | NULL    |       |
| phone_no    | varchar(10)  | NO   |     | NULL    |       |
| pin_code    | int          | NO   |     | NULL    |       |
| bill_no     | int          | NO   |     | NULL    |       |
| state       | varchar(10)  | NO   |     | NULL    |       |
| country     | varchar(10)  | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
9 rows in set (0.00 sec)

mysql> alter table customer change column name customer_name varchar(10) not null;      ---Rename column
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| customer_id   | varchar(10)  | NO   | PRI | NULL    |       |
| customer_name | varchar(10)  | NO   |     | NULL    |       |
| city          | varchar(10)  | NO   |     | NULL    |       |
| address       | varchar(100) | NO   |     | NULL    |       |
| phone_no      | varchar(10)  | NO   |     | NULL    |       |
| pin_code      | int          | NO   |     | NULL    |       |
| bill_no       | int          | NO   |     | NULL    |       |
| state         | varchar(10)  | NO   |     | NULL    |       |
| country       | varchar(10)  | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
9 rows in set (0.00 sec)

mysql> create table demo(id varchar(5) not null primary key,name varchar(20) not null);   -- Create table demo
Query OK, 0 rows affected (0.03 sec)

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(5)  | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> alter table demo drop primary key;   --Drop primary key
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(5)  | NO   |     | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> alter table demo add primary key(id);   --Add primary key
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(5)  | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> show databases;
+---------------------------+
| Database                  |
+---------------------------+
| ecommerce                 |
| information_schema        |
| mysql                     |
| performance_schema        |
| student_management_system |
| sys                       |
+---------------------------+
6 rows in set (0.00 sec)

mysql> use ecommerce;
Database changed
mysql> select * from customer;
+-------------+---------------+--------+--------------------+------------+----------+---------+-------+---------+
| customer_id | customer_name | city   | address            | phone_no   | pin_code | bill_no | state | country |
+-------------+---------------+--------+--------------------+------------+----------+---------+-------+---------+
| C101        | harshali      | mumbai | kalyan vayle nagar | 8956543286 |   423303 |       0 |       |         |
| C102        | ashuwini      | nashik | nashik road        | 4321567438 |   423302 |       0 |       |         |
| C103        | akshra        | pune   | nashik raka        | 3456213458 |   433215 |       0 |       |         |
+-------------+---------------+--------+--------------------+------------+----------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> delete from customer where customer_id = 'C103';   ---Delete specific record
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+-------------+---------------+--------+--------------------+------------+----------+---------+-------+---------+
| customer_id | customer_name | city   | address            | phone_no   | pin_code | bill_no | state | country |
+-------------+---------------+--------+--------------------+------------+----------+---------+-------+---------+
| C101        | harshali      | mumbai | kalyan vayle nagar | 8956543286 |   423303 |       0 |       |         |
| C102        | ashuwini      | nashik | nashik road        | 4321567438 |   423302 |       0 |       |         |
+-------------+---------------+--------+--------------------+------------+----------+---------+-------+---------+
2 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+---------------+--------+--------------------+------------+----------+---------+-------+---------+
| customer_id | customer_name | city   | address            | phone_no   | pin_code | bill_no | state | country |
+-------------+---------------+--------+--------------------+------------+----------+---------+-------+---------+
| C101        | harshali      | mumbai | kalyan vayle nagar | 8956543286 |   423303 |       0 |       |         |
| C102        | ashuwini      | nashik | nashik road        | 4321567438 |   423302 |       0 |       |         |
+-------------+---------------+--------+--------------------+------------+----------+---------+-------+---------+
2 rows in set (0.00 sec)

mysql> insert into demo values('101','harshu');  ---Insert data into demo table
Query OK, 1 row affected (0.00 sec)

mysql> select * from demo;
+-----+--------+
| id  | name   |
+-----+--------+
| 101 | harshu |
+-----+--------+
1 row in set (0.00 sec)

mysql> truncate table demo;      ---Remove all records from table
Query OK, 0 rows affected (0.03 sec)

mysql> select * from demo;
Empty set (0.00 sec)

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(5)  | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

