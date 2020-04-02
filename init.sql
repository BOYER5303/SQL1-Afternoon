--Create Statement

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name TEXT,
    email VARCHAR(32)
);
-- Insert Statement

INSERT INTO students (name, email)
VALUES
('Spongebob', 'squarepants@devmtn.com'),
('Jason', 'jason@boyer.com'),
('Plankton', 'plankton@plankton.com'),
('Sandy', 'squirrel@texas.com');

-- Select All (sql commands upper, everything else lower (w/ snake case asfda_asdf)
SELECT * FROM students;
-- Select Some
SELECT name, email FROM students;

WHERE name = 'Jason';

WHERE id > 2; 
WHERE id >= 2 AND name = "Jason";

SELECT * FROM customer
WHERE country IN ('USA', 'Mexico', 'Canada');

SELECT SUM(unit_price) FROM invoice_line;

SELECT COUNT(*) FROM students;

-- Update Statement

UPDATE students
SET name = 'Pinhead Larry'
WHERE id = 2;
 --Ordered Return
SELECT * FROM students ORDER BY id;

-- Delete Statement

DELETE FROM students
WHERE id = 4;

-- Delete Whole Table (IF Exists not necessary)

DROP TABLE IF EXISTS students;

-- Mini
SELECT * FROM artist;