mysql> use ecommerce;
Database changed
mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| demo                |
| orders              |
| product             |
+---------------------+
4 rows in set (0.07 sec)

mysql> select * from customer;
+-------------+---------------+--------+--------------------+---------+------------+----------+---------+-------+---------+
| customer_id | customer_name | city   | email              | address | phone_n0   | pin_code | bill_no | state | country |
+-------------+---------------+--------+--------------------+---------+------------+----------+---------+-------+---------+
| C101        | harshali      | mumbai | harshali@gmail.com | kalyan  | 8956570655 |   400612 |       0 |       |         |
| C102        | sayli         | thane  | sayli@gmail.com    | kalyan  | 5677865432 |   400612 |       0 |       |         |
+-------------+---------------+--------+--------------------+---------+------------+----------+---------+-------+---------+
2 rows in set (0.01 sec)

mysql> update customer set phone_n0 = '9876543567' where customer_id='C101';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customer;
+-------------+---------------+--------+--------------------+---------+------------+----------+---------+-------+---------+
| customer_id | customer_name | city   | email              | address | phone_n0   | pin_code | bill_no | state | country |
+-------------+---------------+--------+--------------------+---------+------------+----------+---------+-------+---------+
| C101        | harshali      | mumbai | harshali@gmail.com | kalyan  | 9876543567 |   400612 |       0 |       |         |
| C102        | sayli         | thane  | sayli@gmail.com    | kalyan  | 5677865432 |   400612 |       0 |       |         |
+-------------+---------------+--------+--------------------+---------+------------+----------+---------+-------+---------+
2 rows in set (0.00 sec)

mysql> select * from customer where customer_name like '%al';
Empty set (0.01 sec)

mysql> select * from customer where customer_name like '%li';
+-------------+---------------+--------+--------------------+---------+------------+----------+---------+-------+---------+
| customer_id | customer_name | city   | email              | address | phone_n0   | pin_code | bill_no | state | country |
+-------------+---------------+--------+--------------------+---------+------------+----------+---------+-------+---------+
| C101        | harshali      | mumbai | harshali@gmail.com | kalyan  | 9876543567 |   400612 |       0 |       |         |
| C102        | sayli         | thane  | sayli@gmail.com    | kalyan  | 5677865432 |   400612 |       0 |       |         |
+-------------+---------------+--------+--------------------+---------+------------+----------+---------+-------+---------+
2 rows in set (0.00 sec)

mysql> select * from customer where customer_name like '%ha%';
+-------------+---------------+--------+--------------------+---------+------------+----------+---------+-------+---------+
| customer_id | customer_name | city   | email              | address | phone_n0   | pin_code | bill_no | state | country |
+-------------+---------------+--------+--------------------+---------+------------+----------+---------+-------+---------+
| C101        | harshali      | mumbai | harshali@gmail.com | kalyan  | 9876543567 |   400612 |       0 |       |         |
+-------------+---------------+--------+--------------------+---------+------------+----------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_name like '%yl%';
+-------------+---------------+-------+-----------------+---------+------------+----------+---------+-------+---------+
| customer_id | customer_name | city  | email           | address | phone_n0   | pin_code | bill_no | state | country |
+-------------+---------------+-------+-----------------+---------+------------+----------+---------+-------+---------+
| C102        | sayli         | thane | sayli@gmail.com | kalyan  | 5677865432 |   400612 |       0 |       |         |
+-------------+---------------+-------+-----------------+---------+------------+----------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_name like 'ha%';
+-------------+---------------+--------+--------------------+---------+------------+----------+---------+-------+---------+
| customer_id | customer_name | city   | email              | address | phone_n0   | pin_code | bill_no | state | country |
+-------------+---------------+--------+--------------------+---------+------------+----------+---------+-------+---------+
| C101        | harshali      | mumbai | harshali@gmail.com | kalyan  | 9876543567 |   400612 |       0 |       |         |
+-------------+---------------+--------+--------------------+---------+------------+----------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_name like 'h______';
Empty set (0.00 sec)

