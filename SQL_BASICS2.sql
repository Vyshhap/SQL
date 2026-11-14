-- WAQ ONLINE TABLE
Create database online ;
use Online;
create table product (
Produt_ID int Primary key,
product_name VARCHAR(50),
category VARCHAR(30),
price DECIMAL(10,2),
quantity INT,
brand VARCHAR(30),
city VARCHAR(30));

desc product;
INSERT INTO product VALUES

(101, 'Laptop', 'Electronics', 55000, 10, 'Dell', 'Delhi'),

(102, 'Mouse', 'Electronics', 800, 25, 'Logitech', 'Mumbai'),

(103, 'Keyboard', 'Electronics', 1500, 20, 'HP', 'Pune'),

(104, 'Chair', 'Furniture', 4500, 15, 'Nilkamal', 'Delhi'),

(105, 'Table', 'Furniture', 7000, 8, 'Ikea', 'Mumbai'),

(106, 'Headphones', 'Electronics', 2500, 30, 'Boat', 'Pune'),

(107, 'Bottle', 'Home', 500, 40, 'Milton', 'Delhi'),

(108, 'Bag', 'Accessories', 1800, 18, 'Skybags', 'Chennai'),

(109, 'Watch', 'Accessories', 3500, 12, 'Fastrack', 'Mumbai'),

(110, 'Shoes', 'Fashion', 2800, 22, 'Puma', 'Pune'),

(111, 'Mobile', 'Electronics', 25000, 14, 'Samsung', 'Delhi'),

(112, 'Printer', 'Electronics', 12000, 7, 'Canon', 'Chennai'),

(113, 'Sofa', 'Furniture', 25000, 5, 'Urban', 'Mumbai'),

(114, 'Pen', 'Stationery', 50, 100, 'Cello', 'Delhi'),

(115, 'Notebook', 'Stationery', 120, 80, 'Classmate', 'Pune'),

(116, 'T-Shirt', 'Fashion', 999, 35, 'Nike', 'Mumbai'),

(117, 'Jeans', 'Fashion', 2200, 20, 'Levis', 'Delhi'),

(118, 'Lamp', 'Home', 1200, 25, 'Philips', 'Chennai'),

(119, 'Mixer', 'Home', 3500, 10, 'Prestige', 'Pune'),

(120, 'Camera', 'Electronics', 45000, 6, 'Canon', 'Mumbai');
select * from product;
select price, product_name from Product;
select Price * Quantity as "total amount" from product;

SELECT product_Name, Price from product
where Brand = "dell";

select * from product
where quantity >15;


select sum(price) from product;
select min(price) from product;
select count(price) from product;
select max(price) from product;
select avg(price) from product;

select * from product
where city in ("pune", "delhi","mumbai");
select * from product where price between 1000 and 2000
select * from product where price not between 1000 and 2000;
select * from product where product_name like "L%"


Update product set price=price+200.0 where product_ID =101;

select * from product;
SET SQL_SAFE_UPDATES = 0;
update product 
set price = price+200
where product_name = 'tshirt';
SET SQL_SAFE_UPDATES = 0;
delete from product where product_id =102;
delete from product where Quantity <5;

