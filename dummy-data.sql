
<---------------------------------------- EXPERINMENT_NO : 2 ----------------------------------------->
    
INSERT INTO user (id, name, email_id, ph_no, role, password) VALUES
('admin1', 'Admin User', 'admin@college.edu', '9876543210', 'admin', 'adminpass'),
('staff1', 'Class Staff', 'staff@college.edu', '9876543211', 'staff', 'staffpass');

INSERT INTO class (id, name, section, year, created_by, updated_by) VALUES
('class_csa_s5', 'CSA S5 CSE', 'A', '2023', 'admin1', 'admin1');

INSERT INTO student (id, name, email_id, ph_no, roll_no, class_id, created_by, updated_by) VALUES
('stu_001', 'Sabin', 'sabin@college.edu', '9447823456', 52, 'class_csa_s5', 'staff1', 'staff1'),
('stu_002', 'Gautham', 'gautham@college.edu', '9447823457', 33, 'class_csa_s5', 'staff1', 'staff1'),
('stu_003', 'Geo', 'geo@college.edu', '9447823458', 34, 'class_csa_s5', 'staff1', 'staff1'),
('stu_004', 'Shawkath', 'shawkath@college.edu', '9447823459', 44, 'class_csa_s5', 'staff1', 'staff1'),
('stu_005', 'Sherin', 'sherin@college.edu', '9447823460', 54, 'class_csa_s5', 'staff1', 'staff1'),
('stu_006', 'Madhan', 'madhan@college.edu', '9447823461', 56, 'class_csa_s5', 'staff1', 'staff1'),
('stu_007', 'Amil', 'amil@college.edu', '9447823462', 18, 'class_csa_s5', 'staff1', 'staff1');

INSERT INTO fund_transaction (id, class_id, transaction_type, amount, description, reference_id, transaction_date, created_by) VALUES
('ft_001', 'class_csa_s5', 'DEPOSIT', 50000.00, 'Class Fund Opening', 'REF001', '2023-09-01', 'staff1'),
('ft_002', 'class_csa_s5', 'EXPENSE', 12000.00, 'Lab Equipment', 'REF002', '2023-09-05', 'staff1'),
('ft_003', 'class_csa_s5', 'DEPOSIT', 25000.00, 'College Grant', 'REF003', '2023-09-10', 'staff1');

INSERT INTO fund_balance (id, class_id, balance) VALUES
('fb_001', 'class_csa_s5', 63000.00);

INSERT INTO event_details (id, name, type, cost, description, event_date, deadline, class_id, created_by, updated_by)
VALUES
('event_001', 'Tech Fest', 'Academic', 300, 'Department Event', '2023-10-20 10:00:00', '2023-10-15', 'class_csa_s5', 'staff1', 'staff1'),
('event_002', 'Farewell', 'Social', 200, 'Class farewell event', '2023-11-10 15:00:00', '2023-11-05', 'class_csa_s5', 'staff1', 'staff1');

INSERT INTO payment (id, student_id, payment_method, total_amt, payment_status, transaction_id, reciept_number, notes, updated_by, created_by)
VALUES
('pay_001', 'stu_001', 'Cash', 300, 'Paid', 1111, 5001, 'Paid for Tech Fest', 'staff1', 'staff1'),
('pay_002', 'stu_002', 'Online', 300, 'Paid', 1112, 5002, 'Paid for Tech Fest', 'staff1', 'staff1'),
('pay_003', 'stu_003', 'UPI', 200, 'Paid', 1113, 5003, 'Paid for Farewell', 'staff1', 'staff1'),
('pay_004', 'stu_004', 'Online', 500, 'Paid', 1114, 5004, 'Paid for both events', 'staff1', 'staff1');

INSERT INTO payment_details (id, payment_id, event_id, amount, discount, final_amt)
VALUES
('pd_001', 'pay_001', 'event_001', 300, 0, 300),
('pd_002', 'pay_002', 'event_001', 300, 0, 300),
('pd_003', 'pay_003', 'event_002', 200, 0, 200),
('pd_004', 'pay_004', 'event_001', 300, 0, 300),
('pd_005', 'pay_004', 'event_002', 200, 0, 200);

