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
    emmployeeId INT REFERENCES employees(id),
    enclosureId INT REFERENCES enclosures(id),
    day VARCHAR (255)
);

CREATE TABLE animals(
    name VARCHAR (255),
    type VARCHAR (255),
    age INT,
    enclosureId INT REFERENCES enclosures(id)
);