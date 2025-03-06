11. Mastering FULL JOIN in SQL (From Basics to Advanced)

✔ FULL JOIN (FULL OUTER JOIN) returns:

All records from the left table
All records from the right table
Matching records from both tables
If there is no match, it returns NULL values for missing columns


1️⃣ Understanding FULL JOIN (Basic Concept)
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


2️⃣ FULL JOIN Query (Joining 2 Tables)
📌 Basic FULL JOIN to Get Employees and Their Departments:

SELECT employees.emp_name, departments.dept_name
FROM employees
FULL JOIN departments ON employees.dept_id = departments.dept_id;


📌 Output:

emp_name	dept_name
John	HR
Alice	IT
David	HR
Bob	NULL
NULL	Finance
NULL	Marketing

✔️ All employees and all departments are included
✔️ Bob appears with NULL because he has no department
✔️ Finance & Marketing appear with NULL because no employees are assigned to them


3️⃣ FULL JOIN with 3 Tables (Adding Salaries Table)
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
SELECT employees.emp_name, 
       departments.dept_name, 
       salaries.salary
FROM employees
FULL JOIN departments 
    ON employees.dept_id = departments.dept_id
LEFT JOIN salaries 
    ON employees.emp_id = salaries.emp_id;


Step 1: FULL JOIN (employees with departments)

FULL JOIN departments 
    ON employees.dept_id = departments.dept_id



This joins the employees table with the departments table using dept_id.
All employees and all departments are included, even if they don’t have a matching department/employee.
If no match is found, emp_name or dept_name will be NULL.

Result After Step 1 (employees + departments)



emp_id	emp_name	dept_id	dept_name
1	John	101	HR
2	Alice	102	IT
3	Bob	101	HR
4	David	NULL	NULL
5	Charlie	103	Finance
NULL	NULL	104	Marketing

🔴 Marketing (dept_id = 104) appears with NULL employees because no employees are assigned to this department.
🔴 David (emp_id = 4) appears with NULL dept_name because he has dept_id = NULL.

Step 2: LEFT JOIN (Previous Result with salaries)
LEFT JOIN salaries 
    ON employees.emp_id = salaries.emp_id


This joins the previous result with the salaries table using emp_id.
All employees from FULL JOIN result are included, even if they don’t have salary records.
If an employee does not have a matching salary in the salaries table, the salary column will be NULL.


Final Result (employees + departments + salaries)

emp_name	dept_name	salary
John	HR	50000
Alice	IT	60000
Bob	HR	55000
David	NULL	NULL
Charlie	Finance	NULL
NULL	Marketing	NULL


Key Observations
✅ All employees are included, even if they don’t have a department or salary (David).
✅ All departments are included, even if they don’t have employees (Marketing).
✅ Employees without salary records (David & Charlie) have NULL in salary.
✅ FULL JOIN ensures that even unmatched employees and departments appear.


4️⃣ FULL JOIN with 4 Tables (Adding Projects Table)
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
FULL JOIN departments ON employees.dept_id = departments.dept_id
LEFT JOIN salaries ON employees.emp_id = salaries.emp_id
LEFT JOIN projects ON employees.emp_id = projects.emp_id;


📌 Output:

emp_name	dept_name	salary	project_name
John	HR	60000	AI Development
Alice	IT	75000	Web Application
David	HR	70000	Cloud Migration
Bob	NULL	NULL	NULL
NULL	Finance	NULL	NULL
NULL	Marketing	NULL	NULL


✔️ All employees and departments are included, even if they have no match
✔️ Bob appears with NULL for department, salary, and project
✔️ Finance & Marketing appear with NULL for employee, salary, and project


5️⃣ Real-Time Use Cases of FULL JOIN
✅ E-commerce:

Get all customers & all orders, even if some customers haven’t placed orders.
✅ HR System:

Get all employees & all departments, even if some departments are empty.
✅ University System:

Get all students & all courses, even if some students aren’t enrolled.
✅ Banking System:

Get all customers & all transactions, even if some customers haven’t made transactions.


6️⃣ Summary of What You Learned
✅ FULL JOIN returns all records from both tables
✅ If there is no match, NULL is returned for missing columns
✅ Used FULL JOIN on 2, 3, and 4 tables step by step
✅ Real-world examples of FULL JOIN usage
