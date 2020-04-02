--SECTION 1

--1

CREATE TABLE person(
    id SERIAL PRIMARY KEY,
    name TEXT,
    age INT,
    height INT,
    city VARCHAR(32),
    favorite_color VARCHAR(32)
);
 
--2

INSERT INTO person (name, age, height, city, favorite_color)
VALUES
('Jason', 38, 60, 'Omaha', 'Blue'),
('Anakin', 400, 70, 'Death Star', 'Black'),
('Leah', 420, 55, 'Tattoine', 'Red'),
('Jacque', 40, 55, 'Papillion', 'Orange'),
('Justine', 40, 50, 'Elko', 'Camoflauge');

--3

SELECT * FROM person
ORDER BY height DESC;

--4

SELECT * FROM person
ORDER BY height;

--5

SELECT * FROM person
ORDER BY age DESC;

--6

SELECT * FROM person
WHERE age > 20;

--7

SELECT * FROM person
WHERE age = 28;

--8

SELECT * FROM person
WHERE (age < 20) OR (age > 30);

--9

SELECT * FROM person
WHERE age != 27;

--10

SELECT * FROM person
WHERE favorite_color = 'Red';

--11

SELECT * FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

--12

SELECT * FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

--13

SELECT * FROM person 
WHERE favorite_color IN ('Orange', 'Green', 'Blue');

--14

SELECT * FROM person 
WHERE favorite_color IN ('Yellow', 'Purple');

--SECTION 2

--1

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(32),
    product_price NUMERIC,
    quantity INTEGER
);

--2

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES
(1,'Lightsaber', 240, 3),
(1, 'Blaster', 600, 27),
(2, 'Wookies', 4.40, 1),
(2, 'Gum Machines', 110, 14),
(2, 'Millenium Falcon', 9999, 1);

--3

SELECT * FROM orders;

--4

SELECT SUM(quantity) FROM orders;

--5

SELECT SUM(product_price * quantity) FROM orders;

--6

SELECT SUM(product_price * quantity) FROM orders
WHERE person_id = 1;

--SECTION 3

--1
INSERT INTO artist (name)
VALUES 
('Rage for the Machine'),
('Another Beatles Coverband'),
('Tupac');

--2 

SELECT * FROM artist
ORDER BY name DESC LIMIT 10;

--3

SELECT * FROM artist 
ORDER BY name ASC LIMIT 5;

--4

SELECT * FROM artist 
WHERE name LIKE 'BLACK%';

--5

SELECT * FROM artist 
WHERE name LIKE '%BLACK%';

--SECTION 4

--1

SELECT COUNT(*) FROM invoice
WHERE billing_country = "USA";

--2

SELECT MAX(total) FROM invoice;

--3

SELECT MIN(total) FROM invoice;

--4

SELECT * FROM invoice
WHERE total > 5;

--5

SELECT COUNT(*) FROM invoice
WHERE total < 5;

--6

SELECT COUNT(*) FROM invoice
WHERE billing_state in ('CA', 'TX', 'AZ');

--7

SELECT AVG(total)
FROM invoice;

--8

SELECT SUM(total)
FROM invoice;











 


