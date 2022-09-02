DROP TABLE animals;
DROP TABLE assignments;
DROP TABLE employees;
DROP TABLE enclosures;

CREATE TABLE enclosures(
    id SERIAL PRIMARY KEY,
    name VARCHAR (255),
    capacity INT,
    closedForMaintenance BOOLEAN
);

CREATE TABLE employees(
    id SERIAL PRIMARY KEY,
    name VARCHAR (255),
    employeeNumber INT
);

CREATE TABLE assignments(
    id SERIAL PRIMARY KEY,
    employeeId INT REFERENCES employees(id),
    enclosureId INT REFERENCES enclosures(id),
    day VARCHAR (255)
);

CREATE TABLE animals(
    name VARCHAR (255),
    type VARCHAR (255),
    age INT,
    enclosureId INT REFERENCES enclosures(id)
);

--CREATE
INSERT INTO enclosures(name, capacity, closedForMaintenance) VALUES ('ReptileCage', 10, False);
INSERT INTO enclosures(name, capacity, closedForMaintenance) VALUES ('BirdCage', 10, False);
INSERT INTO enclosures(name, capacity, closedForMaintenance) VALUES ('MamamlField', 10, True);


INSERT INTO employees (name, employeeNumber) VALUES ('Jack', 10 );
INSERT INTO employees (name, employeeNumber) VALUES ('Susan', 20 );
INSERT INTO employees (name, employeeNumber) VALUES ('Bob', 30 );
INSERT INTO employees (name, employeeNumber) VALUES ('Tom', 40 );
INSERT INTO employees (name, employeeNumber) VALUES ('Anne', 50 );

INSERT Into assignments (employeeId, enclosureId, day) VALUES (1 , 1, 'Monday');
INSERT Into assignments (employeeId, enclosureId, day) VALUES (2 , 1, 'Monday');

INSERT Into assignments (employeeId, enclosureId, day) VALUES (3 , 2, 'Tuesday');
INSERT Into assignments (employeeId, enclosureId, day) VALUES (4 , 2, 'Tuesday');

INSERT Into assignments (employeeId, enclosureId, day) VALUES (5 , 3, 'Wednesday');

INSERT INTO animals (name, type, age, enclosureId) VALUES ('Simon', 'Snake',21, 1);
INSERT INTO animals (name, type, age, enclosureId) VALUES ('Liam', 'Lizard',50, 1);

INSERT INTO animals (name, type, age, enclosureId) VALUES ('Errie', 'Eagle',4, 2);
INSERT INTO animals (name, type, age, enclosureId) VALUES ('Harry', 'Hawk',8, 2);


INSERT INTO animals (name, type, age, enclosureId) VALUES ('Lara', 'Lion',12, 3);
INSERT INTO animals (name, type, age, enclosureId) VALUES ('Earl', 'Elephant',38, 3);

SELECT * FROM enclosures;
SELECT * FROM employees;
SELECT * FROM assignments;
SELECT * FROM animals;



