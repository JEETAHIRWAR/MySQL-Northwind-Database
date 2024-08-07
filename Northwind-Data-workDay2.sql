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


--- Que 06. Which employees were hired on dates that include '12' in the date?

SELECT * FROM emp WHERE HIREDATE LIKE '%12%';

+-------+-------+---------+------+------------+---------+------+--------+
| empno | ename | job     | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+---------+------+------------+---------+------+--------+
|  7369 | SMITH | CLERK   | 7902 | 1980-12-17 |  800.00 | NULL |     20 |
|  7788 | SCOTT | ANALYST | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
|  7876 | ADAMS | CLERK   | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
|  7900 | JAMES | CLERK   | 7698 | 1981-12-03 |  950.00 | NULL |     30 |
|  7902 | FORD  | ANALYST | 7566 | 1981-12-03 | 3000.00 | NULL |     20 |
+-------+-------+---------+------+------------+---------+------+--------+
5 rows in set (0.00 sec)


--- Que 07. Which employees were hired on dates that include '81' anywhere in the date?

SELECT * FROM emp WHERE HIREDATE LIKE '%81%';

+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
+-------+--------+-----------+------+------------+---------+---------+--------+
10 rows in set (0.01 sec)


--- Question: 08. "Which employees were hired on dates that end with '81'?
SELECT * FROM emp WHERE HIREDATE LIKE '%81';

Empty set (0.00 sec)


--- Question: 09. Which employees have names where the second character is 'A'?
SELECT empno, ename FROM emp WHERE ename LIKE '_A%';

+-------+--------+
| empno | ename  |
+-------+--------+
|  7521 | WARD   |
|  7654 | MARTIN |
|  7900 | JAMES  |
+-------+--------+
3 rows in set (0.00 sec)

--- Que 10. Which employees were hired in the year 1981?
SELECT * FROM emp WHERE HIREDATE LIKE '1981%';

+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
+-------+--------+-----------+------+------------+---------+---------+--------+
10 rows in set (0.00 sec)


-- Que 11. Which employees have names that are exactly four characters long?
SELECT empno, ename FROM emp WHERE ename LIKE '____';

+-------+-------+
| empno | ename |
+-------+-------+
|  7521 | WARD  |
|  7839 | KING  |
|  7902 | FORD  |
+-------+-------+
3 rows in set (0.00 sec)


-- Que Which employees have names that contain the letter 'A' exactly once?

SELECT ename FROM emp WHERE ename LIKE '%A%' AND ename NOT LIKE '%A%A%';
+--------+
| ename  |
+--------+
| ALLEN  |
| WARD   |
| MARTIN |
| BLAKE  |
| CLARK  |
| JAMES  |
+--------+
6 rows in set (0.00 sec)

-- Question: "Which customers are located in both Germany and Berlin?"
SELECT * FROM customers WHERE country = 'Germany' AND city = 'Berlin';

+------------+---------------------+--------------+---------------+--------+------------+---------+
| CustomerID | CustomerName        | ContactName  | Address       | City   | PostalCode | Country |
+------------+---------------------+--------------+---------------+--------+------------+---------+
|          1 | Alfreds Futterkiste | Maria Anders | Obere Str. 57 | Berlin | 12209      | Germany |
+------------+---------------------+--------------+---------------+--------+------------+---------+
1 row in set (0.08 sec)

