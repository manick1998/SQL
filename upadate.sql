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