mysql> select * from customer where customer_name like 'h_______';
+-------------+---------------+--------+--------------------+---------+------------+----------+---------+-------+---------+
| customer_id | customer_name | city   | email              | address | phone_n0   | pin_code | bill_no | state | country |
+-------------+---------------+--------+--------------------+---------+------------+----------+---------+-------+---------+
| C101        | harshali      | mumbai | harshali@gmail.com | kalyan  | 9876543567 |   400612 |       0 |       |         |
+-------------+---------------+--------+--------------------+---------+------------+----------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where address like 'k_____';
+-------------+---------------+--------+--------------------+---------+------------+----------+---------+-------+---------+
| customer_id | customer_name | city   | email              | address | phone_n0   | pin_code | bill_no | state | country |
+-------------+---------------+--------+--------------------+---------+------------+----------+---------+-------+---------+
| C101        | harshali      | mumbai | harshali@gmail.com | kalyan  | 9876543567 |   400612 |       0 |       |         |
| C102        | sayli         | thane  | sayli@gmail.com    | kalyan  | 5677865432 |   400612 |       0 |       |         |
+-------------+---------------+--------+--------------------+---------+------------+----------+---------+-------+---------+
2 rows in set (0.00 sec)


mysql> desc customer;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| customer_id   | varchar(10)  | NO   | PRI | NULL    |       |
| customer_name | varchar(10)  | NO   |     | NULL    |       |
| city          | varchar(10)  | NO   |     | NULL    |       |
| email         | varchar(20)  | NO   |     | NULL    |       |
| address       | varchar(100) | NO   |     | NULL    |       |
| phone_n0      | varchar(10)  | NO   |     | NULL    |       |
| pin_code      | int          | NO   |     | NULL    |       |
| bill_no       | int          | NO   |     | NULL    |       |
| state         | varchar(10)  | NO   |     | NULL    |       |
| country       | varchar(10)  | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
10 rows in set (0.01 sec)

mysql> alter table customer change column state state varchar(20) not null;
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| customer_id   | varchar(10)  | NO   | PRI | NULL    |       |
| customer_name | varchar(10)  | NO   |     | NULL    |       |
| city          | varchar(10)  | NO   |     | NULL    |       |
| email         | varchar(20)  | NO   |     | NULL    |       |
| address       | varchar(100) | NO   |     | NULL    |       |
| phone_n0      | varchar(10)  | NO   |     | NULL    |       |
| pin_code      | int          | NO   |     | NULL    |       |
| bill_no       | int          | NO   |     | NULL    |       |
| state         | varchar(20)  | NO   |     | NULL    |       |
| country       | varchar(10)  | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
10 rows in set (0.00 sec)


mysql> INSERT INTO customer
    -> VALUES
    -> ('C104','ashu','pune','ashu@gmail.com','shanivarvada','4567892345','456765','3','maharashtra','India');
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO customer
    -> VALUES
    -> ('C105','maya','nashik','maya@gmail.com','mumbai naka','4567892356','456745','3','maharashtra','India');
Query OK, 1 row affected (0.04 sec)

mysql> select * from customer;
+-------------+---------------+--------+--------------------+--------------+------------+----------+---------+-------------+---------+
| customer_id | customer_name | city   | email              | address      | phone_n0   | pin_code | bill_no | state       | country |
+-------------+---------------+--------+--------------------+--------------+------------+----------+---------+-------------+---------+
| C101        | harshali      | mumbai | harshali@gmail.com | kalyan       | 9876543567 |   400612 |       0 |             |         |
| C102        | sayli         | thane  | sayli@gmail.com    | kalyan       | 5677865432 |   400612 |       0 |             |         |
| C104        | ashu          | pune   | ashu@gmail.com     | shanivarvada | 4567892345 |   456765 |       3 | maharashtra | India   |
| C105        | maya          | nashik | maya@gmail.com     | mumbai naka  | 4567892356 |   456745 |       3 | maharashtra | India   |
+-------------+---------------+--------+--------------------+--------------+------------+----------+---------+-------------+---------+
4 rows in set (0.00 sec)

