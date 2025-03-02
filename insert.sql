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

