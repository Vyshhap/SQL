create Database company;
-- opn company db:
use company;
-- create emp table;

Create table employee (
EMPID int,
EmpName varchar(20),
dept varchar(10),
salary int);


create view employee_view as
select * from employee;

desc employee_view;
desc employee;

-- MODIFY SALARY COLUM DATA TYPE--
alter table employee
modify salary varchar(20);


-- add email to emptable--
alter table employee
add emailId varchar(30);

-- rename empname column
alter table employee
rename column EmpName to Name;

alter table employee
add column age int;

drop table employee;
desc table employee_view;


create table employee (
emp_ID int primary key,
emp_name varchar(20),
salary int,
department varchar(30),
city varchar(30));

desc employee;

insert into employee values(101,"Ajay",20000,"sales","delhi");
insert into employee values (102,"ravi",40000,"trainer","hyd");
insert into employee values(103,"vaish",50000,"dev","delhi");
insert into employee values(104,"rahul",60000,"dev","bihar");
insert into employee values(105,"kanishka",10000,"show","Tn");

select * from  employee;
select emp_name, department from employee;

select salary*12 as "annual salary",emp_name from employee; -- called as virtual column.--

-- where function:

-- relational (>,<,=




select * from employee
where city <> "delhi";


select * from employee
order by emp_name Desc;

select * from employee;
select emp_name , salary from employee;
select * from employee
where department = "dev";
select * from employee
where salary >=25000;
select * from employee
order by salary asc;
select * from employee
order by salary desc;