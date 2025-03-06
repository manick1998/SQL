2️⃣ Removing Duplicates (DISTINCT)

📌 DISTINCT removes duplicate values from a result set.

🔹 Example: Retrieve unique city names from the customers table.

SELECT DISTINCT city FROM customers;

🔹 Before DISTINCT (Duplicate Values Present):


city
New York
Chicago
New York
Boston
Chicago

🔹 After DISTINCT (Duplicates Removed):


city
New York
Chicago
Boston