INSERT INTO event_purchase (id, event_details_id, student_id, payment_id, created_by, purchase_status, purchase_date)
VALUES
('ep_001', 'event_001', 'stu_001', 'pay_001', 'staff1', 'Confirmed', '2023-10-01'),
('ep_002', 'event_001', 'stu_002', 'pay_002', 'staff1', 'Confirmed', '2023-10-02'),
('ep_003', 'event_002', 'stu_003', 'pay_003', 'staff1', 'Confirmed', '2023-11-01'),
('ep_004', 'event_001', 'stu_004', 'pay_004', 'staff1', 'Confirmed', '2023-10-03'),
('ep_005', 'event_002', 'stu_004', 'pay_004', 'staff1', 'Confirmed', '2023-11-02');

<---------------------------------------- EXPERINMENT_NO : 3 ----------------------------------------->

mysql> update user
    -> set role="admin"
    -> where email_id="staff@college.edu";
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from user;
+--------+-------------+-------------------+------------+-------+-----------+---------------------+---------------------+
| id     | name        | email_id          | ph_no      | role  | password  | created_at          | updated_at          |
+--------+-------------+-------------------+------------+-------+-----------+---------------------+---------------------+
| admin1 | Admin User  | admin@college.edu | 9876543210 | admin | adminpass | 2025-08-04 14:02:35 | 2025-08-04 14:02:35 |
| staff1 | Class Staff | staff@college.edu | 9876543211 | admin | staffpass | 2025-08-04 14:02:35 | 2025-08-04 14:11:28 |
+--------+-------------+-------------------+------------+-------+-----------+---------------------+---------------------+
2 rows in set (0.00 sec)

mysql> INSERT INTO event_details (id, name, type, cost, description, event_date, deadline, class_id, created_by, updated_by)
    -> VALUES
    -> ('event_001', 'Tech Fest', 'Academic', 300, 'Department Event', '2023-10-20 10:00:00', '2023-10-15', 'class_csa_s5', 'staff1', 'staff1'),
    -> ('event_002', 'Farewell', 'Social', 200, 'Class farewell event', '2023-11-10 15:00:00', '2023-11-05', 'class_csa_s5', 'staff1', 'staff1');
