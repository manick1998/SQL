4️⃣ Retrieving Data (SELECT)
The SELECT statement is used to fetch data from a table.


📌 Basic Syntax:
SELECT column1, column2 FROM table_name WHERE condition;


📌 Selecting All Employees

SELECT * FROM employees;


✔️ Retrieves all columns and rows from the employees table.



📌 Selecting Specific Columns
SELECT name, salary FROM employees;


✔️ Retrieves only name and salary columns.



📌 Filtering Data with WHERE

SELECT * FROM employees WHERE salary > 60000;

✔️ Retrieves employees with a salary greater than 60,000.



📌 Sorting Data (ORDER BY)


SELECT * FROM employees ORDER BY salary DESC;

✔️ Retrieves all employees sorted by salary in descending order.



📌 Limiting Results (LIMIT)

SELECT * FROM employees LIMIT 5;


✔️ Retrieves only the first 5 records.



📌 Finding Unique Values (DISTINCT)

SELECT DISTINCT dept_id FROM employees;


✔️ Retrieves unique department IDs without duplicates.



🔹 Summary of What You Learned
✅ INSERT INTO – Adds new records
✅ UPDATE – Modifies existing records
✅ DELETE – Removes records
✅ SELECT – Retrieves data




