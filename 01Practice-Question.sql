-- create database named as XYZ Company 
CREATE DATABASE xyz_company;

-- delete database
-- DROP DATABASE xyzcompany;

-- enter into or use XYZ Company database
USE xyz_company;

-- create table of employees 
CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(100),
    salary INT
);

-- inserting values into table
INSERT INTO employee (id, name, salary) 
VALUES
(101, "ADAM", 25000),
(102,"ALEX",32000),
(103,"BOB", 35000),
(104,"ALBERT", 45000);

-- view table
SELECT * FROM employee;