-- Question: "Which customers are either in Germany or in Berlin?"
SELECT * FROM customers WHERE country = 'Germany' OR city = 'Berlin';
+------------+---------------------------+---------------------+--------------------+----------------+------------+---------+
| CustomerID | CustomerName              | ContactName         | Address            | City           | PostalCode | Country |
+------------+---------------------------+---------------------+--------------------+----------------+------------+---------+
|          1 | Alfreds Futterkiste       | Maria Anders        | Obere Str. 57      | Berlin         | 12209      | Germany |
|          6 | Blauer See Delikatessen   | Hanna Moos          | Forsterstr. 57     | Mannheim       | 68306      | Germany |
|         17 | Drachenblut Delikatessend | Sven Ottlieb        | Walserweg 21       | Aachen         | 52066      | Germany |
|         25 | Frankenversand            | Peter Franken       | Berliner Platz 43  | München        | 80805      | Germany |
|         39 | Königlich Essen           | Philip Cramer       | Maubelstr. 90      | Brandenburg    | 14776      | Germany |
|         44 | Lehmanns Marktstand       | Renate Messner      | Magazinweg 7       | Frankfurt a.M. | 60528      | Germany |
|         52 | Morgenstern Gesundkost    | Alexander Feuer     | Heerstr. 22        | Leipzig        | 4179       | Germany |
|         56 | Ottilies Käseladen        | Henriette Pfalzheim | Mehrheimerstr. 369 | Köln           | 50739      | Germany |
|         63 | QUICK-Stop                | Horst Kloss         | Taucherstraße 10   | Cunewalde      | 1307       | Germany |
|         79 | Toms Spezialitäten        | Karin Josephs       | Luisenstr. 48      | Münster        | 44087      | Germany |
|         86 | Die Wandernde Kuh         | Rita Müller         | Adenauerallee 900  | Stuttgart      | 70563      | Germany |
+------------+---------------------------+---------------------+--------------------+----------------+------------+---------+
11 rows in set (0.01 sec)


--  Question: "Which customers are either in Stuttgart or in Berlin?"
SELECT * FROM customers WHERE country = 'stuttgart' OR city = 'Berlin';
+------------+---------------------+--------------+---------------+--------+------------+---------+
| CustomerID | CustomerName        | ContactName  | Address       | City   | PostalCode | Country |
+------------+---------------------+--------------+---------------+--------+------------+---------+
|          1 | Alfreds Futterkiste | Maria Anders | Obere Str. 57 | Berlin | 12209      | Germany |
+------------+---------------------+--------------+---------------+--------+------------+---------+
1 row in set (0.01 sec)


