# SQL Database Practice

This project contains my SQL practice work, including database creation, data insertion, filtering, sorting, updating, deleting, aggregate functions, and table joins.

## 📌 Topics Covered

* Creating tables
* Inserting records
* Updating records
* Deleting records
* Selecting and filtering data
* Sorting data using `ORDER BY`
* Limiting results using `LIMIT`
* Aggregate functions:

  * `COUNT()`
  * `SUM()`
  * `AVG()`
  * `MAX()`
  * `MIN()`
* Using `WHERE` conditions
* Working with `JOIN`
* Understanding primary keys and foreign keys
* Handling foreign key constraints

## 🗄️ Tables

### Customers

Contains customer information such as:

* `customer_id`
* `name`
* `email`
* `phone`
* `city`

### Products

Contains product information such as:

* `product_id`
* `product_name`
* `price`
* `stock`

### Orders

Contains order information and connects customers with their orders using `customer_id`.

## 🔎 Example Queries

### Show products with stock less than 10

```sql
SELECT *
FROM products
WHERE stock < 10;
```

### Show customers from Dhaka

```sql
SELECT *
FROM customers
WHERE city = 'Dhaka';
```

### Sort products by highest price

```sql
SELECT *
FROM products
ORDER BY price DESC;
```

### Show the first 5 products

```sql
SELECT *
FROM products
LIMIT 5;
```

### Count total customers

```sql
SELECT COUNT(*) AS total_customers
FROM customers;
```

### Calculate average product price

```sql
SELECT AVG(price) AS average_price
FROM products;
```

### Calculate total stock

```sql
SELECT SUM(stock) AS total_stock
FROM products;
```

### Show customer names and their orders

```sql
SELECT c.name, o.order_id
FROM customers AS c
JOIN orders AS o
ON c.customer_id = o.customer_id;
```

## 📂 Project Structure

```text
SQL-Assignment/
│
├── README.md
├── queries.sql
└── outputs/
    ├── 01_select_products.png
    ├── 02_filter_stock.png
    ├── 03_customers_dhaka.png
    ├── 04_sort_products.png
    ├── 05_first_5_products.png
    ├── 06_count_customers.png
    ├── 07_average_price.png
    ├── 08_total_stock.png
    └── 09_customer_orders.png
```

## 🛠️ Tools Used

* SQL
* MySQL / PostgreSQL
* MySQL Workbench / pgAdmin
* Git & GitHub

## 🎯 Purpose

The purpose of this project is to practice fundamental SQL concepts and understand how relational databases are created, managed, queried, and connected using foreign keys and joins.
