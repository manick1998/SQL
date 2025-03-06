3️⃣ Filtering Data (WHERE)

📌 WHERE filters rows based on conditions.

🔹 Example: Fetch customers from Chicago.
SELECT customer_name, city FROM customers WHERE city = 'Chicago';

🔹 Operators in WHERE:


Operator	Meaning
=	Equal to
!= or <>	Not equal to
>, <, >=, <=	Greater/Less than
BETWEEN	Between a range
IN	Matches any value in a list
LIKE	Pattern matching
IS NULL	Checks for NULL values

 Example: Fetch customers whose age is between 20 and 30.

 SELECT customer_name, age FROM customers WHERE age BETWEEN 20 AND 30;


🔹 Example: Fetch customers who live in New York or Chicago.

SELECT customer_name, city FROM customers WHERE city IN ('New York', 'Chicago');


🔹 Example: Fetch customers whose name starts with ‘A’.

SELECT customer_name FROM customers WHERE customer_name LIKE 'A%';