Query OK, 2 rows affected (0.00 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> INSERT INTO payment (id, student_id, payment_method, total_amt, payment_status, transaction_id, reciept_number, notes, updated_by, created_by)
    -> VALUES
    -> ('pay_001', 'stu_001', 'Cash', 300, 'Paid', 1111, 5001, 'Paid for Tech Fest', 'staff1', 'staff1'),
    -> ('pay_002', 'stu_002', 'Online', 300, 'Paid', 1112, 5002, 'Paid for Tech Fest', 'staff1', 'staff1'),
    -> ('pay_003', 'stu_003', 'UPI', 200, 'Paid', 1113, 5003, 'Paid for Farewell', 'staff1', 'staff1'),
    -> ('pay_004', 'stu_004', 'Online', 500, 'Paid', 1114, 5004, 'Paid for both events', 'staff1', 'staff1');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0
 
mysql> INSERT INTO payment_details (id, payment_id, event_id, amount, discount, final_amt)
    -> VALUES
    -> ('pd_001', 'pay_001', 'event_001', 300, 0, 300),
    -> ('pd_002', 'pay_002', 'event_001', 300, 0, 300),
    -> ('pd_003', 'pay_003', 'event_002', 200, 0, 200),
    -> ('pd_004', 'pay_004', 'event_001', 300, 0, 300),
    -> ('pd_005', 'pay_004', 'event_002', 200, 0, 200);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO event_purchase (id, event_details_id, student_id, payment_id, created_by, purchase_status, purchase_date)
    -> VALUES
    -> ('ep_001', 'event_001', 'stu_001', 'pay_001', 'staff1', 'Confirmed', '2023-10-01'),
    -> ('ep_002', 'event_001', 'stu_002', 'pay_002', 'staff1', 'Confirmed', '2023-10-02'),
    -> ('ep_003', 'event_002', 'stu_003', 'pay_003', 'staff1', 'Confirmed', '2023-11-01'),
    -> ('ep_004', 'event_001', 'stu_004', 'pay_004', 'staff1', 'Confirmed', '2023-10-03'),
    -> ('ep_005', 'event_002', 'stu_004', 'pay_004', 'staff1', 'Confirmed', '2023-11-02');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from event_purchase;
+--------+------------------+------------+------------+---------------------+---------------------+------------+-----------------+---------------+
| id     | event_details_id | student_id | payment_id | updated_at          | created_at          | created_by | purchase_status | purchase_date |
+--------+------------------+------------+------------+---------------------+---------------------+------------+-----------------+---------------+
| ep_001 | event_001        | stu_001    | pay_001    | 2025-08-04 14:12:52 | 2025-08-04 14:12:52 | staff1     | Confirmed       | 2023-10-01    |
| ep_002 | event_001        | stu_002    | pay_002    | 2025-08-04 14:12:52 | 2025-08-04 14:12:52 | staff1     | Confirmed       | 2023-10-02    |
| ep_003 | event_002        | stu_003    | pay_003    | 2025-08-04 14:12:52 | 2025-08-04 14:12:52 | staff1     | Confirmed       | 2023-11-01    |
| ep_004 | event_001        | stu_004    | pay_004    | 2025-08-04 14:12:52 | 2025-08-04 14:12:52 | staff1     | Confirmed       | 2023-10-03    |
| ep_005 | event_002        | stu_004    | pay_004    | 2025-08-04 14:12:52 | 2025-08-04 14:12:52 | staff1     | Confirmed       | 2023-11-02    |
+--------+------------------+------------+------------+---------------------+---------------------+------------+-----------------+---------------+
5 rows in set (0.00 sec)

mysql> update event_purchase
    -> set purchase_status="Approved"
    -> where id="ep_001";
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from event_purchase;
+--------+------------------+------------+------------+---------------------+---------------------+------------+-----------------+---------------+
| id     | event_details_id | student_id | payment_id | updated_at          | created_at          | created_by | purchase_status | purchase_date |
+--------+------------------+------------+------------+---------------------+---------------------+------------+-----------------+---------------+
| ep_001 | event_001        | stu_001    | pay_001    | 2025-08-04 14:12:52 | 2025-08-04 14:12:52 | staff1     | Approved        | 2023-10-01    |
| ep_002 | event_001        | stu_002    | pay_002    | 2025-08-04 14:12:52 | 2025-08-04 14:12:52 | staff1     | Confirmed       | 2023-10-02    |
| ep_003 | event_002        | stu_003    | pay_003    | 2025-08-04 14:12:52 | 2025-08-04 14:12:52 | staff1     | Confirmed       | 2023-11-01    |
| ep_004 | event_001        | stu_004    | pay_004    | 2025-08-04 14:12:52 | 2025-08-04 14:12:52 | staff1     | Confirmed       | 2023-10-03    |
| ep_005 | event_002        | stu_004    | pay_004    | 2025-08-04 14:12:52 | 2025-08-04 14:12:52 | staff1     | Confirmed       | 2023-11-02    |
+--------+------------------+------------+------------+---------------------+---------------------+------------+-----------------+---------------+
5 rows in set (0.01 sec)

mysql> alter table student
    -> modify column class_id varchar(50);
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student;
+------------+-------------+------+-----+-------------------+-----------------------------------------------+
| Field      | Type        | Null | Key | Default           | Extra                                         |
+------------+-------------+------+-----+-------------------+-----------------------------------------------+
| id         | varchar(40) | NO   | PRI | NULL              |                                               |
| name       | varchar(30) | NO   |     | NULL              |                                               |
| email_id   | varchar(30) | YES  |     | NULL              |                                               |
| ph_no      | varchar(15) | YES  |     | NULL              |                                               |
| roll_no    | int         | YES  |     | NULL              |                                               |
| class_id   | varchar(50) | YES  | MUL | NULL              |                                               |
| created_by | varchar(40) | YES  | MUL | NULL              |                                               |
| updated_by | varchar(40) | YES  | MUL | NULL              |                                               |
| created_at | timestamp   | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED                             |
| updated_at | timestamp   | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |
+------------+-------------+------+-----+-------------------+-----------------------------------------------+
10 rows in set (0.01 sec)

mysql> ALTER TABLE user
    -> ADD COLUMN address VARCHAR(100);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc user;
+------------+--------------+------+-----+-------------------+-----------------------------------------------+
| Field      | Type         | Null | Key | Default           | Extra                                         |
+------------+--------------+------+-----+-------------------+-----------------------------------------------+
| id         | varchar(40)  | NO   | PRI | NULL              |                                               |
| name       | varchar(30)  | NO   |     | NULL              |                                               |
| email_id   | varchar(30)  | NO   |     | NULL              |                                               |
| ph_no      | varchar(15)  | NO   |     | NULL              |                                               |
| role       | varchar(20)  | NO   |     | NULL              |                                               |
| password   | varchar(200) | NO   |     | NULL              |                                               |
| created_at | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED                             |
| updated_at | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |
| address    | varchar(100) | YES  |     | NULL              |                                               |
+------------+--------------+------+-----+-------------------+-----------------------------------------------+
9 rows in set (0.00 sec)

mysql> alter table user
    -> drop column address;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc user;
+------------+--------------+------+-----+-------------------+-----------------------------------------------+
| Field      | Type         | Null | Key | Default           | Extra                                         |
+------------+--------------+------+-----+-------------------+-----------------------------------------------+
| id         | varchar(40)  | NO   | PRI | NULL              |                                               |
| name       | varchar(30)  | NO   |     | NULL              |                                               |
| email_id   | varchar(30)  | NO   |     | NULL              |                                               |
| ph_no      | varchar(15)  | NO   |     | NULL              |                                               |
| role       | varchar(20)  | NO   |     | NULL              |                                               |
| password   | varchar(200) | NO   |     | NULL              |                                               |
| created_at | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED                             |
| updated_at | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |
+------------+--------------+------+-----+-------------------+-----------------------------------------------+
8 rows in set (0.00 sec)

mysql> alter table event_details
    -> rename column event_date to event_day;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc event_details;
+-------------+-------------+------+-----+-------------------+-------------------+
| Field       | Type        | Null | Key | Default           | Extra             |
+-------------+-------------+------+-----+-------------------+-------------------+
| id          | varchar(40) | NO   | PRI | NULL              |                   |
| name        | varchar(30) | NO   |     | NULL              |                   |
| type        | varchar(30) | NO   |     | NULL              |                   |
| updated_at  | timestamp   | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
| cost        | int         | NO   |     | NULL              |                   |
| description | varchar(30) | NO   |     | NULL              |                   |
| event_day   | timestamp   | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
| deadline    | date        | YES  |     | NULL              |                   |
| class_id    | varchar(40) | YES  | MUL | NULL              |                   |
| created_by  | varchar(30) | YES  | MUL | NULL              |                   |
| updated_by  | varchar(30) | YES  | MUL | NULL              |                   |
| created_at  | timestamp   | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+-------------+-------------+------+-----+-------------------+-------------------+
12 rows in set (0.00 sec)

mysql> rename table fund_transaction to fund_transfers;
Query OK, 0 rows affected (0.02 sec)

mysql> desc fund_transfers;
+------------------+---------------+------+-----+-------------------+-------------------+
| Field            | Type          | Null | Key | Default           | Extra             |
+------------------+---------------+------+-----+-------------------+-------------------+
| id               | varchar(40)   | NO   | PRI | NULL              |                   |
| class_id         | varchar(40)   | YES  | MUL | NULL              |                   |
| transaction_type | varchar(30)   | NO   |     | NULL              |                   |
| amount           | decimal(20,0) | NO   |     | NULL              |                   |
| description      | varchar(200)  | NO   |     | NULL              |                   |
| reference_id     | varchar(100)  | NO   |     | NULL              |                   |
| transaction_date | date          | NO   |     | NULL              |                   |
| created_by       | varchar(40)   | YES  | MUL | NULL              |                   |
| created_at       | timestamp     | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+------------------+---------------+------+-----+-------------------+-------------------+
9 rows in set (0.01 sec)

mysql> SELECT *
    -> FROM event_details
    -> WHERE cost BETWEEN 300 AND 500;
+-----------+-----------+----------+---------------------+------+------------------+---------------------+------------+--------------+------------+------------+---------------------+
| id        | name      | type     | updated_at          | cost | description      | event_day           | deadline   | class_id     | created_by | updated_by | created_at          |
+-----------+-----------+----------+---------------------+------+------------------+---------------------+------------+--------------+------------+------------+---------------------+
| event_001 | Tech Fest | Academic | 2025-08-04 14:12:49 |  300 | Department Event | 2023-10-20 10:00:00 | 2023-10-15 | class_csa_s5 | staff1     | staff1     | 2025-08-04 14:12:49 |
+-----------+-----------+----------+---------------------+------+------------------+---------------------+------------+--------------+------------+------------+---------------------+
1 row in set (0.00 sec)

mysql> select *
    -> from student
    -> where name like 'a%';
+---------+------+------------------+------------+---------+--------------+------------+------------+---------------------+---------------------+
| id      | name | email_id         | ph_no      | roll_no | class_id     | created_by | updated_by | created_at          | updated_at          |
+---------+------+------------------+------------+---------+--------------+------------+------------+---------------------+---------------------+
| stu_007 | Amil | amil@college.edu | 9447823462 |      18 | class_csa_s5 | staff1     | staff1     | 2025-08-04 14:02:35 | 2025-08-04 14:02:35 |
+---------+------+------------------+------------+---------+--------------+------------+------------+---------------------+---------------------+
1 row in set (0.00 sec)

mysql> select * from student where name like 's%';
+---------+----------+----------------------+------------+---------+--------------+------------+------------+---------------------+---------------------+
| id      | name     | email_id             | ph_no      | roll_no | class_id     | created_by | updated_by | created_at          | updated_at          |
+---------+----------+----------------------+------------+---------+--------------+------------+------------+---------------------+---------------------+
| stu_001 | Sabin    | sabin@college.edu    | 9447823456 |      52 | class_csa_s5 | staff1     | staff1     | 2025-08-04 14:02:35 | 2025-08-04 14:02:35 |
| stu_004 | Shawkath | shawkath@college.edu | 9447823459 |      44 | class_csa_s5 | staff1     | staff1     | 2025-08-04 14:02:35 | 2025-08-04 14:02:35 |
| stu_005 | Sherin   | sherin@college.edu   | 9447823460 |      54 | class_csa_s5 | staff1     | staff1     | 2025-08-04 14:02:35 | 2025-08-04 14:02:35 |
+---------+----------+----------------------+------------+---------+--------------+------------+------------+---------------------+---------------------+
3 rows in set (0.00 sec)


<---------------------------------------- EXPERINMENT_NO : 4 ----------------------------------------->
    
mysql> select * FROM event_details where cost = (SELECT MAX(cost) FROM event_details);
+-----------+-----------+----------+---------------------+------+------------------+---------------------+------------+--------------+------------+------------+---------------------+
| id        | name      | type     | updated_at          | cost | description      | event_day           | deadline   | class_id     | created_by | updated_by | created_at          |
+-----------+-----------+----------+---------------------+------+------------------+---------------------+------------+--------------+------------+------------+---------------------+
| event_001 | Tech Fest | Academic | 2025-08-04 14:19:11 |  300 | Department Event | 2023-10-20 10:00:00 | 2023-10-15 | class_csa_s5 | staff1     | staff1     | 2025-08-04 14:19:11 |
+-----------+-----------+----------+---------------------+------+------------------+---------------------+------------+--------------+------------+------------+---------------------+
1 row in set (0.00 sec)
mysql> select AVG(cost) AS average_event_cost from event_details;
+--------------------+
| average_event_cost |
+--------------------+
|           250.0000 |
+--------------------+
1 row in set (0.00 sec)
mysql> select SUM(amount) from fund_transfers;
+-------------+
| SUM(amount) |
+-------------+
|       87000 |
+-------------+
1 row in set (0.00 sec)
mysql> SELECT c.year, COUNT(s.id) AS student_count
    -> FROM student s
    -> JOIN class c ON s.class_id = c.id
    -> GROUP BY c.year;
+------+---------------+
| year | student_count |
+------+---------------+
| 2023 |             7 |
+------+---------------+
1 row in set (0.01 sec)


mysql> select sum(amount) as total_amount
    -> from fund_transfers;
+--------------+
| total_amount |
+--------------+
|        87000 |
+--------------+
1 row in set (0.01 sec)

mysql> select count(*) as total_students 
    -> from student
    -> where class_id="class_csa_s5";
+----------------+
| total_students |
+----------------+
|              7 |
+----------------+
1 row in set (0.00 sec)

mysql> select count(*) as total_students 
    -> from student
    -> where class_id="class_csa_s5";
+----------------+
| total_students |
+----------------+
|              7 |
+----------------+
1 row in set (0.00 sec)

mysql> SELECT class_id,
    -> COUNT(*) AS no_of_students
    -> FROM student
    -> GROUP BY class_id HAVING COUNT(*)>3;
+--------------+----------------+
| class_id     | no_of_students |
+--------------+----------------+
| class_csa_s5 |              7 |
+--------------+----------------+
1 row in set (0.00 sec)

mysql> SELECT 
    ->     event_id,
    ->     SUM(amount) AS total_funds
    -> FROM 
    ->     payment_details
    -> GROUP BY 
    ->     event_id
    -> HAVING 
    ->     SUM(amount) > (
    ->         SELECT 
    ->             AVG(total_amount)
    ->         FROM (
    ->             SELECT 
    ->                 SUM(amount) AS total_amount
    ->             FROM 
    ->                 payment_details
    ->             GROUP BY 
    ->                 event_id
    ->         ) AS event_totals
    ->     );
+-----------+-------------+
| event_id  | total_funds |
+-----------+-------------+
| event_001 |         900 |
+-----------+-------------+
1 row in set (0.00 sec)

mysql> select id,name,cost
    -> from event_details
    -> order by cost desc;
+-----------+-----------+------+
| id        | name      | cost |
+-----------+-----------+------+
| event_001 | Tech Fest |  300 |
| event_002 | Farewell  |  200 |
+-----------+-----------+------+
2 rows in set (0.00 sec)

mysql> select *
    -> from fund_transfers
    -> order by transaction_date desc;
+--------+--------------+------------------+--------+--------------------+--------------+------------------+------------+---------------------+
| id     | class_id     | transaction_type | amount | description        | reference_id | transaction_date | created_by | created_at          |
+--------+--------------+------------------+--------+--------------------+--------------+------------------+------------+---------------------+
| ft_003 | class_csa_s5 | DEPOSIT          |  25000 | College Grant      | REF003       | 2023-09-10       | staff1     | 2025-08-04 14:02:35 |
| ft_002 | class_csa_s5 | EXPENSE          |  12000 | Lab Equipment      | REF002       | 2023-09-05       | staff1     | 2025-08-04 14:02:35 |
| ft_001 | class_csa_s5 | DEPOSIT          |  50000 | Class Fund Opening | REF001       | 2023-09-01       | staff1     | 2025-08-04 14:02:35 |
+--------+--------------+------------------+--------+--------------------+--------------+------------------+------------+---------------------+
3 rows in set (0.00 sec)

mysql> select  class_id,
    -> count(*) as student_count
    -> from student
    -> group by class_id
    -> order by student_count desc;
+--------------+---------------+
| class_id     | student_count |
+--------------+---------------+
| class_csa_s5 |             7 |
+--------------+---------------+
1 row in set (0.00 sec)

<---------------------------------------- EXPERINMENT_NO : 5 ----------------------------------------->

mysql> SELECT 
    ->     s.name AS student_name,
    ->     c.section,
    -> c.name,
    -> c.year
    -> FROM 
    -> student s
    -> JOIN 
    -> class c ON s.class_id = c.id;
+--------------+---------+------------+------+
| student_name | section | name       | year |
+--------------+---------+------------+------+
| Sabin        | A       | CSA S5 CSE | 2023 |
| Gautham      | A       | CSA S5 CSE | 2023 |
| Geo          | A       | CSA S5 CSE | 2023 |
| Shawkath     | A       | CSA S5 CSE | 2023 |
| Sherin       | A       | CSA S5 CSE | 2023 |
| Madhan       | A       | CSA S5 CSE | 2023 |
| Amil         | A       | CSA S5 CSE | 2023 |
+--------------+---------+------------+------+

mysql> SELECT 
    ->     s.name AS student_name,
    ->     c.name AS class_name,
    ->     p.total_amt,
    ->     p.payment_method
    -> FROM 
    ->     payment p
    -> JOIN 
    ->     student s ON p.student_id = s.id
    -> JOIN 
    ->     class c ON s.class_id = c.id;
+--------------+------------+-----------+----------------+
| student_name | class_name | total_amt | payment_method |
+--------------+------------+-----------+----------------+
| Sabin        | CSA S5 CSE |       300 | Cash           |
| Gautham      | CSA S5 CSE |       300 | Online         |
| Geo          | CSA S5 CSE |       200 | UPI            |
| Shawkath     | CSA S5 CSE |       500 | Online         |
+--------------+------------+-----------+----------------+

mysql> SELECT 
    ->     ft.id,
    ->     c.name AS class_name,
    ->     ft.transaction_type,
    ->     ft.amount,
    ->     ft.description,
    ->     ft.reference_id,
    ->     ft.transaction_date,
    ->     u.name AS created_by_name,
    ->     ft.created_at
    -> FROM 
    ->     fund_transaction ft
    -> LEFT JOIN 
    ->     class c ON ft.class_id = c.id
    -> LEFT JOIN 
    ->     user u ON ft.created_by = u.id;
+--------+------------+------------------+--------+--------------------+--------------+------------------+-----------------+---------------------+
| id     | class_name | transaction_type | amount | description        | reference_id | transaction_date | created_by_name | created_at          |
+--------+------------+------------------+--------+--------------------+--------------+------------------+-----------------+---------------------+
| ft_001 | CSA S5 CSE | DEPOSIT          |  50000 | Class Fund Opening | REF001       | 2023-09-01       | Class Staff     | 2025-07-28 14:52:39 |
| ft_002 | CSA S5 CSE | EXPENSE          |  12000 | Lab Equipment      | REF002       | 2023-09-05       | Class Staff     | 2025-07-28 14:52:39 |
| ft_003 | CSA S5 CSE | DEPOSIT          |  25000 | College Grant      | REF003       | 2023-09-10       | Class Staff     | 2025-07-28 14:52:39 |
+--------+------------+------------------+--------+--------------------+--------------+------------------+-----------------+---------------------+

mysql> SELECT 
    ->     s.id,
    ->     s.name,
    ->     SUM(p.total_amt) AS total_paid
    -> FROM 
    ->     student s
    -> JOIN 
    ->     payment p ON s.id = p.student_id
    -> GROUP BY 
    ->     s.id, s.name
    -> HAVING 
    ->     SUM(p.total_amt) > (SELECT AVG(total_amt) FROM payment);
+---------+----------+------------+
| id      | name     | total_paid |
+---------+----------+------------+
| stu_004 | Shawkath |        500 |
+---------+----------+------------+

mysql> SELECT 
    ->     s.id,
    ->     s.name,
    ->     SUM(p.total_amt) AS total_paid
    -> FROM 
    ->     student s
    -> JOIN 
    ->     payment p ON s.id = p.student_id
    -> GROUP BY 
    ->     s.id, s.name
    -> ORDER BY 
    ->     total_paid DESC
    -> LIMIT 1;
+---------+----------+------------+
| id      | name     | total_paid |
+---------+----------+------------+
| stu_004 | Shawkath |        500 |
+---------+----------+------------+

mysql> SELECT DISTINCT s.id, s.name
    -> FROM event_purchase ep
    -> JOIN student s ON ep.student_id = s.id
    -> WHERE ep.event_details_id IN (
    ->     SELECT event_details_id
    ->     FROM event_purchase
    ->     WHERE student_id = 'stu_004'
    -> )
    -> AND s.id != 'stu_004';
+---------+---------+
| id      | name    |
+---------+---------+
| stu_001 | Sabin   |
| stu_002 | Gautham |
| stu_003 | Geo     |
+---------+---------+

mysql> SELECT *
    -> FROM event_details
    -> WHERE MONTH(event_day) = MONTH(CURDATE())
    ->   AND YEAR(event_day) = YEAR(CURDATE());
+-----------+----------------+--------+---------------------+------+--------------------------------+---------------------+------------+--------------+------------+------------+---------------------+
| id        | name           | type   | updated_at          | cost | description                    | event_day           | deadline   | class_id     | created_by | updated_by | created_at          |
+-----------+----------------+--------+---------------------+------+--------------------------------+---------------------+------------+--------------+------------+------------+---------------------+
| event_003 | Monthly Meetup | Social | 2025-08-18 15:18:21 |  100 | Monthly gathering for students | 2025-08-18 15:18:21 | 2025-08-25 | class_csa_s5 | staff1     | staff1     | 2025-08-18 15:18:21 |
+-----------+----------------+--------+---------------------+------+--------------------------------+---------------------+------------+--------------+------------+------------+---------------------+
1 row in set (0.00 sec)

mysql> SELECT *
    -> FROM payment
    -> WHERE payment_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY);
