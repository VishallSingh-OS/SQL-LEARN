-- DML COMMANDS

USE MyDatabase

INSERT INTO customers (id, first_name, country, score)
VALUES
	(6, 'Aman', 'USA', NULL),
	(7, 'Sam', NULL, 100);

SELECT * FROM customers

CREATE TABLE persons (
id INT NOT NULL,
person_name VARCHAR(50) NOT NULL,
birth_date DATE,
phone VARCHAR(15) NOT NULL
);


-- Insert data from 'customers' into 'persons'

INSERT INTO persons (id, person_name, birth_date, phone)
SELECT
	id,
	first_name,
	NULL,
	'Unknown'
FROM customers;

SELECT * FROM persons

-- Change the score of customer 6 to 100

UPDATE customers
SET score = 100
WHERE id = 6

SELECT * FROM customers
WHERE id = 6

-- UPTDATE THE SCORE OF CUSTOMER 10 TO 0 AND 
-- UPDATE THE COUNTRY TO UK

UPDATE customers
SET score = 0,
	country = 'UK'
WHERE id = 7;

INSERT INTO customers
VALUES
	(8, 'USA', 'MAX', NULL),
	(9, 'ANDRES', 'GERMANY', NULL);


/* Update all customers with a NULL score
by setting their score  to 0 */

UPDATE customers
SET score = 0
WHERE score IS NULL;

-- DELETE COMMAND

DELETE FROM customers
WHERE id > 5;

-- ALWAYS DOUBLE CHECK BEFORE DELETE COMMAND
SELECT * FROM customers
WHERE id > 5;

-- delete all data from persons

TRUNCATE TABLE persons;