CREATE DATABASE bank;
Use Bank;
CREATE TABLE customer (
customer_id INT primary key,
customer_Name varchar(20),
age int,
gender varchar(10),
city varchar(10),
account_type varchar(20),
balance Int);
INSERT INTO customer VALUES
(101, 'Rahul', 28, 'Male', 'Delhi', 'Savings', 50000),
(102, 'Neha', 32, 'Female', 'Mumbai', 'Current', 75000),
(103, 'Amit', 25, 'Male', 'Pune', 'Savings', 35000),
(104, 'Priya', 29, 'Female', 'Delhi', 'Savings', 62000),
(105, 'Ravi', 41, 'Male', 'Chennai', 'Current', 90000),
(106, 'Anjali', 35, 'Female', 'Bangalore', 'Savings', 48000),
(107, 'Vikas', 30, 'Male', 'Noida', 'Savings', 55000),
(108, 'Pooja', 27, 'Female', 'Gurgaon', 'Current', 68000),
(109, 'Karan', 45, 'Male', 'Mumbai', 'Savings', 82000),
(110, 'Sneha', 31, 'Female', 'Pune', 'Savings', 43000),
(111, 'Arjun', 38, 'Male', 'Delhi', 'Current', 95000),
(112, 'Meena', 26, 'Female', 'Jaipur', 'Savings', 37000),
(113, 'Suresh', 50, 'Male', 'Chennai', 'Current', 120000),
(114, 'Kavita', 34, 'Female', 'Noida', 'Savings', 51000),
(115, 'Rohit', 29, 'Male', 'Bangalore', 'Savings', 46000),
(116, 'Simran', 40, 'Female', 'Delhi', 'Current', 88000),
(117, 'Manish', 36, 'Male', 'Gurgaon', 'Savings', 59000),
(118, 'Nisha', 24, 'Female', 'Jaipur', 'Savings', 32000),
(119, 'Deepak', 43, 'Male', 'Mumbai', 'Current', 105000),
(120, 'Swati', 33, 'Female', 'Pune', 'Savings', 47000)
;
select * from customer;
INSERT INTO customer VALUES
(101, 'Rahul', 28, 'Male', 'Delhi', 'Savings', 50000),
(102, 'Neha', 32, 'Femal', 'Mumbai', 'Current', 75000),
(103, 'Amit', 25, 'Male', 'Pune', 'Savings', 35000),
(104, 'Priya', 29, 'Femal', 'Delhi', 'Savings', 62000),
(105, 'Ravi', 41, 'Male', 'Chennai', 'Current', 90000),
(106, 'Anjali', 35, 'Femal', 'Bangalore', 'Savings', 48000),
(107, 'Vikas', 30, 'Male', 'Noida', 'Savings', 55000),
(108, 'Pooja', 27, 'Femal', 'Gurgaon', 'Current', 68000),
(109, 'Karan', 45, 'Male', 'Mumbai', 'Savings', 82000),
(110, 'Sneha', 31, 'Femal', 'Pune', 'Savings', 43000),
(111, 'Arjun', 38, 'Male', 'Delhi', 'Current', 95000),
(112, 'Meena', 26, 'Femal', 'Jaipur', 'Savings', 37000),
(113, 'Suresh', 50, 'Male', 'Chennai', 'Current', 120000),
(114, 'Kavita', 34, 'Femal', 'Noida', 'Savings', 51000),
(115, 'Rohit', 29, 'Male', 'Bangalore', 'Savings', 46000),
(116, 'Simran', 40, 'Femal', 'Delhi', 'Current', 88000),
(117, 'Manish', 36, 'Male', 'Gurgaon', 'Savings', 59000),
(118, 'Nisha', 24, 'Femal', 'Jaipur', 'Savings', 32000),
(119, 'Deepak', 43, 'Male', 'Mumbai', 'Current', 105000),
(120, 'Swati', 33, 'Femal', 'Pune', 'Savings', 47000)

select customer_name, city, balance from customer;
select customer_name, city, balance from customer;
select * from customer where age between 25 and 35;
select * from customer where balance between 40000 and 80000;
select * from customer where city in ('delhi', 'mumbai', 'pune');
SET SQL_SAFE_UPDATES = 0
SET SQL_SAFE_UPDATES = 0
update customer
set balance = 60000
where customer_ID = 101;
select * from customer where customer_name like "A%";
delete from customer where city in ('jaipur', 'chennai');
SET SQL_SAFE_UPDATES = 0
update customer
set balance = balance+5000
where account_type = 'savings';
select * from customer;
select * from customer where customer_name like '%i%';
select * from customer where city not in ('delhi' , 'mumbai' , 'pune');
SET SQL_SAFE_UPDATES = 0
delete from customer where customer_Id = 120;
UPDATE CUSTOMER SET CITY = 'DELHI' WHERE CUSTOMER_ID = 103;
delete from customer where customer_Id = 120;
select * from customer where balance not between 50000 and 100000;
select * from customer where city like 'D%';
delete from customer where balance < 35000;
select * from customer where customer_name like '%a';
SET SQL_SAFE_UPDATES = 0
update customer set account_type ='current' where balance between 80000 and 120000;

Create database school;
use school;
create table student (
rollNo Int primary key,
regno int unique,
SName varchar(20) not null,
fee int check (fee>200),
marks int default 0);
drop table student;
drop database school;
create database customer;
use customer;
create table customer(
customerId int primary key,
accountNo int unique,
customerName varchar(20) not null,
deposit int check (deposit > 1000),
city varchar(20) Default 'delhi');
select * from customer;
select * from bank;
select count(*) from bank inner join Transactions  on  bank.act_no=Transactions.act_no group by email and type = 'deposit';
delete from transactions where act_no = 1003;
select Name, act_no from bank inner join Transactions on bank.act_no=Transactions.act_no;
select bank.act_no,name from bank  right join  Transactions  on  bank.act_no=Transactions.act_no;
