USE MyDatabase

-- CREATE  a new table in database called persons
-- with columns, id, person_name, birth_date, Phone.


CREATE TABLE persons (
	id INT NOT NULL,
	person_name VARCHAR(50) NOT NULL,
	birth_date DATE,
	phone VARCHAR(15) NOT NULL,
	CONSTRAINT pk_persons PRIMARY KEY (id)
)
