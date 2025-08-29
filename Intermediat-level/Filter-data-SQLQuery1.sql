

-- COMPARISON OPERATOR



--operator 1. equal operator(=)
-- CHECKS IF TWO VALUE ARE EQUAL
-- Retrieve all customers from Germany

USE MyDatabase;

SELECT * FROM customers
WHERE country = 'Germany';



-- Retrieve all customers who are not from Germany
-- != <> both are checks if two value are not equal

SELECT * FROM 
customers
WHERE country <> 'Germany';

-- Retrieve all customers with score greater than 500

SELECT * FROM 
customers
WHERE score > 500;

-- GREATER THAN AND EQUAL TO 500 >=

SELECT * FROM 
customers
WHERE score >= 500;

-- lESS THAN <

SELECT * FROM 
customers
WHERE score < 500;

-- less than or equal to <=

SELECT * FROM 
customers
WHERE score <= 500;


-- LOGICAL OPERATOR AND, OR, NOT

-- AND OPERATOR ALL CONDITION MUST BE TRUE

-- Retrieve all customers who are from USA
-- and have a score greater than 500.

SELECT * 
FROM customers
WHERE country = 'USA' AND score > 500;

-- OR OPERATOR , AT LEAST ONE CONDITION MUST BE TRUE

/* Rtrieve all the customers who are either from USA 
or have a score greater than 500*/


SELECT * 
FROM customers
WHERE country = 'USA' OR score > 500;

-- not operator, Reverse operator 
-- exclude matchin rows

SELECT *
FROM customers
WHERE NOT country = 'USA';

-- Retrive all customers with a score not less than 500

SELECT *
FROM customers
WHERE NOT score < 500;

-- RANGE OPERATOR (BETWEEN)
/* RANGE OPARATOR NEED two boundray lower boundry and upper boundry
both boundry are exclusive */

/* Retrive all customers whose score falls in the
range between 100 and 500*/

SELECT *
FROM customers
WHERE SCORE BETWEEN 100 AND 500;

-- Membership operator 
-- IN check if a value exists in a list
-- Retrieve all the customers whether they are from usa or germany

SELECT * 
FROM customers
WHERE country IN ('USA', 'Germany');

-- method 2
SELECT * 
FROM customers
WHERE country = 'USA' OR country = 'Germany';



-- Search operator

-- like operator that work on pattern with % and _ .

-- Find all customers whose first name start with M
SELECT *
FROM customers
WHERE first_name LIKE 'M%';

-- Find all customers whose first name ends with 'n'
SELECT *
FROM customers
WHERE first_name LIKE '%n';

-- Find all customers whose first name contains letter 'r'

SELECT *
FROM customers
WHERE first_name LIKE '%r%';

-- Find all customers whose first_name has 'r' in the third position

SELECT *
FROM customers
WHERE first_name LIKE '__r%';