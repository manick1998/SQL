2. Data Definition Language (DDL)

DDL (Data Definition Language) is used to define and manage database structures such as tables, columns, and indexes.

DDL Commands:
CREATE TABLE – Create a new table
ALTER TABLE – Modify a table (add/remove/modify columns)
DROP TABLE – Delete a table permanently
TRUNCATE TABLE – Remove all records from a table (without deleting the structure)



1️⃣ Creating a Table (CREATE TABLE)
The CREATE TABLE statement is used to define a new table with columns and data types.


CREATE TABLE table_name (
    column1 datatype constraints,
    column2 datatype constraints,
    ...
);

📌 Example: Creating an employees table

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    age INT CHECK (age >= 18),
    salary DECIMAL(10,2),
    department VARCHAR(50),
    hire_date DATE DEFAULT CURRENT_DATE
);

✔️ PRIMARY KEY – Ensures each emp_id is unique
✔️ NOT NULL – emp_name cannot be empty
✔️ CHECK (age >= 18) – Ensures employees must be 18 or older
✔️ DECIMAL(10,2) – Stores salary with two decimal places
✔️ DEFAULT CURRENT_DATE – Auto-fills hire_date with today’s date

View the Table Structure:

DESC employees;

✔️ This command displays the column details of the table.

2️⃣ Modifying a Table (ALTER TABLE)
The ALTER TABLE statement is used to add, modify, or delete columns in an existing table.

Adding a New Column
ALTER TABLE employees
ADD COLUMN email VARCHAR(100);

✔️ Adds an email column to the employees table.


Modifying an Existing Column
ALTER TABLE employees
MODIFY COLUMN age INT NOT NULL;

✔️ Changes age column to NOT NULL, meaning it cannot be empty.


Renaming a Column

ALTER TABLE employees
CHANGE COLUMN emp_name full_name VARCHAR(50);

✔️ Renames emp_name to full_name.


Deleting a Column

ALTER TABLE employees
DROP COLUMN email;

✔️ Deletes the email column from the employees table.


3️⃣ Deleting a Table (DROP TABLE)
The DROP TABLE command completely removes a table along with all its data.

📌 Syntax:

DROP TABLE table_name;

📌 Example: Deleting the employees table

DROP TABLE employees;
⚠️ Warning: This deletes everything (table + data). It cannot be undone!


4️⃣ Removing All Records (TRUNCATE TABLE)
The TRUNCATE TABLE command removes all records from a table without deleting the table structure.

📌 Syntax:

TRUNCATE TABLE table_name;


📌 Example: Clearing all employee records

TRUNCATE TABLE employees;
✔️ The employees table will still exist, but all records will be erased.
✔️ This is faster than DELETE because it does not log each row deletion separately.

Summary of What You Learned
✅ CREATE TABLE – Define tables with columns and constraints
✅ ALTER TABLE – Modify tables (add, change, remove columns)
✅ DROP TABLE – Permanently delete a table
✅ TRUNCATE TABLE – Remove all rows but keep the table structure

=====================================================================================================================