-- Question: "Which customers are not located in Germany?"
SELECT * FROM customers WHERE NOT country = 'Germany';
+------------+--------------------------------------+----------------------+------------------------------------------------+-----------------+------------+-------------+
| CustomerID | CustomerName                         | ContactName          | Address                                        | City            | PostalCode | Country     |
+------------+--------------------------------------+----------------------+------------------------------------------------+-----------------+------------+-------------+
|          2 | Ana Trujillo Emparedados y helados   | Ana Trujillo         | Avda. de la Constitución 2222                  | México D.F.     | 5021       | Mexico      |
|          3 | Antonio Moreno Taquería              | Antonio Moreno       | Mataderos 2312                                 | México D.F.     | 5023       | Mexico      |
|          4 | Around the Horn                      | Thomas Hardy         | 120 Hanover Sq.                                | London          | WA1 1DP    | UK          |
|          5 | Berglunds snabbköp                   | Christina Berglund   | Berguvsvägen 8                                 | Luleå           | S-958 22   | Sweden      |
|          7 | Blondel père et fils                 | Frédérique Citeaux   | 24, place Kléber                               | Strasbourg      | 67000      | France      |
|          8 | Bólido Comidas preparadas            | Martín Sommer        | C/ Araquil, 67                                 | Madrid          | 28023      | Spain       |
|          9 | Bon app''                            | Laurence Lebihans    | 12, rue des Bouchers                           | Marseille       | 13008      | France      |
|         10 | Bottom-Dollar Marketse               | Elizabeth Lincoln    | 23 Tsawassen Blvd.                             | Tsawassen       | T2F 8M4    | Canada      |
|         11 | B''s Beverages                       | Victoria Ashworth    | Fauntleroy Circus                              | London          | EC2 5NT    | UK          |
|         12 | Cactus Comidas para llevar           | Patricio Simpson     | Cerrito 333                                    | Buenos Aires    | 1010       | Argentina   |
|         13 | Centro comercial Moctezuma           | Francisco Chang      | Sierras de Granada 9993                        | México D.F.     | 5022       | Mexico      |
|         14 | Chop-suey Chinese                    | Yang Wang            | Hauptstr. 29                                   | Bern            | 3012       | Switzerland |
|         15 | Comércio Mineiro                     | Pedro Afonso         | Av. dos Lusíadas, 23                           | São Paulo       | 05432-043  | Brazil      |
|         16 | Consolidated Holdings                | Elizabeth Brown      | Berkeley Gardens 12 Brewery                    | London          | WX1 6LT    | UK          |
|         18 | Du monde entier                      | Janine Labrune       | 67, rue des Cinquante Otages                   | Nantes          | 44000      | France      |
|         19 | Eastern Connection                   | Ann Devon            | 35 King George                                 | London          | WX3 6FW    | UK          |
|         20 | Ernst Handel                         | Roland Mendel        | Kirchgasse 6                                   | Graz            | 8010       | Austria     |
|         21 | Familia Arquibaldo                   | Aria Cruz            | Rua Orós, 92                                   | São Paulo       | 05442-030  | Brazil      |
|         22 | FISSA Fabrica Inter. Salchichas S.A. | Diego Roel           | C/ Moralzarzal, 86                             | Madrid          | 28034      | Spain       |
|         23 | Folies gourmandes                    | Martine Rancé        | 184, chaussée de Tournai                       | Lille           | 59000      | France      |
|         24 | Folk och fä HB                       | Maria Larsson        | Åkergatan 24                                   | Bräcke          | S-844 67   | Sweden      |
|         26 | France restauration                  | Carine Schmitt       | 54, rue Royale                                 | Nantes          | 44000      | France      |
|         27 | Franchi S.p.A.                       | Paolo Accorti        | Via Monte Bianco 34                            | Torino          | 10100      | Italy       |
|         28 | Furia Bacalhau e Frutos do Mar       | Lino Rodriguez       | Jardim das rosas n. 32                         | Lisboa          | 1675       | Portugal    |
|         29 | Galería del gastrónomo               | Eduardo Saavedra     | Rambla de Cataluña, 23                         | Barcelona       | 8022       | Spain       |
|         30 | Godos Cocina Típica                  | José Pedro Freyre    | C/ Romero, 33                                  | Sevilla         | 41101      | Spain       |
|         31 | Gourmet Lanchonetes                  | André Fonseca        | Av. Brasil, 442                                | Campinas        | 04876-786  | Brazil      |
|         32 | Great Lakes Food Market              | Howard Snyder        | 2732 Baker Blvd.                               | Eugene          | 97403      | USA         |
|         33 | GROSELLA-Restaurante                 | Manuel Pereira       | 5ª Ave. Los Palos Grandes                      | Caracas         | 1081       | Venezuela   |
|         34 | Hanari Carnes                        | Mario Pontes         | Rua do Paço, 67                                | Rio de Janeiro  | 05454-876  | Brazil      |
|         35 | HILARIÓN-Abastos                     | Carlos Hernández     | Carrera 22 con Ave. Carlos Soublette #8-35     | San Cristóbal   | 5022       | Venezuela   |
|         36 | Hungry Coyote Import Store           | Yoshi Latimer        | City Center Plaza 516 Main St.                 | Elgin           | 97827      | USA         |
|         37 | Hungry Owl All-Night Grocers         | Patricia McKenna     | 8 Johnstown Road                               | Cork            |            | Ireland     |
|         38 | Island Trading                       | Helen Bennett        | Garden House Crowther Way                      | Cowes           | PO31 7PJ   | UK          |
|         40 | La corne d''abondance                | Daniel Tonini        | 67, avenue de l''Europe                        | Versailles      | 78000      | France      |
|         41 | La maison d''Asie                    | Annette Roulet       | 1 rue Alsace-Lorraine                          | Toulouse        | 31000      | France      |
|         42 | Laughing Bacchus Wine Cellars        | Yoshi Tannamuri      | 1900 Oak St.                                   | Vancouver       | V3F 2K1    | Canada      |
|         43 | Lazy K Kountry Store                 | John Steel           | 12 Orchestra Terrace                           | Walla Walla     | 99362      | USA         |
|         45 | Let''s Stop N Shop                   | Jaime Yorres         | 87 Polk St. Suite 5                            | San Francisco   | 94117      | USA         |
|         46 | LILA-Supermercado                    | Carlos González      | Carrera 52 con Ave. Bolívar #65-98 Llano Largo | Barquisimeto    | 3508       | Venezuela   |
|         47 | LINO-Delicateses                     | Felipe Izquierdo     | Ave. 5 de Mayo Porlamar                        | I. de Margarita | 4980       | Venezuela   |
|         48 | Lonesome Pine Restaurant             | Fran Wilson          | 89 Chiaroscuro Rd.                             | Portland        | 97219      | USA         |
|         49 | Magazzini Alimentari Riuniti         | Giovanni Rovelli     | Via Ludovico il Moro 22                        | Bergamo         | 24100      | Italy       |
|         50 | Maison Dewey                         | Catherine Dewey      | Rue Joseph-Bens 532                            | Bruxelles       | B-1180     | Belgium     |
|         51 | Mère Paillarde                       | Jean Fresnière       | 43 rue St. Laurent                             | Montréal        | H1J 1C3    | Canada      |
|         53 | North/South                          | Simon Crowther       | South House 300 Queensbridge                   | London          | SW7 1RZ    | UK          |
|         54 | Océano Atlántico Ltda.               | Yvonne Moncada       | Ing. Gustavo Moncada 8585 Piso 20-A            | Buenos Aires    | 1010       | Argentina   |
|         55 | Old World Delicatessen               | Rene Phillips        | 2743 Bering St.                                | Anchorage       | 99508      | USA         |
|         57 | Paris spécialités                    | Marie Bertrand       | 265, boulevard Charonne                        | Paris           | 75012      | France      |
|         58 | Pericles Comidas clásicas            | Guillermo Fernández  | Calle Dr. Jorge Cash 321                       | México D.F.     | 5033       | Mexico      |
|         59 | Piccolo und mehr                     | Georg Pipps          | Geislweg 14                                    | Salzburg        | 5020       | Austria     |
|         60 | Princesa Isabel Vinhoss              | Isabel de Castro     | Estrada da saúde n. 58                         | Lisboa          | 1756       | Portugal    |
|         61 | Que Delícia                          | Bernardo Batista     | Rua da Panificadora, 12                        | Rio de Janeiro  | 02389-673  | Brazil      |
|         62 | Queen Cozinha                        | Lúcia Carvalho       | Alameda dos Canàrios, 891                      | São Paulo       | 05487-020  | Brazil      |
|         64 | Rancho grande                        | Sergio Gutiérrez     | Av. del Libertador 900                         | Buenos Aires    | 1010       | Argentina   |
|         65 | Rattlesnake Canyon Grocery           | Paula Wilson         | 2817 Milton Dr.                                | Albuquerque     | 87110      | USA         |
|         66 | Reggiani Caseifici                   | Maurizio Moroni      | Strada Provinciale 124                         | Reggio Emilia   | 42100      | Italy       |
|         67 | Ricardo Adocicados                   | Janete Limeira       | Av. Copacabana, 267                            | Rio de Janeiro  | 02389-890  | Brazil      |
|         68 | Richter Supermarkt                   | Michael Holz         | Grenzacherweg 237                              | Genève          | 1203       | Switzerland |
|         69 | Romero y tomillo                     | Alejandra Camino     | Gran Vía, 1                                    | Madrid          | 28001      | Spain       |
|         70 | Santé Gourmet                        | Jonas Bergulfsen     | Erling Skakkes gate 78                         | Stavern         | 4110       | Norway      |
|         71 | Save-a-lot Markets                   | Jose Pavarotti       | 187 Suffolk Ln.                                | Boise           | 83720      | USA         |
|         72 | Seven Seas Imports                   | Hari Kumar           | 90 Wadhurst Rd.                                | London          | OX15 4NB   | UK          |
|         73 | Simons bistro                        | Jytte Petersen       | Vinbæltet 34                                   | København       | 1734       | Denmark     |
|         74 | Spécialités du monde                 | Dominique Perrier    | 25, rue Lauriston                              | Paris           | 75016      | France      |
|         75 | Split Rail Beer & Ale                | Art Braunschweiger   | P.O. Box 555                                   | Lander          | 82520      | USA         |
|         76 | Suprêmes délices                     | Pascale Cartrain     | Boulevard Tirou, 255                           | Charleroi       | B-6000     | Belgium     |
|         77 | The Big Cheese                       | Liz Nixon            | 89 Jefferson Way Suite 2                       | Portland        | 97201      | USA         |
|         78 | The Cracker Box                      | Liu Wong             | 55 Grizzly Peak Rd.                            | Butte           | 59801      | USA         |
|         80 | Tortuga Restaurante                  | Miguel Angel Paolino | Avda. Azteca 123                               | México D.F.     | 5033       | Mexico      |
|         81 | Tradição Hipermercados               | Anabela Domingues    | Av. Inês de Castro, 414                        | São Paulo       | 05634-030  | Brazil      |
|         82 | Trail''s Head Gourmet Provisioners   | Helvetius Nagy       | 722 DaVinci Blvd.                              | Kirkland        | 98034      | USA         |
|         83 | Vaffeljernet                         | Palle Ibsen          | Smagsløget 45                                  | Århus           | 8200       | Denmark     |
|         84 | Victuailles en stock                 | Mary Saveley         | 2, rue du Commerce                             | Lyon            | 69004      | France      |
|         85 | Vins et alcools Chevalier            | Paul Henriot         | 59 rue de l''Abbaye                            | Reims           | 51100      | France      |
|         87 | Wartian Herkku                       | Pirkko Koskitalo     | Torikatu 38                                    | Oulu            | 90110      | Finland     |
|         88 | Wellington Importadora               | Paula Parente        | Rua do Mercado, 12                             | Resende         | 08737-363  | Brazil      |
|         89 | White Clover Markets                 | Karl Jablonski       | 305 - 14th Ave. S. Suite 3B                    | Seattle         | 98128      | USA         |
|         90 | Wilman Kala                          | Matti Karttunen      | Keskuskatu 45                                  | Helsinki        | 21240      | Finland     |
|         91 | Wolski                               | Zbyszek              | ul. Filtrowa 68                                | Walla           | 01-012     | Poland      |
+------------+--------------------------------------+----------------------+------------------------------------------------+-----------------+------------+-------------+
80 rows in set (0.01 sec)

