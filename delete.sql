#3️⃣ Deleting Data (DELETE)
The DELETE statement removes records from a table.

📌 Basic Syntax:

DELETE FROM table_name WHERE condition;

📌 Example: Deleting a Specific Employee

DELETE FROM employees 
WHERE emp_id = 105;


✔️ Removes the employee with emp_id = 105.



📌 Deleting All Employees in a Department

DELETE FROM EMPLOYEES 
WHERE DEP_ID =1

✔️ Deletes all employees belonging to department 1.



📌 Deleting All Records (⚠️ Use with Caution!)


DELETE FROM employees;


✔️ Removes all employees from the table, but the table structure remains.
⚠️ Warning: This cannot be undone!

