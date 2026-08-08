Create Table Customers(

customer_id int primary key,
name varchar(200) not null,
email varchar(200) unique,
phone varchar(20),
city varchar(20)

);

INSERT INTO Customers (customer_id, name, email, phone, city)
VALUES
(1, 'Rahim Uddin', 'rahim@example.com', '01711111111', 'Dhaka'),
(2, 'Karim Ahmed', 'karim@example.com', '01822222222', 'Chattogram'),
(3, 'Nusrat Jahan', 'nusrat@example.com', '01933333333', 'Khulna'),
(4, 'Tanvir Hasan', 'tanvir@example.com', '01644444444', 'Rajshahi'),
(5, 'Ayesha Akter', 'ayesha@example.com', '01555555555', 'Sylhet'),
(6, 'Sabbir Hossain', 'sabbir@example.com', '01766666666', 'Barishal'),
(7, 'Mehedi Hasan', 'mehedi@example.com', '01877777777', 'Rangpur'),
(8, 'Fatema Begum', 'fatema@example.com', '01988888888', 'Mymensingh'),
(9, 'Arif Khan', 'arif@example.com', '01699999999', 'Cumilla'),
(10, 'Sadia Islam', 'sadia@example.com', '01512345678', 'Gazipur');

create Table Categories
(
category_id int primary key,
category_name varchar(50)
);

INSERT INTO Categories (category_id, category_name)
VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Books'),
(4, 'Home & Kitchen'),
(5, 'Beauty & Personal Care'),
(6, 'Sports & Outdoors'),
(7, 'Toys & Games'),
(8, 'Groceries'),
(9, 'Health & Wellness'),
(10, 'Footwear')

create Table Products
(
product_id int primary key,
product_name varchar(100),
price decimal(10,2),
stock int,
category_id int, 
FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

INSERT INTO Products (product_id, product_name, price, stock, category_id)
VALUES
(1, 'Dell Inspiron Laptop', 85000.00, 15, 1),
(2, 'Samsung Galaxy A56', 42000.00, 30, 1),
(3, 'Men''s T-Shirt', 950.00, 100, 2),
(4, 'Women''s Jeans', 1800.00, 60, 2),
(5, 'Atomic Habits', 650.00, 50, 3),
(6, 'Rice Cooker', 3500.00, 25, 4),
(7, 'Face Wash', 450.00, 80, 5),
(8, 'Football', 1200.00, 40, 6),
(9, 'LEGO Building Set', 2500.00, 18, 7),
(10, 'Running Shoes', 4200.00, 35, 10);

create table Orders
(
order_id int primary key,
customer_id int,
Foreign key (customer_id) references Customers(customer_id),
order_date date,
total_amount decimal(10,2)
);

INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
VALUES
(101, 1, '2026-08-01', 85000.00),
(102, 2, '2026-08-02', 42000.00),
(103, 1, '2026-08-03', 1600.00),
(104, 3, '2026-08-04', 650.00),
(105, 5, '2026-08-05', 3950.00),
(106, 4, '2026-08-06', 1800.00),
(107, 7, '2026-08-06', 1200.00),
(108, 8, '2026-08-07', 2500.00),
(109, 6, '2026-08-07', 450.00),
(110, 10, '2026-08-07', 4200.00);



UPDATE Products
SET price = 90000.00
WHERE product_id = 1;

UPDATE Customers
SET city = 'Narayanganj'
WHERE customer_id = 1;

UPDATE Products
SET stock = 50
WHERE product_id = 2;

DELETE from orders
where customer_id = 1;
DELETE FROM customers
where name = 'Rahim Uddin';

DELETE from products
where product_name = 'Women''s Jeans' ;

select * from customers;

select * from products;

SELECT * from products
where price > 1000;


SELECT *
FROM Products
WHERE stock < 10;

SELECT *
FROM Customers
WHERE city = 'Dhaka';

SELECT *
FROM Products
ORDER BY price DESC;

SELECT *
FROM Customers
ORDER BY name ASC;

SELECT *
FROM products
LIMIT 5;

select count(customer_id)
FROM customers;

SELECT avg(price)
FROM products;

select max(price)
FROM products;

select sum(stock) as total_stock
FROM products;

select avg(stock) as avg_stock
FROM products;

select count(order_id)
FROM orders;

select customers.name, orders.*
from customers
join orders
on customers.customer_id = orders.customer_id

select products.product_name,categories.category_name
from products
join categories
on products.category_id =categories.category_id

select customers.name,orders.order_id,orders.order_date,orders.order_date,orders.total_amount
from orders
join customers
on customers.customer_id = orders.customer_id;