+---------+------------+----------------+------------+------------+-----------+---------------------+---------------------+----------------+----------------+----------------+---------------------+----------------------+
| id      | student_id | payment_method | updated_by | created_by | total_amt | updated_at          | payment_date        | payment_status | transaction_id | reciept_number | created_at          | notes                |
+---------+------------+----------------+------------+------------+-----------+---------------------+---------------------+----------------+----------------+----------------+---------------------+----------------------+
| pay_001 | stu_001    | Cash           | staff1     | staff1     |       300 | 2025-08-04 14:32:25 | 2025-08-04 14:32:25 | Paid           |           1111 |           5001 | 2025-08-04 14:32:25 | Paid for Tech Fest   |
| pay_002 | stu_002    | Online         | staff1     | staff1     |       300 | 2025-08-04 14:32:25 | 2025-08-04 14:32:25 | Paid           |           1112 |           5002 | 2025-08-04 14:32:25 | Paid for Tech Fest   |
| pay_003 | stu_003    | UPI            | staff1     | staff1     |       200 | 2025-08-04 14:32:25 | 2025-08-04 14:32:25 | Paid           |           1113 |           5003 | 2025-08-04 14:32:25 | Paid for Farewell    |
| pay_004 | stu_004    | Online         | staff1     | staff1     |       500 | 2025-08-04 14:32:25 | 2025-08-04 14:32:25 | Paid           |           1114 |           5004 | 2025-08-04 14:32:25 | Paid for both events |
+---------+------------+----------------+------------+------------+-----------+---------------------+---------------------+----------------+----------------+----------------+---------------------+----------------------+

