-- 5️⃣ Aggregate Functions

📌 Aggregate functions perform calculations on multiple rows.

Function	Description
COUNT()	Counts number of rows
SUM()	Adds up values
AVG()	Calculates average
MIN()	Finds smallest value
MAX()	Finds largest value

🔹 Example: Count total customers.
SELECT COUNT(*) FROM customers;


🔹 Example: Find the total order amount.

SELECT SUM(order_amount) FROM orders;


🔹 Example: Find the average order amount.

SELECT AVG(order_amount) FROM orders;


🔹 Example: Find the highest and lowest order amounts.

SELECT MAX(order_amount), MIN(order_amount) FROM orders;


