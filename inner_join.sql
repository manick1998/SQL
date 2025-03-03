-- inner JOIN

8. Mastering INNER JOIN in SQL (From Basics to Advanced)
INNER JOIN is used to combine rows from two or more tables based on a matching condition (usually a foreign key).
✔️ It only returns matching rows from both tables.

1️⃣ Understanding INNER JOIN (Basic Concept)

Consider two tables:

employees (contains employee details)
departments (contains department names)

📌 Creating employees Table:

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT
);


📌 Creating departments Table:

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);


📌 Inserting Data into employees:

INSERT INTO employees VALUES
(1, 'John', 101),
(2, 'Alice', 102),
(3, 'Bob', 103),
(4, 'David', 101);


📌 Inserting Data into departments:

INSERT INTO departments VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Finance'),
(104, 'Marketing');  -- No matching employee


2️⃣ INNER JOIN Query (Joining 2 Tables)
📌 Basic INNER JOIN to Get Employee and Their Department:


SELECT employees.emp_name, departments.dept_name
FROM employees
INNER JOIN departments ON employees.dept_id = departments.dept_id;
📌 Output:

emp_name	dept_name
John	HR
Alice	IT
Bob	Finance
David	HR
✔️ Marketing department is not shown because it has no matching employee.
✔️ This ensures only matching records from both tables are returned.


3️⃣ INNER JOIN with 3 Tables (Adding Salaries Table)
📌 Creating salaries Table:

CREATE TABLE salaries (
    emp_id INT PRIMARY KEY,
    salary DECIMAL(10,2)
);


📌 Inserting Data into salaries:
INSERT INTO salaries VALUES
(1, 60000),
(2, 75000),
(3, 50000),
(4, 70000);


📌 Query Joining 3 Tables (Employees + Departments + Salaries):

SELECT employees.emp_name, departments.dept_name, salaries.salary
FROM employees
INNER JOIN departments ON employees.dept_id = departments.dept_id
INNER JOIN salaries ON employees.emp_id = salaries.emp_id;


📌 Output:

emp_name	dept_name	salary
John	HR	60000
Alice	IT	75000
Bob	Finance	50000
David	HR	70000
✔️ INNER JOIN ensures only employees with matching salaries are displayed.

4️⃣ INNER JOIN with 4 Tables (Adding Projects Table)
📌 Creating projects Table:


CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    emp_id INT
);

📌 Inserting Data into projects:

INSERT INTO projects VALUES
(201, 'AI Development', 1),
(202, 'Web Application', 2),
(203, 'Data Analysis', 3),
(204, 'Cloud Migration', 4);

📌 Query Joining 4 Tables (Employees + Departments + Salaries + Projects):

SELECT employees.emp_name, departments.dept_name, salaries.salary, projects.project_name
FROM employees
INNER JOIN departments ON employees.dept_id = departments.dept_id
INNER JOIN salaries ON employees.emp_id = salaries.emp_id
INNER JOIN projects ON employees.emp_id = projects.emp_id;


📌 Output:


emp_name	dept_name	salary	project_name
John	HR	60000	AI Development
Alice	IT	75000	Web Application
Bob	Finance	50000	Data Analysis
David	HR	70000	Cloud Migration


✔️ 4 tables joined together successfully!
✔️ Employees must have a department, salary, and project to appear in results.


6️⃣ Summary of What You Learned
✅ INNER JOIN joins two or more tables based on a matching condition
✅ Only returns matching records from both tables
✅ Used INNER JOIN on 2, 3, and 4 tables step by step
✅ Real-world examples of INNER JOIN usage


