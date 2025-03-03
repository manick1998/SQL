9. Mastering LEFT JOIN in SQL (From Basics to Advanced)
✔ LEFT JOIN returns all records from the left table and matching records from the right table.
✔ If there is no match, it returns NULL values for columns from the right table.


1️⃣ Understanding LEFT JOIN (Basic Concept)
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
(3, 'Bob', NULL), -- Bob has no department
(4, 'David', 101);

📌 Inserting Data into departments:

INSERT INTO departments VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Finance');  -- No employee assigned to this department


2️⃣ LEFT JOIN Query (Joining 2 Tables)
📌 Basic LEFT JOIN to Get Employee and Their Department:

SELECT employees.emp_name, departments.dept_name
FROM employees
LEFT JOIN departments ON employees.dept_id = departments.dept_id;

📌 Output:

emp_name	dept_name
John	HR
Alice	IT
Bob	NULL
David	HR
✔️ Bob’s department is NULL because he doesn’t belong to any department.
✔️ All employees are included, even if they don’t have a department.


3️⃣ LEFT JOIN with 3 Tables (Adding Salaries Table)
📌 Creating salaries Table:

CREATE TABLE salaries (
    emp_id INT PRIMARY KEY,
    salary DECIMAL(10,2)
);


📌 Inserting Data into salaries:

INSERT INTO salaries VALUES
(1, 60000),
(2, 75000),
(4, 70000);
-- Bob has no salary data

📌 Query Joining 3 Tables (Employees + Departments + Salaries):

SELECT employees.emp_name, departments.dept_name, salaries.salary
FROM employees
LEFT JOIN departments ON employees.dept_id = departments.dept_id
LEFT JOIN salaries ON employees.emp_id = salaries.emp_id;

Step 1: LEFT JOIN (employees with departments)
sql
Copy
Edit
LEFT JOIN departments 
    ON employees.dept_id = departments.dept_id
This joins the employees table with the departments table using dept_id.
All employees are included, even if they do not have a department (dept_id = NULL).
If there is no matching dept_id in the departments table, the dept_name will be NULL.
Result After Step 1 (employees + departments)
emp_id	emp_name	dept_id	dept_name
1	John	101	HR
2	Alice	102	IT
3	Bob	101	HR
4	David	NULL	NULL
5	Charlie	103	Finance
🔴 David has NULL for dept_name because there is no matching department.

Step 2: LEFT JOIN (Previous Result with salaries)

LEFT JOIN salaries 
    ON employees.emp_id = salaries.emp_id


This joins the previous result with the salaries table using emp_id.
All employees are included, even if they don’t have a salary record.
If an employee does not have a matching salary in the salaries table, the salary column will be NULL.
Final Result (employees + departments + salaries)



emp_name	dept_name	salary
John	HR	50000
Alice	IT	60000
Bob	HR	55000
David	NULL	NULL
Charlie	Finance	NULL


Key Observations
✅ All employees are included (David and Charlie are present).
✅ Employees without a department (David) have NULL in dept_name.
✅ Employees without salary records (David & Charlie) have NULL in salary.

📌 Output:

emp_name	dept_name	salary
John	HR	60000
Alice	IT	75000
Bob	NULL	NULL
David	HR	70000
✔️ Bob appears but has NULL in both department and salary because he has no data in those tables.



4️⃣ LEFT JOIN with 4 Tables (Adding Projects Table)
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
(203, 'Cloud Migration', 4);
-- Bob has no assigned project


📌 Query Joining 4 Tables (Employees + Departments + Salaries + Projects):

SELECT employees.emp_name, departments.dept_name, salaries.salary, projects.project_name
FROM employees
LEFT JOIN departments ON employees.dept_id = departments.dept_id
LEFT JOIN salaries ON employees.emp_id = salaries.emp_id
LEFT JOIN projects ON employees.emp_id = projects.emp_id;


📌 Output:

emp_name	dept_name	salary	project_name
John	HR	60000	AI Development
Alice	IT	75000	Web Application
Bob	NULL	NULL	NULL
David	HR	70000	Cloud Migration
✔️ Bob appears but has NULL values in department, salary, and project.
✔️ All employees are included, even if they have no matching records in other tables.


5️⃣ Real-Time Use Cases of LEFT JOIN
✅ E-commerce:

Get all customers, even those who haven’t placed an order.
✅ HR System:

Get all employees, even those without a department, salary, or project.
✅ University System:

Get all students, even if they are not enrolled in any course.
✅ Banking System:

Get all customers, even if they have no transactions or loans.

6️⃣ Summary of What You Learned
✅ LEFT JOIN returns all records from the left table and matching records from the right table
✅ If there is no match, NULL is returned for right table columns
✅ Used LEFT JOIN on 2, 3, and 4 tables step by step
✅ Real-world examples of LEFT JOIN usage




