
CREATE DATABASE FoodDB;

USE FoodDB;

CREATE TABLE Items (

    Item_ID INT PRIMARY KEY,

    Item_Name VARCHAR(50),

    Category VARCHAR(30),

    Price DECIMAL(10,2));

CREATE TABLE Food_Orders (

    Order_ID INT PRIMARY KEY,

    Item_ID INT,

    Customer_Name VARCHAR(50),

    Quantity INT,

    Order_Date DATE,

    FOREIGN KEY (Item_ID) REFERENCES Items(Item_ID));
    select * from items;
    select * from food_orders;
    INSERT INTO Items VALUES

(101, 'Pizza', 'Fast Food', 250.00),

(102, 'Burger', 'Fast Food', 150.00),

(103, 'Pasta', 'Italian', 200.00),

(104, 'Sandwich', 'Snacks', 120.00),

(105, 'Biryani', 'Indian', 220.00),

(106, 'Momos', 'Snacks', 100.00),

(107, 'Fried Rice', 'Chinese', 180.00),

(108, 'Noodles', 'Chinese', 160.00);

INSERT INTO Food_Orders VALUES

(1, 101, 'Ajay', 2, '2026-09-20'),

(2, 102, 'Asha', 1, '2026-09-20'),

(3, 105, 'Ravi', 2, '2026-09-21'),

(4, 103, 'Neha', 1, '2026-09-21'),

(5, 106, 'Karan', 3, '2026-09-22'),

(6, 101, 'Pooja', 1, '2026-09-22'),

(7, 108, 'Amit', 2, '2026-09-23'),

(8, 104, 'Simran', 2, '2026-09-23'),

(9, 107, 'Rahul', 1, '2026-09-24'),

(10, 102, 'Anjali', 2, '2026-09-24');
select * from food_orders;
select item_name, category, price from items;
select order_id,customer_name,item_name, price, quantity from items inner join food_orders
on items.Item_ID = food_orders.item_ID;
select customer_name from items inner join food_orders on items.Item_ID = food_orders.item_ID and item_name = 'pizza';
select * from items inner join food_orders on items.Item_ID = food_orders.item_ID and price >150 ;
select * from items inner join food_orders on items.Item_ID = food_orders.item_ID and  quantity > 1;
select customer_name,item_name, price, quantity from items inner join food_orders on items.Item_ID = food_orders.item_ID and order_Date > 2026-09-21;
select * from items inner join food_orders on items.Item_ID = food_orders.item_ID and category = 'chinese' and  quantity > 1;
select order_ID,customer_Name,Item_Name, price from items inner join food_orders on items.Item_ID = food_orders.item_ID and price <200;