-- Question: "Which customers are either in Berlin, Germany, or in Stuttgart?"
SELECT * FROM customers WHERE (country = 'Germany' AND city = 'Berlin') OR city = 'stuttgart';
+------------+---------------------+--------------+-------------------+-----------+------------+---------+
| CustomerID | CustomerName        | ContactName  | Address           | City      | PostalCode | Country |
+------------+---------------------+--------------+-------------------+-----------+------------+---------+
|          1 | Alfreds Futterkiste | Maria Anders | Obere Str. 57     | Berlin    | 12209      | Germany |
|         86 | Die Wandernde Kuh   | Rita Müller  | Adenauerallee 900 | Stuttgart | 70563      | Germany |
+------------+---------------------+--------------+-------------------+-----------+------------+---------+
2 rows in set (0.00 sec)


-- Question: "Which customers are either in Berlin, Germany or UK, or in Stuttgart?"
SELECT * FROM customers WHERE (country = 'Germany' OR country = 'UK') AND city = 'Berlin' OR city = 'stuttgart';
+------------+---------------------+--------------+-------------------+-----------+------------+---------+
| CustomerID | CustomerName        | ContactName  | Address           | City      | PostalCode | Country |
+------------+---------------------+--------------+-------------------+-----------+------------+---------+
|          1 | Alfreds Futterkiste | Maria Anders | Obere Str. 57     | Berlin    | 12209      | Germany |
|         86 | Die Wandernde Kuh   | Rita Müller  | Adenauerallee 900 | Stuttgart | 70563      | Germany |
+------------+---------------------+--------------+-------------------+-----------+------------+---------+
2 rows in set (0.00 sec)


