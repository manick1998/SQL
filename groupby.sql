6️⃣ Grouping Data (GROUP BY)

 GROUP BY groups rows with the same values together.

 Example: Find the number of customers in each city.

 SELECT city, COUNT(*) FROM customers GROUP BY city;

 Before GROUP BY (Raw Data):

 customer_id	customer_name	city
1	Alice	New York
2	Bob	Chicago
3	Charlie	Chicago
4	David	Boston


🔹 After GROUP BY:


city	count
New York	1
Chicago	    2
Boston	    1

✔ Chicago has 2 customers, while New York and Boston have 1 each.


7️⃣ Filtering Grouped Data (HAVING)

📌 HAVING is used to filter groups after GROUP BY (similar to WHERE but for aggregated data).

🔹 Example: Find cities with more than 1 customer.

SELECT city, COUNT(*) AS total_customers 
FROM customers 
GROUP BY city 
HAVING COUNT(*) > 1;
