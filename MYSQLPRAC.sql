create database SQLPracticeDB;
Use SQLPracticeDB;
Create table DBEMPLOYEES(
Department_ID Int Primary key,
 DepartmentName varchar(60) NOT NULL UNIQUE, 
 Location varchar(60) NOT NULL);
 
DROP table DBEMPLOYEES;
CREATE TABLE DBDEPARTMENTS(
Department_ID Int Primary key,
 DepartmentName varchar(60) NOT NULL UNIQUE, 
 Location varchar(60) NOT NULL);
 
 create table DBEmployees(
 EmployeeID int PRIMARY KEY, 
 FirstName varchar(40) NOT NULL, 
 LastName varchar(40) NOT NULL, 
 Email varchar(100) NOT NULL UNIQUE, 
 Gender char(1), 
 Department_ID int NULL REFERENCES DBDEPARTMENTS(Department_ID), 
 ManagerID int NULL, 
 HireDate date NOT NULL, 
 Salary decimal(12,2) NOT NULL CHECK (Salary > 0), 
 City varchar(60), 
 Status varchar(20) NOT NULL DEFAULT 'Active', 
 CONSTRAINT FK_Employees_Manager FOREIGN KEY (ManagerID) REFERENCES DBEmployees(EmployeeID));

create table DBProjects(
 project_ID int primary key,
 project_Name varchar(30) not null,
 Department_ID INT References DBDEPARTMENTS(Department_ID), 
 Start_date DATE NOT NULL,
 END_DATE DATE NOT NULL,
 Budget decimal (12,0) not null);
 
Create table DBEMPLOYEESPROJECT (
EMPLOYEE_ID INT NOT NULL REFERENCES DBEmployees(EmployeeID),
PROJECT_ID INT NOT NULL REFERENCES DBPROJECTS(project_ID),
Hours_worked int not null check (hours_worked >=0),
Role_name varchar(50),
primary key (EMPLOYEE_ID, PROJECT_ID));

Create table DBSALARIES(
SALARYID INT PRIMARY KEY,
EMPLOYEE_ID INT NOT NULL REFERENCES DBEmployees(EmployeeID),
PAY_MONTH DATE NOT NULL,
BONUS DECIMAL (10.2) NOT NULL DEFAULT 0,
PaidAmount decimal (12,2) not null,
Constraint UQ_SalaryMonth Unique (EMPLOYEE_ID, PAY_MONTH));

CREATE TABLE DBCustomers(
CustomerID int primary key,
CustomerName varchar(50) not null,
City varchar(50),
SignUpDate date not null,
totalSpent decimal (12,2) Not null default 0);