-- Question: "Which customers are either in Germany or the UK, or in Berlin or Stuttgart?"
SELECT * FROM customers WHERE country = 'Germany' OR country = 'UK' OR (city = 'Berlin' OR city = 'stuttgart');
+------------+---------------------------+---------------------+------------------------------+----------------+------------+---------+
| CustomerID | CustomerName              | ContactName         | Address                      | City           | PostalCode | Country |
+------------+---------------------------+---------------------+------------------------------+----------------+------------+---------+
|          1 | Alfreds Futterkiste       | Maria Anders        | Obere Str. 57                | Berlin         | 12209      | Germany |
|          4 | Around the Horn           | Thomas Hardy        | 120 Hanover Sq.              | London         | WA1 1DP    | UK      |
|          6 | Blauer See Delikatessen   | Hanna Moos          | Forsterstr. 57               | Mannheim       | 68306      | Germany |
|         11 | B''s Beverages            | Victoria Ashworth   | Fauntleroy Circus            | London         | EC2 5NT    | UK      |
|         16 | Consolidated Holdings     | Elizabeth Brown     | Berkeley Gardens 12 Brewery  | London         | WX1 6LT    | UK      |
|         17 | Drachenblut Delikatessend | Sven Ottlieb        | Walserweg 21                 | Aachen         | 52066      | Germany |
|         19 | Eastern Connection        | Ann Devon           | 35 King George               | London         | WX3 6FW    | UK      |
|         25 | Frankenversand            | Peter Franken       | Berliner Platz 43            | München        | 80805      | Germany |
|         38 | Island Trading            | Helen Bennett       | Garden House Crowther Way    | Cowes          | PO31 7PJ   | UK      |
|         39 | Königlich Essen           | Philip Cramer       | Maubelstr. 90                | Brandenburg    | 14776      | Germany |
|         44 | Lehmanns Marktstand       | Renate Messner      | Magazinweg 7                 | Frankfurt a.M. | 60528      | Germany |
|         52 | Morgenstern Gesundkost    | Alexander Feuer     | Heerstr. 22                  | Leipzig        | 4179       | Germany |
|         53 | North/South               | Simon Crowther      | South House 300 Queensbridge | London         | SW7 1RZ    | UK      |
|         56 | Ottilies Käseladen        | Henriette Pfalzheim | Mehrheimerstr. 369           | Köln           | 50739      | Germany |
|         63 | QUICK-Stop                | Horst Kloss         | Taucherstraße 10             | Cunewalde      | 1307       | Germany |
|         72 | Seven Seas Imports        | Hari Kumar          | 90 Wadhurst Rd.              | London         | OX15 4NB   | UK      |
|         79 | Toms Spezialitäten        | Karin Josephs       | Luisenstr. 48                | Münster        | 44087      | Germany |
|         86 | Die Wandernde Kuh         | Rita Müller         | Adenauerallee 900            | Stuttgart      | 70563      | Germany |
+------------+---------------------------+---------------------+------------------------------+----------------+------------+---------+
18 rows in set (0.00 sec)


