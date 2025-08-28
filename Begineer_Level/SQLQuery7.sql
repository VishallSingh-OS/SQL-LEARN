USE MyDatabase;

-- Retrieve all data from customers

SELECT * 
FROM customers;


-- Retrieve Data from order table
SELECT * 
FROM orders


-- Retrieve each first_name, country, score from customer table

SELECT 
	first_name,
	country,
	score
from customers

-- Retrieve Data with score not equal to 0

SELECT *
FROM customers
WHERE score != 0

-- Retrieve customers from Germany

SELECT 
	first_name,
	id
FROM customers
WHERE country = 'Germany';

/* Retrieve all customers and sort the result by the highest score */

SELECT *
FROM customers
ORDER BY score DESC;

/* Retrieve all the customers and sort the 
result by country and then by the highest Score (NESTED ORDER BY) */

SELECT * 
FROM customers
ORDER BY
	country ASC,
	score DESC;
	
/* find the total score for each country */

SELECT 
	country,
	SUM(score) AS total_score,
	COUNT(id) AS total_customers
FROM customers
GROUP BY country;

/* Find the average score for each country 
	considering only customers with a score not equal to 0
	and return only those countries with an average score greater than 430
	*/

SELECT 
country,
AVG(score) AS avg_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430


/*
Return unique list of all countries
*/

SELECT DISTINCT country
FROM customers

-- Retrieve only 3 Customers


SELECT TOP 3
*
FROM customers

-- Retrieve the top 3 Customers with the Highest Scores

SELECT TOP 3 *
FROM customers
ORDER BY score DESC

-- Retrieve the Lowest 2 Customers based on the score

SELECT TOP 2 *
FROM customers
ORDER BY score ASC

-- Get the Two Most Recent orders

SELECT TOP 2
*
FROM orders
ORDER BY order_date DESC