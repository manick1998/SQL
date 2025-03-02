-- 4. Data Manipulation Language (DML) in SQL
-- DML (Data Manipulation Language) is used to insert, update, delete, and retrieve data in SQL tables.


🔹 DML Commands:

Command	Description
INSERT INTO	Adds new records into a table
UPDATE	Modifies existing records in a table
DELETE	Removes records from a table
SELECT	Retrieves data from one or more tables


1️⃣ Inserting Data (INSERT INTO)
The INSERT INTO statement is used to add new records into a table.

📌 Basic Syntax:

INSERT INTO table_name (column1, column2, ...) VALUES (value1, value2, ...);
📌 Example: Insert Data into employees Table
INSERT INTO employees (emp_id, name, age, salary, dept_id)
VALUES (101, 'John Doe', 25, 50000, 1);


✔️ Adds a new employee with emp_id = 101.


📌 Inserting Multiple Rows at Once


INSERT INTO employees (emp_id, name, age, salary, dept_id) 
VALUES 
(102, 'Alice Smith', 30, 60000, 2),
(103, 'Bob Brown', 28, 55000, 1);
✔️ Adds multiple records at once, which is faster and more efficient than inserting them one by one.



📌 Inserting Data Without Specifying Column Names
INSERT INTO employees VALUES (104, 'Charlie White', 35, 65000, 3);
⚠️ Warning: You must insert values in the correct order as defined in the table schema.



📌 Using DEFAULT Values
INSERT INTO employees (emp_id, name, age, salary) 
VALUES (105, 'David Green', 40, DEFAULT);

=======================================================================================

2️⃣ Updating Data (UPDATE)
The UPDATE statement modifies existing records in a table.

📌 Basic Syntax:
UPDATE table_name 
SET column1 = value1, column2 = value2 
WHERE condition;

⚠️ Always use WHERE to prevent updating all records accidentally!

📌 Example: Updating an Employee’s Salary
UPDATE Employees
SET salary = 70000
where emp_id = 101;
✔️ Changes salary to 70,000 for the employee with emp_id = 102.

📌 Updating Multiple Columns

UPDATE employees 
SET salary = 75000, dept_id = 2 
WHERE emp_id = 103;

✔️ Updates both salary and dept_id for emp_id = 103.


update employees
set salary =80000, name ="manickaraj"
where emp_id =101

📌 Updating All Records (⚠️ Be Careful!)

update employees
set salary = Salary+5000
✔️ Increases the salary of all employees by 5000.
⚠️ Warning: Without WHERE, all records will be updated!

====================================================================================================================================

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


============================================================================================================

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
==============================================================================================================


