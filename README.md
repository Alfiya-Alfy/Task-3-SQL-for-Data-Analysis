# Task 3 – SQL for Data Analysis

## 📊 Internship Task – Data Analyst

This repository contains my solution for **Task 3** of the Data Analyst Internship, which focuses on using **SQL for data analysis**. The analysis was conducted using a custom SQLite database containing three tables: `products`, `staff`, and `orders`.

---

## 🗃️ Dataset Overview

### Tables:

1. **products**
   - `product_id`: Primary Key
   - `product_name`: Name of the product
   - `price`: Product price

2. **staff**
   - `staff_id`: Primary Key
   - `first_name`, `last_name`: Staff member's name

3. **orders**
   - `order_id`: Primary Key
   - `customer_name`: Name of the customer
   - `staff_id`: Foreign Key → `staff.staff_id`
   - `product_id`: Foreign Key → `products.product_id`

---

## ✅ SQL Queries and Features Used

- **Basic Queries** using `SELECT`, `WHERE`, `ORDER BY`
- **Joins**: `INNER JOIN`, `LEFT JOIN`
- **Subqueries**
- **Aggregate Functions**: `COUNT`, `SUM`, `AVG`
- **Group By**
- **View Creation**
- **Query Optimization** using `INDEX`

---

## 📂 Files Included

- `task3_queries.sql`: Contains all SQL queries written for the task.
- `screenshots/`: Folder with screenshots of SQL query outputs.
- `README.md`: This file describing the task and approach.

---

## 📌 Sample SQL Highlights

```sql
-- Count number of orders placed for each product
SELECT p.product_name, COUNT(o.order_id) AS total_orders
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name;
```

```sql
-- Create a view of order summary
CREATE VIEW order_summary AS
SELECT o.order_id, o.customer_name, s.first_name || ' ' || s.last_name AS staff_name, p.product_name, p.price
FROM orders o
JOIN staff s ON o.staff_id = s.staff_id
JOIN products p ON o.product_id = p.product_id;
```

---

## 🚀 How to Run

You can run the queries using:
- **DB Browser for SQLite** (Recommended)
- Or any SQL tool that supports SQLite

Steps:
1. Import the SQL script or manually execute the queries.
2. Review the output.
3. Verify the view and indexed query for optimization.

---

## 📸 Screenshots

All query results are saved in the `/screenshots` folder for reference.

---