-- Question: "Which employees have job titles of CLERK, MANAGER, or SALESMAN?"
SELECT ENAME, JOB FROM EMP WHERE JOB IN ('CLERK', 'MANAGER', 'SALESMAN');
+--------+----------+
| ENAME  | JOB      |
+--------+----------+
| SMITH  | CLERK    |
| ALLEN  | SALESMAN |
| WARD   | SALESMAN |
| JONES  | MANAGER  |
| MARTIN | SALESMAN |
| BLAKE  | MANAGER  |
| CLARK  | MANAGER  |
| TURNER | SALESMAN |
| ADAMS  | CLERK    |
| JAMES  | CLERK    |
| MILLER | CLERK    |
+--------+----------+
11 rows in set (0.00 sec)

-- Question: "Which employees do not have job titles of CLERK, MANAGER, or SALESMAN?"
SELECT ENAME, JOB FROM EMP WHERE JOB NOT IN ('CLERK', 'MANAGER', 'SALESMAN');
+-------+-----------+
| ENAME | JOB       |
+-------+-----------+
| SCOTT | ANALYST   |
| KING  | PRESIDENT |
| FORD  | ANALYST   |
+-------+-----------+
3 rows in set (0.00 sec)

-- Question: "Which employees have job titles of MANAGER or SALESMAN?"
SELECT ENAME, JOB FROM EMP WHERE JOB = 'MANAGER' OR JOB = 'SALESMAN';
+--------+----------+
| ENAME  | JOB      |
+--------+----------+
| ALLEN  | SALESMAN |
| WARD   | SALESMAN |
| JONES  | MANAGER  |
| MARTIN | SALESMAN |
| BLAKE  | MANAGER  |
| CLARK  | MANAGER  |
| TURNER | SALESMAN |
+--------+----------+
7 rows in set (0.00 sec)


