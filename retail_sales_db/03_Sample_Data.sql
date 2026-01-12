USE retail_sales_db;

INSERT INTO customers (customer_id,full_name, email, signup_date) VALUES
('1','John Doe', 'john@example.com', '2024-01-05'),
('2','Mary Smith', 'mary@example.com', '2024-01-10'),
('3','Ahmed Musa', 'ahmed@example.com', '2024-02-01'),
('4','Grace Johnson', 'grace@example.com', '2024-02-12'),
('5','Peter Obi', 'peter@example.com',  '2024-03-03'),
('6','Aisha Bello', 'aisha@example.com',  '2024-03-15'),
('7','Samuel Okoro', 'samuel@example.com',  '2024-04-01'),
('8','Fatima Ali', 'fatima@example.com',  '2024-04-10');

INSERT INTO product(product_id, product_name, category, price) VALUES
(1, 'Laptop', 'Electronics', 450000),
(2, 'Smartphone', 'Electronics', 300000),
(3, 'Headphones', 'Accessories', 25000),
(4, 'Keyboard', 'Accessories', 18000),
(5, 'Mouse', 'Accessories', 12000),
(6, 'Office Chair', 'Furniture', 85000),
(7, 'Desk', 'Furniture', 120000),
(8, 'Power Bank', 'Electronics', 35000);

INSERT INTO orders (order_id, customer_id, order_date, total_amount) VALUES
(1, 1, '2024-05-01', 475000),
(2, 2, '2024-05-02', 300000),
(3, 3, '2024-05-03', 60000),
(4, 4, '2024-05-03', 18000),
(5, 5, '2024-05-04', 120000),
(6, 1, '2024-05-05', 35000),
(7, 6, '2024-05-06', 85000),
(8, 7, '2024-05-06', 450000);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 1, 450000),
(2, 1, 3, 1, 25000),
(3, 2, 2, 1, 300000),
(4, 3, 3, 2, 25000),
(5, 3, 5, 1, 12000),
(6, 4, 4, 1, 18000),
(7, 5, 7, 1, 120000),
(8, 6, 8, 1, 35000),
(9, 7, 6, 1, 85000),
(10, 8, 1, 1, 450000);