mysql> select distinct city from customer;
+--------+
| city   |
+--------+
| mumbai |
| thane  |
| pune   |
| nashik |
+--------+
4 rows in set (0.00 sec)

mysql> desc product;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| product_id     | varchar(10) | NO   | PRI | NULL    |       |
| product_name   | varchar(20) | NO   |     | NULL    |       |
| categpry       | varchar(10) | NO   |     | NULL    |       |
| sub_category   | varchar(10) | NO   |     | NULL    |       |
| original_price | double      | NO   |     | NULL    |       |
| selling_price  | double      | NO   |     | NULL    |       |
| stock          | int         | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql> desc customer;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| customer_id   | varchar(10)  | NO   | PRI | NULL    |       |
| customer_name | varchar(10)  | NO   |     | NULL    |       |
| city          | varchar(10)  | NO   |     | NULL    |       |
| email         | varchar(20)  | NO   |     | NULL    |       |
| address       | varchar(100) | NO   |     | NULL    |       |
| phone_n0      | varchar(10)  | NO   |     | NULL    |       |
| pin_code      | int          | NO   |     | NULL    |       |
| bill_no       | int          | NO   |     | NULL    |       |
| state         | varchar(20)  | NO   |     | NULL    |       |
| country       | varchar(10)  | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

mysql> select * from customer where bill_no<4;
+-------------+---------------+--------+--------------------+--------------+------------+----------+---------+-------------+---------+
| customer_id | customer_name | city   | email              | address      | phone_n0   | pin_code | bill_no | state       | country |
+-------------+---------------+--------+--------------------+--------------+------------+----------+---------+-------------+---------+
| C101        | harshali      | mumbai | harshali@gmail.com | kalyan       | 9876543567 |   400612 |       0 |             |         |
| C102        | sayli         | thane  | sayli@gmail.com    | kalyan       | 5677865432 |   400612 |       0 |             |         |
| C104        | ashu          | pune   | ashu@gmail.com     | shanivarvada | 4567892345 |   456765 |       3 | maharashtra | India   |
| C105        | maya          | nashik | maya@gmail.com     | mumbai naka  | 4567892356 |   456745 |       3 | maharashtra | India   |
+-------------+---------------+--------+--------------------+--------------+------------+----------+---------+-------------+---------+
4 rows in set (0.00 sec)

mysql> select * from customer where bill_no<=4;
+-------------+---------------+--------+--------------------+--------------+------------+----------+---------+-------------+---------+
| customer_id | customer_name | city   | email              | address      | phone_n0   | pin_code | bill_no | state       | country |
+-------------+---------------+--------+--------------------+--------------+------------+----------+---------+-------------+---------+
| C101        | harshali      | mumbai | harshali@gmail.com | kalyan       | 9876543567 |   400612 |       0 |             |         |
| C102        | sayli         | thane  | sayli@gmail.com    | kalyan       | 5677865432 |   400612 |       0 |             |         |
| C104        | ashu          | pune   | ashu@gmail.com     | shanivarvada | 4567892345 |   456765 |       3 | maharashtra | India   |
| C105        | maya          | nashik | maya@gmail.com     | mumbai naka  | 4567892356 |   456745 |       3 | maharashtra | India   |
+-------------+---------------+--------+--------------------+--------------+------------+----------+---------+-------------+---------+
4 rows in set (0.00 sec)

mysql> select * from customer where bill_no>=4;
Empty set (0.00 sec)

