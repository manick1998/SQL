Great! Let’s master RIGHT JOIN from scratch to advanced, including joining multiple tables step by step with detailed explanations and real-time examples.


10. Mastering RIGHT JOIN in SQL (From Basics to Advanced)


✔ RIGHT JOIN returns all records from the right table and matching records from the left table.
✔ If there is no match, it returns NULL values for columns from the left table.


1️⃣ Understanding RIGHT JOIN (Basic Concept)
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
(103, 'Finance'),
(104, 'Marketing'); -- No employee assigned to this department


2️⃣ RIGHT JOIN Query (Joining 2 Tables)
📌 Basic RIGHT JOIN to Get Employees and Their Department:

SELECT employees.emp_name, departments.dept_name
FROM employees
RIGHT JOIN departments ON employees.dept_id = departments.dept_id;


📌 Output:

emp_name	dept_name
John	HR
Alice	IT
David	HR
NULL	Finance
NULL	Marketing
✔️ Finance and Marketing appear, even though they have no employees assigned.
✔️ All departments are included, even if there are no matching employees.


3️⃣ RIGHT JOIN with 3 Tables (Adding Salaries Table)
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
RIGHT JOIN departments ON employees.dept_id = departments.dept_id
LEFT JOIN salaries ON employees.emp_id = salaries.emp_id;


 Output:

emp_name	dept_name	salary
John	HR	60000
Alice	IT	75000
David	HR	70000
NULL	Finance	NULL
NULL	Marketing	NULL

✔️ All departments appear, even if there are no employees in them.
✔️ Finance and Marketing have NULL for employees and salary.

Step 1: RIGHT JOIN (employees with departments)

RIGHT JOIN departments 
    ON employees.dept_id = departments.dept_id


This joins the employees table with the departments table using dept_id.
All departments are included, even if there are no employees assigned to them.
If no employee belongs to a department, emp_name will be NULL.

Result After Step 1 (employees + departments)
emp_id	emp_name	dept_id	dept_name
1	John	101	HR
2	Alice	102	IT
3	Bob	101	HR
5	Charlie	103	Finance
NULL	NULL	104	Marketing


🔴 Marketing (dept_id = 104) appears with NULL employees because no employees are assigned to this department.
🔴 David (emp_id = 4) is missing because he had dept_id = NULL, and RIGHT JOIN only keeps records where dept_id is present in departments.


Step 2: LEFT JOIN (Previous Result with salaries)

LEFT JOIN salaries 
    ON employees.emp_id = salaries.emp_id


This joins the previous result with the salaries table using emp_id.
All employees from Step 1 are included, even if they don’t have salary records.
If an employee does not have a matching salary in the salaries table, the salary column will be NULL.


Final Result (employees + departments + salaries)
emp_name	dept_name	salary
John	HR	50000
Alice	IT	60000
Bob	HR	55000
Charlie	Finance	NULL
NULL	Marketing	NULL

Key Observations
✅ All departments are included, even if they don’t have employees (Marketing appears).
✅ Employees without salary records (Charlie) have NULL in salary.
❌ David is missing because he had dept_id = NULL, and RIGHT JOIN only keeps dept_id values present in departments.
✅ Marketing (dept_id = 104) appears with NULL emp_name because there is no assigned employee.


4️⃣ RIGHT JOIN with 4 Tables (Adding Projects Table)
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
RIGHT JOIN departments ON employees.dept_id = departments.dept_id
LEFT JOIN salaries ON employees.emp_id = salaries.emp_id
LEFT JOIN projects ON employees.emp_id = projects.emp_id;


📌 Output:

emp_name	dept_name	salary	project_name
John	HR	60000	AI Development
Alice	IT	75000	Web Application
David	HR	70000	Cloud Migration
NULL	Finance	NULL	NULL
NULL	Marketing	NULL	NULL

✔️ Finance and Marketing appear but with NULL values because they have no matching employees.
✔️ All departments are included, even if they have no employees, salary, or projects.

5️⃣ Real-Time Use Cases of RIGHT JOIN
✅ E-commerce:

Get all product categories, even if no products are available.
✅ HR System:

Get all departments, even if they have no employees.
✅ University System:

Get all courses, even if no students are enrolled.
✅ Banking System:

Get all branches, even if they have no active accounts.

6️⃣ Summary of What You Learned
✅ RIGHT JOIN returns all records from the right table and matching records from the left table
✅ If there is no match, NULL is returned for left table columns
✅ Used RIGHT JOIN on 2, 3, and 4 tables step by step
✅ Real-world examples of RIGHT JOIN usage.

