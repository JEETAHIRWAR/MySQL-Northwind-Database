-- Northwind database Day 1

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


-- Que 02. Which employees have a recorded commission in the emp table?

SELECT * FROM emp WHERE comm is Not null;

+-------+--------+----------+------+------------+---------+---------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
+-------+--------+----------+------+------------+---------+---------+--------+
4 rows in set (0.03 sec)


-- que 03. Which employees have names that start with the letter 'A'?

SELECT * FROM emp WHERE ename like 'A%';

+-------+-------+----------+------+------------+---------+--------+--------+
| empno | ename | job      | mgr  | hiredate   | sal     | comm   | deptno |
+-------+-------+----------+------+------------+---------+--------+--------+
|  7499 | ALLEN | SALESMAN | 7698 | 1981-02-20 | 1600.00 | 300.00 |     30 |
|  7876 | ADAMS | CLERK    | 7788 | 1983-01-12 | 1100.00 |   NULL |     20 |
+-------+-------+----------+------+------------+---------+--------+--------+
2 rows in set (0.00 sec)


-- Que 04. Which employees have the letter 'A' anywhere in their names?

SELECT * FROM emp WHERE ename like '%A%';

+-------+--------+----------+------+------------+---------+---------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER  | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7876 | ADAMS  | CLERK    | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
+-------+--------+----------+------+------------+---------+---------+--------+
7 rows in set (0.00 sec)


-- Que 05. Which employees have the letter 'A' appearing at least twice in their names?
SELECT * FROM emp WHERE ename like '%A%A%';

+-------+-------+-------+------+------------+---------+------+--------+
| empno | ename | job   | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+-------+------+------------+---------+------+--------+
|  7876 | ADAMS | CLERK | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
+-------+-------+-------+------+------------+---------+------+--------+
1 row in set (0.00 sec)

