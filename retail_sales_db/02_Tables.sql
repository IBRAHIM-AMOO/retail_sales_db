USE retail_sales_db;

CREATE TABLE retail_sales_db.customers(
customer_id INT PRIMARY KEY,
full_name VARCHAR(100),
email VARCHAR(100),
signup_date DATE
);

CREATE TABLE retail_sales_db.product(
product_id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(100),
category VARCHAR(50),
price DECIMAL(10,2)
);

CREATE TABLE retail_sales_db.orders(
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
total_amount DECIMAL(10,2)
);

CREATE TABLE retail_sales_db.order_items(
order_item_id INT PRIMARY KEY,
order_id INT,
product_id INT,
quantity INT,
unit_price DECIMAL(10,2)
);