mysql> select * from customer where customer_id between 'C102' and 'C105';
+-------------+---------------+--------+-----------------+--------------+------------+----------+---------+-------------+---------+
| customer_id | customer_name | city   | email           | address      | phone_n0   | pin_code | bill_no | state       | country |
+-------------+---------------+--------+-----------------+--------------+------------+----------+---------+-------------+---------+
| C102        | sayli         | thane  | sayli@gmail.com | kalyan       | 5677865432 |   400612 |       0 |             |         |
| C104        | ashu          | pune   | ashu@gmail.com  | shanivarvada | 4567892345 |   456765 |       3 | maharashtra | India   |
| C105        | maya          | nashik | maya@gmail.com  | mumbai naka  | 4567892356 |   456745 |       3 | maharashtra | India   |
+-------------+---------------+--------+-----------------+--------------+------------+----------+---------+-------------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer where customer_id not between 'C103' and 'C104';
+-------------+---------------+--------+--------------------+-------------+------------+----------+---------+-------------+---------+
| customer_id | customer_name | city   | email              | address     | phone_n0   | pin_code | bill_no | state       | country |
+-------------+---------------+--------+--------------------+-------------+------------+----------+---------+-------------+---------+
| C101        | harshali      | mumbai | harshali@gmail.com | kalyan      | 9876543567 |   400612 |       0 |             |         |
| C102        | sayli         | thane  | sayli@gmail.com    | kalyan      | 5677865432 |   400612 |       0 |             |         |
| C105        | maya          | nashik | maya@gmail.com     | mumbai naka | 4567892356 |   456745 |       3 | maharashtra | India   |
+-------------+---------------+--------+--------------------+-------------+------------+----------+---------+-------------+---------+
3 rows in set (0.00 sec)

mysql>  select * from customer;
+-------------+---------------+--------+--------------------+--------------+------------+----------+---------+-------------+---------+
| customer_id | customer_name | city   | email              | address      | phone_n0   | pin_code | bill_no | state       | country |
+-------------+---------------+--------+--------------------+--------------+------------+----------+---------+-------------+---------+
| C101        | harshali      | mumbai | harshali@gmail.com | kalyan       | 9876543567 |   400612 |       0 |             |         |
| C102        | sayli         | thane  | sayli@gmail.com    | kalyan       | 5677865432 |   400612 |       0 |             |         |
| C104        | ashu          | pune   | ashu@gmail.com     | shanivarvada | 4567892345 |   456765 |       3 | maharashtra | India   |
| C105        | maya          | nashik | maya@gmail.com     | mumbai naka  | 4567892356 |   456745 |       3 | maharashtra | India   |
+-------------+---------------+--------+--------------------+--------------+------------+----------+---------+-------------+---------+
4 rows in set (0.00 sec)

mysql> select * from customer where customer_id in ('C101','C104','C105');
+-------------+---------------+--------+--------------------+--------------+------------+----------+---------+-------------+---------+
| customer_id | customer_name | city   | email              | address      | phone_n0   | pin_code | bill_no | state       | country |
+-------------+---------------+--------+--------------------+--------------+------------+----------+---------+-------------+---------+
| C101        | harshali      | mumbai | harshali@gmail.com | kalyan       | 9876543567 |   400612 |       0 |             |         |
| C104        | ashu          | pune   | ashu@gmail.com     | shanivarvada | 4567892345 |   456765 |       3 | maharashtra | India   |
| C105        | maya          | nashik | maya@gmail.com     | mumbai naka  | 4567892356 |   456745 |       3 | maharashtra | India   |
+-------------+---------------+--------+--------------------+--------------+------------+----------+---------+-------------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer where email is not null;
+-------------+---------------+--------+--------------------+--------------+------------+----------+---------+-------------+---------+
| customer_id | customer_name | city   | email              | address      | phone_n0   | pin_code | bill_no | state       | country |
+-------------+---------------+--------+--------------------+--------------+------------+----------+---------+-------------+---------+
| C101        | harshali      | mumbai | harshali@gmail.com | kalyan       | 9876543567 |   400612 |       0 |             |         |
| C102        | sayli         | thane  | sayli@gmail.com    | kalyan       | 5677865432 |   400612 |       0 |             |         |
| C104        | ashu          | pune   | ashu@gmail.com     | shanivarvada | 4567892345 |   456765 |       3 | maharashtra | India   |
| C105        | maya          | nashik | maya@gmail.com     | mumbai naka  | 4567892356 |   456745 |       3 | maharashtra | India   |
+-------------+---------------+--------+--------------------+--------------+------------+----------+---------+-------------+---------+
4 rows in set (0.00 sec)
