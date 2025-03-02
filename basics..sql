What is SQL?
SQL (Structured Query Language) is a standard language used to store, retrieve, and manipulate data in relational databases.

💡 Key Features of SQL:
✔️ Used for querying and modifying data in databases
✔️ Works with relational databases (RDBMS)
✔️ Provides powerful operations like filtering, sorting, and joining data
✔️ Uses a standardized syntax across different database systems

📌 Example SQL Query:

SELECT * FROM employees WHERE salary > 50000;

This query retrieves all employees whose salary is more than 50,000.

Why Use SQL?
SQL is widely used because:
✔️ It helps in managing large datasets efficiently
✔️ It is used in web applications, business analytics, and data science
✔️ It allows developers to store, retrieve, and manipulate data easily


🔹 Real-World Use Cases of SQL:

Banking systems (to store customer transactions)
E-commerce platforms (to track orders and inventory)
Healthcare systems (to store patient records)


SQL vs NoSQL


Feature	SQL (Relational DB)	NoSQL (Non-Relational DB)
Data Storage	Stores data in tables	Stores data in JSON, documents, key-value pairs, or graphs
Schema	Fixed structured schema	Flexible schema (No fixed structure)
Joins	Supports complex joins	Joins are difficult (or not supported)
Scalability	Vertically scalable (Increase CPU, RAM)	Horizontally scalable (Add more servers)
Examples	MySQL, PostgreSQL, SQL Server	MongoDB, Cassandra, Firebase


📌 Example of SQL Data Structure (Relational DBMS - MySQL, PostgreSQL, etc.):

CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50)
);


📌 Example of NoSQL Data Structure (MongoDB - Document-Oriented Database):

{
    "id": 1,
    "name": "John Doe",
    "age": 30,
    "department": "IT"
}


➡️ SQL is best for structured data, while NoSQL is best for unstructured data (like logs, JSON).



Database vs DBMS vs RDBMS

Database vs DBMS vs RDBMS
Feature	Database	DBMS	RDBMS
Definition	Collection of organized data	Software to manage databases	Type of DBMS with relations (tables)
Data Storage	Stores raw data	Stores and retrieves data	Uses tables with relationships
Examples	MySQL database file	MySQL software, SQLite, MongoDB	MySQL, PostgreSQL, Oracle


 Example:

A database is like a warehouse storing all data
A DBMS is like a warehouse manager organizing data
An RDBMS structures data into tables and ensures relations
-- ==============================================================================================================

2. Basic SQL Commands
Creating a Database (CREATE DATABASE)
To create a new database:

CREATE DATABASE company_db;

🔹 This command creates a new database called company_db.

Using a Database (USE DATABASE)
To select a database before running queries:

USE company_db;


🔹 This tells SQL to use company_db for operations.

Deleting a Database (DROP DATABASE)

To delete a database permanently:

DROP DATABASE company_db;

⚠️ Warning: This command removes the entire database, including all tables and data!



3. Data Types in SQL
Each column in a table has a data type that defines what kind of data it can store.

Numeric Data Types

Numeric Data Types
Data Type	Description	Example
INT	Integer values	100, -25, 5000
FLOAT	Decimal values (floating point)	3.14, -0.99
DECIMAL(p,s)	Precise decimal values	99.99, 100.00

📌 Example: Creating a Table with Numeric Data Types


CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);


✔️ DECIMAL(10,2) means 10 digits total, 2 digits after the decimal.



String Data Types
Data Type	Description	Example
VARCHAR(n)	Stores variable-length text (max n characters)	"John", "Apple"
CHAR(n)	Fixed-length text (always n characters)	"A", "Yes"
TEXT	Stores large text	"This is a long paragraph..."

CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100)
);


✔️ VARCHAR(50) allows storing up to 50 characters.



Date & Time Data Types
Data Type	Description	Example
DATE	Stores only the date (YYYY-MM-DD)	'2025-02-21'
DATETIME	Stores date and time	'2025-02-21 14:30:00'
TIMESTAMP	Auto-updated date and time	'2025-02-21 14:30:00'

📌 Example: Creating a Table with Date Data Types

CREATE TABLE orders (
    id INT PRIMARY KEY,
    order_date DATE,
    delivery_time DATETIME
);

✔️ DATETIME stores both date and time, while DATE stores only the date.


Boolean Data Type (TRUE, FALSE)
SQL does not have a direct BOOLEAN type in MySQL. Instead, we use TINYINT(1) where:

0 = FALSE
1 = TRUE

📌 Example: Creating a Table with Boolean Data Type

CREATE TABLE users (
    id INT PRIMARY KEY,
    username VARCHAR(50),
    is_active TINYINT(1) DEFAULT 1
);


✔️ is_active is 1 (TRUE) by default.



Summary of What You Learned So Far:
✅ SQL Introduction – What is SQL, why use it, SQL vs NoSQL
✅ Basic SQL Commands – CREATE DATABASE, USE DATABASE, DROP DATABASE
✅ SQL Data Types – Numeric, String, Date, and Boolean


============================================================================================================================




2. Data Definition Language (DDL)

