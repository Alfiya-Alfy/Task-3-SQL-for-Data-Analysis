1. Basic SELECT and WHERE
-- Get all products with price greater than 100--

SELECT * FROM products
WHERE price > 100;

2. ORDER BY
-- List all products sorted by price in descending order--

SELECT * FROM products
ORDER BY price DESC;

3. GROUP BY with Aggregates
-- Count number of orders placed for each product--

SELECT p.product_name, COUNT(o.order_id) AS total_orders
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name;

 4. INNER JOIN
-- Show order details including customer, staff member, and product--

SELECT o.customer_name, s.first_name || ' ' || s.last_name AS staff_name, p.product_name, p.price
FROM orders o
JOIN staff s ON o.staff_id = s.staff_id
JOIN products p ON o.product_id = p.product_id;

5. LEFT JOIN
-- Show all staff and the orders they handled (including those with no orders)--

SELECT s.first_name || ' ' || s.last_name AS staff_name, o.order_id
FROM staff s
LEFT JOIN orders o ON s.staff_id = o.staff_id;

6. RIGHT JOIN (Not supported in SQLite, simulate with LEFT JOIN)
-- Simulate RIGHT JOIN by reversing LEFT JOIN--

SELECT p.product_name, o.customer_name
FROM products p
LEFT JOIN orders o ON p.product_id = o.product_id;

7. Subquery
-- Get the name of the most expensive product--

SELECT product_name
FROM products
WHERE price = (SELECT MAX(price) FROM products);

8. Aggregate: AVG, SUM
-- Calculate total and average price of all products--

SELECT SUM(price) AS total_price, AVG(price) AS average_price
FROM products;

9. View Creation
-- Create a view of order summary--

CREATE VIEW order_summary AS
SELECT o.order_id, o.customer_name, s.first_name || ' ' || s.last_name AS staff_name, p.product_name, p.price
FROM orders o
JOIN staff s ON o.staff_id = s.staff_id
JOIN products p ON o.product_id = p.product_id;

10. Index Creation for Optimization
-- Create index on product_id for faster joins--

CREATE INDEX idx_product_id ON orders(product_id);