-- Question: "List all employee names in alphabetical order."
SELECT ENAME FROM EMP ORDER BY ENAME;
+--------+
| ENAME  |
+--------+
| ADAMS  |
| ALLEN  |
| BLAKE  |
| CLARK  |
| FORD   |
| JAMES  |
| JONES  |
| KING   |
| MARTIN |
| MILLER |
| SCOTT  |
| SMITH  |
| TURNER |
| WARD   |
+--------+
14 rows in set (0.02 sec)


-- Question: "List all employees with their hire dates and jobs, ordered by job title in descending order."
SELECT ENAME, HIREDATE, JOB FROM EMP ORDER BY JOB DESC;
+--------+------------+-----------+
| ENAME  | HIREDATE   | JOB       |
+--------+------------+-----------+
| ALLEN  | 1981-02-20 | SALESMAN  |
| WARD   | 1981-02-22 | SALESMAN  |
| MARTIN | 1981-09-28 | SALESMAN  |
| TURNER | 1981-09-08 | SALESMAN  |
| KING   | 1981-11-17 | PRESIDENT |
| JONES  | 1981-04-02 | MANAGER   |
| BLAKE  | 1981-05-01 | MANAGER   |
| CLARK  | 1981-06-09 | MANAGER   |
| SMITH  | 1980-12-17 | CLERK     |
| ADAMS  | 1983-01-12 | CLERK     |
| JAMES  | 1981-12-03 | CLERK     |
| MILLER | 1982-01-23 | CLERK     |
| SCOTT  | 1982-12-09 | ANALYST   |
| FORD   | 1981-12-03 | ANALYST   |
+--------+------------+-----------+
14 rows in set (0.00 sec)


-- Question: "List all employees with their hire dates and jobs, ordered by job title in descending order." (Same as the previous query, likely a duplicate.)
SELECT ENAME, HIREDATE, JOB FROM EMP ORDER BY JOB DESC;
+--------+------------+-----------+
| ENAME  | HIREDATE   | JOB       |
+--------+------------+-----------+
| ALLEN  | 1981-02-20 | SALESMAN  |
| WARD   | 1981-02-22 | SALESMAN  |
| MARTIN | 1981-09-28 | SALESMAN  |
| TURNER | 1981-09-08 | SALESMAN  |
| KING   | 1981-11-17 | PRESIDENT |
| JONES  | 1981-04-02 | MANAGER   |
| BLAKE  | 1981-05-01 | MANAGER   |
| CLARK  | 1981-06-09 | MANAGER   |
| SMITH  | 1980-12-17 | CLERK     |
| ADAMS  | 1983-01-12 | CLERK     |
| JAMES  | 1981-12-03 | CLERK     |
| MILLER | 1982-01-23 | CLERK     |
| SCOTT  | 1982-12-09 | ANALYST   |
| FORD   | 1981-12-03 | ANALYST   |
+--------+------------+-----------+
14 rows in set (0.01 sec)

SELECT * FROM EMP;
+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)




-- Question: "List all employees excluding those with the job title CLERK, ordered by job title in descending order."
SELECT * FROM EMP WHERE JOB != 'CLERK' ORDER BY JOB DESC;
+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
+-------+--------+-----------+------+------------+---------+---------+--------+
10 rows in set (0.00 sec)


