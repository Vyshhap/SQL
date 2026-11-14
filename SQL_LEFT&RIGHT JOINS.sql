Create database joins;
use joins; 
CREATE TABLE Items (

    Item_ID INT PRIMARY KEY,

    Item_Name VARCHAR(50),

    Category VARCHAR(30),

    Price DECIMAL(10,2));
    INSERT INTO Items VALUES

(101, 'Pizza', 'Food', 250),

(102, 'Burger', 'Food', 150),

(103, 'Pasta', 'Food', 200),

(104, 'Coffee', 'Beverage', 100),

(105, 'Sandwich', 'Food', 180),

(106, 'Juice', 'Beverage', 120);

CREATE TABLE Orders (

    Order_ID INT PRIMARY KEY,

    Customer_Name VARCHAR(50),

    Item_ID INT,

    Quantity INT,

    FOREIGN KEY (Item_ID) REFERENCES Items(Item_ID)

);

INSERT INTO Orders VALUES

(1, 'Ajay', 101, 2),

(2, 'Priya', 102, 3),

(3, 'Rahul', 101, 1),

(4, 'Neha', 104, 2),

(5, 'Amit', 102, 1),

(6, 'Kavita', 103, 3),

(7, 'Rohit', 101, 1),

(8, 'Anjali', 103, 2);
select * from items;
select * from orders;
select item_name, customer_name from items right join orders on  items.item_id = orders.item_id;
select order_id, customer_name , item_name from orders left join items on  orders.item_id = items.item_id;
select customer_name,item_name,price from items right join orders on  items.item_id = orders.item_id and price > 150;
select * from orders left join items on  orders.item_id = items.item_id order by price desc;
select customer_name,item_name,quantity from items right join orders on  items.item_id = orders.item_id and quantity >=2;
select customer_name, category from orders left join items on  orders.item_id = items.item_id and category = 'bevarage';
select customer_name,item_name , price from orders left join items on  orders.item_id = items.item_id and price between 100 and 200 ;
select * from orders left join items on  orders.item_id = items.item_id order by quantity desc;
select customer_name , item_name from items right join orders on  items.item_id = orders.item_id and item_name = 'pizza' or 'pasta';