Insert DBEMPLOYEES VALUES
(1,'Asha','Rao','asha@example.com','F',1,NULL,'2019-01-15',125000,'Hyderabad','Active'),
(2,'Rahul','Shah','rahul@example.com','M',2,NULL,'2018-07-10',115000,'Bengaluru','Active'),
(3,'Neha','Singh','neha@example.com','F',3,NULL,'2020-03-12',110000,'Mumbai','Active'),
(4,'Arjun','Mehta','arjun@example.com','M',4,NULL,'2019-09-05',120000,'Pune','Active'),
(5,'Priya','Nair','priya@example.com','F',5,NULL,'2021-04-19',105000,'Hyderabad','Active');
INSERT DBEMPLOYEES VALUES
(6,'Kiran','Patel','kiran@example.com','M',1,1,'2022-02-11',72000,'Hyderabad','Active'),
(7,'Divya','Kumar','divya@example.com','F',1,1,'2023-08-21',68000,'Chennai','Active'),
(8,'Rohit','Verma','rohit@example.com','M',2,2,'2022-11-03',58000,'Bengaluru','Active'),
(9,'Sneha','Iyer','sneha@example.com','F',3,3,'2024-01-16',64000,'Mumbai','Active'),
(10,'Vikram','Das','vikram@example.com','M',4,4,'2021-06-24',81000,'Pune','Active'),
(11,'Ananya','Gupta','ananya@example.com','F',4,4,'2023-05-09',74000,'Hyderabad','Active'),
(12,'Manoj','Reddy','manoj@example.com','M',5,5,'2020-12-02',78000,'Hyderabad','Inactive'),
(13,'Pooja','Joshi','pooja@example.com','F',1,1,'2024-07-18',55000,'Pune','Active'),
(14,'Sahil','Khan','sahil@example.com','M',3,3,'2025-02-10',52000,'Delhi','Active'),
(15,'Meera','Bose','meera@example.com','F',NULL,NULL,'2025-09-01',48000,'Kolkata','Active'),
(16,'Tarun','Jain','tarun@example.com','M',5,5,'2023-10-15',60000,'Chennai','Inactive');
INSERT DBProjects VALUES
(101,'Patient Portal',1,'2024-01-01','2022-07-28',900000),(102,'Data Migration',1,'2024-06-01','2025-03-31',500000),
(103,'Recruitment Drive',2,'2025-01-01','2022-07-28',120000),(104,'Budget Automation',3,'2024-04-01','2022-07-28',350000),
(105,'CRM Upgrade',4,'2025-02-01','2022-07-28',650000),(106,'Inventory Tracker',5,'2024-08-01','2025-06-30',220000),
(107,'Security Audit',1,'2025-07-01','2022-07-28',175000),(108,'Compliance Review',6,'2025-05-01','2022-07-28',95000);
INSERT DBEMPLOYEESPROJECT VALUES
(1,101,40,'Lead'),(6,101,120,'Developer'),(7,101,95,'Analyst'),(13,101,50,'Tester'),
(1,102,25,'Lead'),(6,102,80,'Developer'),(7,107,35,'Analyst'),
(2,103,30,'Lead'),(8,103,75,'Coordinator'),(3,104,35,'Lead'),(9,104,110,'Analyst'),(14,104,55,'Analyst'),
(4,105,30,'Lead'),(10,105,105,'Developer'),(11,105,85,'Analyst'),(5,106,40,'Lead'),(12,106,70,'Analyst'),(16,106,65,'Tester');
INSERT DBSALARIES VALUES
(1,1,'2026-08-01',10000,135000),(2,2,'2026-08-01',5000,120000),(3,3,'2026-08-01',4000,114000),
(4,4,'2026-08-01',8000,128000),(5,5,'2026-08-01',6000,111000),(6,6,'2026-08-01',3000,75000),
(7,7,'2026-08-01',0,68000),(8,8,'2026-08-01',2000,60000),(9,9,'2026-08-01',1500,65500),
(10,10,'2026-08-01',4000,85000),(11,11,'2026-08-01',3000,77000),(12,12,'2026-08-01',0,78000),
(13,13,'2026-08-01',0,55000),(14,14,'2026-08-01',1000,53000),(15,15,'2026-08-01',0,48000),
(16,16,'2026-08-01',0,60000),(17,1,'2026-09-01',8000,133000),(18,6,'2026-09-01',2500,74500),
(19,7,'2026-09-01',2000,70000),(20,9,'2026-09-01',0,64000),(21,10,'2026-09-01',4500,85500),
(22,11,'2026-09-01',2000,76000),(23,14,'2026-09-01',0,52000);
INSERT DBCUSTOMERS VALUES
(201,'Riya Stores','Hyderabad','2024-01-12',125000),(202,'Green Mart','Pune','2024-05-20',87000),
(203,'Skyline Tech','Bengaluru','2025-02-14',240000),(204,'Lotus Foods','Hyderabad','2025-06-09',43000),
(205,'Nova Retail','Mumbai','2025-07-23',0),(206,'Bright Labs','Delhi','2026-01-11',160000),
(207,'Orbit Books','Chennai','2026-03-04',22000),(208,'Peak Sports','Pune','2026-06-30',94000);

