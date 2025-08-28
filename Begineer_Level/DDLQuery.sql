USE MyDatabase

-- CREATE  a new table in database called persons
-- with columns, id, person_name, birth_date, Phone.


CREATE TABLE persons (
	id INT NOT NULL,
	person_name VARCHAR(50) NOT NULL,
	birth_date DATE,
	phone VARCHAR(15) NOT NULL,
	CONSTRAINT pk_persons PRIMARY KEY (id)
);

SELECT * FROM persons;

-- add a new column email to the persons(table)

ALTER TABLE persons
ADD email VARCHAR(50) NOT NULL;

SELECT * FROM persons;


-- Remove the column phone from the persons table

ALTER TABLE persons
DROP COLUMN phone

SELECT * FROM persons

-- Delte the table persons from database

DROP TABLE persons
