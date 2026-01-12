USE retail_sales_db;


/* 
You can use a multiple line comments to omit the operations of 
unwanted commands or line using the notaion /* and ends with * / 
do remove the spave between * and / when commenting 
THANKS */


-- Total Revenue Generated
SELECT 
    SUM(total_amount) AS total_revenue
FROM orders;

-- daily sales performmance
SELECT 
    order_date,
    SUM(total_amount) AS daily_sales
FROM orders
GROUP BY order_date
ORDER BY order_date;

-- Top-Selling Products (by Quantity)
SELECT 
    p.product_id,
    p.product_name,
    SUM(oi.quantity) AS total_quantity_sold
FROM order_items oi
JOIN product p 
    ON oi.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity_sold DESC;

-- Highest-Spending Customers
SELECT 
    c.customer_id,
    c.full_name,
    SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o 
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.full_name
ORDER BY total_spent DESC;

-- Sales by Product Category
SELECT 
    p.category,
    SUM(oi.quantity * oi.unit_price) AS category_sales
FROM order_items oi
JOIN product p 
    ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY category_sales DESC;

-- Average Order Value
SELECT 
    AVG(total_amount) AS average_order_value
FROM orders;

-- Repeat Customers (More Than One Order)
SELECT 
    customer_id,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

-- Product That Have Never Been Sold
SELECT 
    product_id,
    product_name
FROM product
WHERE product_id NOT IN (
    SELECT DISTINCT product_id
    FROM order_items
);

-- Order-Level Revenue Validation
-- Compare recorded order totals with sum of order item totals
SELECT 
    o.order_id,
    o.total_amount AS recorded_total,
    SUM(oi.quantity * oi.unit_price) AS calculated_total
FROM orders o
JOIN order_items oi 
    ON o.order_id = oi.order_id
GROUP BY o.order_id, o.total_amount;

-- Customer Order History (Detailed View)
-- List all orders for each customer with total amount
SELECT 
    c.full_name,
    o.order_id,
    o.order_date,
    o.total_amount
FROM customers c
JOIN orders o 
    ON c.customer_id = o.customer_id
ORDER BY c.full_name, o.order_date;