SELECT * FROM DBEMPLOYEES;
SELECT * FROM DBProjects;
SELECT * FROM DBSALARIES;
SELECT * FROM DBCustomers;
SELECT * FROM DBDepartments;
SELECT * FROM DBEMPLOYEESPROJECT;
INSERT DBDepartments VALUES(1,'IT','Hyderabad'),(2,'HR','Bengaluru'),(3,'Finance','Mumbai'),(4,'Sales','Pune'),(5,'Operations','Hyderabad'),(6,'Legal','Delhi');
SELECT Emp_ID, Emp_Name, Department, Salary FROM DELHI_EMPLOYEES1;
select firstname, lastname, salary from DBemployees;
Select Distinct City from DBEMPLOYEES;
select * from DBEMPLOYEES ORDER BY SALARY DESC LIMIT 5;
select * from DBEMPLOYEES WHERE SALARY > 75000;
select * from DBEMPLOYEES WHERE City = "Hyderabad";
Select * from DBEMPLOYEES WHERE Department_ID = 1 AND Status = "Active";
Select * from DBEMPLOYEES WHERE City = "Pune" or "Mumbai";
Select * from DBEMPLOYEES WHERE SALARY BETWEEN 60000 AND 90000;
Select * from DBEMPLOYEES WHERE FirstName like "A%";
Select * from DBEMPLOYEES WHERE Department_ID is Null;
Select * from DBEMPLOYEES WHERE LastName like "%A%";
Select * from DBEMPLOYEES where Status = "active";
select * from DBEMPLOYEES WHERE HireDate > "2022-07-28";
select * from DBEMPLOYEES WHERE Department_ID IN (1 ,3 , 5 );
SELECT COUNT(*) AS total_emp FROM DBEMPLOYEES;
select count(Distinct city) as Ucity from DBEMPLOYEES;
SELECT AVG(SALARY) AS AVG_SAL FROM DBEMPLOYEES;
SELECT min(SALARY) AS MIN_sal FROM DBEMPLOYEES;
SELECT Max(SALARY) AS max_sal FROM DBEMPLOYEES;
select Department_ID, COUNT(*) AS TotalEmployees FROM DBEmployees GROUP BY Department_ID;
SELECT department_ID, AVG(SALARY) AS AVG_SAL FROM DBEMPLOYEES group by Department_ID ;
SELECT Department_ID, COUNT(*) AS TotalEmployees FROM DBEmployees GROUP BY Department_ID HAVING COUNT(*) >= 3;
select Department_ID, sum(Budget) as totalBudget from DBProjects group by department_ID;
select status, count(*) status FROM DBEMPLOYEES GROUP BY STATUS;
SELECT YEAR(HireDate) AS HireYear, COUNT(*) AS TotalEmployees FROM DBEmployees GROUP BY YEAR(HireDate) ORDER BY HireYear ASC;
SELECT CITY, MAX(SALARY) AS MAX_SALARY FROM DBEMPLOYEES GROUP BY CITY;
SELECT avg(SALARY) as avgsal, DEPARTMENT_ID FROM DBEMPLOYEES GROUP BY Department_ID Having avg(salary) >= 75000;
select count(*) as Numemp from DBEMPLOYEES where ManagerID is NOT NULL;
SELECT PAY_MONTH,SUM(BONUS) AS MONTHb FROM DBSALARIES GROUP BY PAY_MONTH;
-- waq joins 2
SELECT E.EMPLOYEEID, E.DEPARTMENT_ID AS EMP_DEPT FROM DBEMPLOYEES E INNER JOIN DBPROJECTS P ON E.DEPARTMENT_ID = P.DEPARTMENT_ID;
select DBDEPARTMENTS.Department_ID, DBDEPARTMENTS.DepartmentName, COUNT(DBEMPLOYEES.EMPLOYEEID) AS EMPCOUNT FROM DBDEPARTMENTS LEFT JOIN DBEMPLOYEES ON DBDEPARTMENTS.DEPARTMENT_ID = DBEMPLOYEES.DEPARTMENT_ID GROUP BY DBDEPARTMENTS.DEPARTMENT_ID, DBDEPARTMENTS.DEPARTMENTNAME;



 
 

