-- 3. Constraints in SQL (Ensuring Data Integrity)
-- SQL Constraints are rules applied to columns in a table to maintain accuracy and integrity of the data.

 Types of Constraints in SQL


Constraint	Description	Example
PRIMARY KEY	Ensures unique identification of each record	emp_id INT PRIMARY KEY
FOREIGN KEY	Links two tables, enforcing referential integrity	dept_id INT REFERENCES departments(id)
NOT NULL	Ensures a column cannot have NULL values	name VARCHAR(50) NOT NULL
UNIQUE	Ensures column values are distinct	email VARCHAR(100) UNIQUE
CHECK	Ensures column values meet a condition	age INT CHECK (age >= 18)
DEFAULT	Assigns a default value when no value is provided	status VARCHAR(20) DEFAULT 'Active'
1️⃣ PRIMARY KEY Constraint


1️⃣ PRIMARY KEY Constraint
Ensures each row is uniquely identified
Cannot be NULL or duplicate
A table can have only one PRIMARY KEY
📌 Example: Creating an employees table with a PRIMARY KEY

2️⃣ FOREIGN KEY Constraint
Links two tables to maintain referential integrity
Ensures that values in one table match values in another table
📌 Example: Linking employees to departments using FOREIGN KEY

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);


✔️ Each dept_id in employees must exist in departments.
✔️ Prevents orphan records (employees linked to non-existent departments).

3️⃣ NOT NULL Constraint
Ensures a column must have a value (cannot be NULL).
📌 Example:

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL, 
    email VARCHAR(100) NOT NULL
);

✔️ name and email must be provided when inserting data.


4️⃣ UNIQUE Constraint
Ensures that all values in a column are different.
📌 Example: Prevent duplicate emails in a users table

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    email VARCHAR(100) UNIQUE NOT NULL
);

✔️ No two users can have the same email.

📌 To enforce UNIQUE on multiple columns:

CREATE TABLE orders (
    order_id INT,
    product_id INT,
    UNIQUE (order_id, product_id)
);

5️⃣ CHECK Constraint
Ensures a column meets a specific condition.
📌 Example: Employees must be at least 18 years old

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT CHECK (age >= 18)
);


6️⃣ DEFAULT Constraint
Assigns a default value if no value is provided.
📌 Example: New users should have Active status by default
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50),
    status VARCHAR(20) DEFAULT 'Active'
);

✔️ If status is not provided, it automatically becomes 'Active'.


🔹 Modifying Constraints with ALTER TABLE
Adding a Constraint
📌 Add a CHECK constraint to enforce salary ≥ 15,000

ALTER TABLE employees
ADD CONSTRAINT chk_salary CHECK (salary >= 15000);


Removing a Constraint
📌 Drop a CHECK constraint

ALTER TABLE employees
DROP CONSTRAINT chk_salary;

🔹 Summary of What You Learned
✅ PRIMARY KEY – Ensures uniqueness and cannot be NULL
✅ FOREIGN KEY – Links two tables (parent-child relationship)
✅ NOT NULL – Ensures a column must have a value
✅ UNIQUE – Ensures column values are distinct
✅ CHECK – Ensures values meet a condition
✅ DEFAULT – Sets a default value if no value is provided
======================================================================================================================