mysql> SELECT 
    ->     id,
    ->     name,
    ->     created_at,
    ->     DATEDIFF(CURRENT_DATE(), created_at) AS account_age_in_days
    -> FROM 
    ->     student;
+---------+----------+---------------------+---------------------+
| id      | name     | created_at          | account_age_in_days |
+---------+----------+---------------------+---------------------+
| stu_001 | Sabin    | 2025-07-28 14:52:39 |                  21 |
| stu_002 | Gautham  | 2025-07-28 14:52:39 |                  21 |
| stu_003 | Geo      | 2025-07-28 14:52:39 |                  21 |
| stu_004 | Shawkath | 2025-07-28 14:52:39 |                  21 |
| stu_005 | Sherin   | 2025-07-28 14:52:39 |                  21 |
| stu_006 | Madhan   | 2025-07-28 14:52:39 |                  21 |
| stu_007 | Amil     | 2025-07-28 14:52:39 |                  21 |
+---------+----------+---------------------+---------------------+

mysql> SELECT *
    -> FROM event_details
    -> WHERE deadline < CURRENT_DATE();
+-----------+------------+----------+---------------------+------+---------------------------+---------------------+---------------------+--------------+------------+------------+---------------------+
| id        | name       | type     | updated_at          | cost | description               | event_date          | deadline            | class_id     | created_by | updated_by | created_at          |
+-----------+------------+----------+---------------------+------+---------------------------+---------------------+---------------------+--------------+------------+------------+---------------------+
| event_001 | Tech Fest  | Academic | 2025-08-04 14:15:21 |  300 | Department Event          | 2023-10-20 10:00:00 | 2023-10-15 00:00:00 | class_csa_s5 | staff1     | staff1     | 2025-08-04 14:15:21 |
| event_002 | Farewell   | Social   | 2025-08-04 14:15:21 |  200 | Class farewell event      | 2023-11-10 15:00:00 | 2023-11-05 00:00:00 | class_csa_s5 | staff1     | staff1     | 2025-08-04 14:15:21 |
| evt_001   | Tech Fest  | Cultural | 2025-07-28 15:38:48 |  500 | Annual tech fest event    | 2023-12-15 00:00:00 | 2023-12-01 00:00:00 | class_csa_s5 | staff1     | staff1     | 2025-07-28 15:38:48 |
| evt_002   | Workshop   | Academic | 2025-07-28 15:38:48 |  300 | Web development workshop  | 2023-11-20 00:00:00 | 2023-11-10 00:00:00 | class_csa_s5 | staff1     | staff1     | 2025-07-28 15:38:48 |
| evt_003   | Sports Day | Sports   | 2025-07-28 15:38:48 |  200 | Annual sports competition | 2023-12-22 00:00:00 | 2023-12-10 00:00:00 | class_csa_s5 | staff1     | staff1     | 2025-07-28 15:38:48 |
+-----------+------------+----------+---------------------+------+---------------------------+---------------------+---------------------+--------------+------------+------------+---------------------+
