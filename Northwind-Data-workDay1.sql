-- Northwind database

-- view all databases in your system
SHOW databases;

-- Select & Choose the specific database where you want to work
USE northwind;

-- view all tables in selected database
SHOW tables;

-- Output
+---------------------+
| Tables_in_northwind |
+---------------------+
| categories          |
| customers           |
| dept                |
| emp                 |
| employees           |
| orderdetails        |
| orders              |
| persons             |
| products            |
| shippers            |
| suppliers           |
+---------------------+
11 rows in set (0.02 sec)

-- view all data in  customers table.
SELECT * FROM customers;

