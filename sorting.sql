4️⃣ Sorting Data (ORDER BY)

 ORDER BY sorts results in ascending (ASC) or descending (DESC) order.

 🔹 Example: Sort customers by age in ascending order.

 SELECT customer_name, age FROM customers ORDER BY age ASC;


 Example: Sort customers by age in descending order.


 SELECT customer_name, age FROM customers ORDER BY age DESC;


🔹 Sorting by multiple columns: First by city, then by name.

SELECT customer_name, city FROM customers ORDER BY city ASC, customer_name DESC;

