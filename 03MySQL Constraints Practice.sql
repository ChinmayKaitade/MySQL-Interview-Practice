-- > CONSTRAINTS In MySQL < --

-- create database named as market
CREATE DATABASE market;

-- delete database
-- DROP DATABASE market;

-- using contraints_practice
USE market;

-- creating constraints_practice table
CREATE TABLE shop(
	id INT UNIQUE
);

-- > UNIQUE CONSTRAINTS < --
-- inserting data into temp1
INSERT INTO shop VALUES(101);
-- INSERT INTO sample_table VALUES(101); > throws error because of UNIQUE Constraints in MySQL

-- view shop table
SELECT * FROM shop;

-- > PRIMARY KEY CONSTRAINTS < --
CREATE TABLE customer(
	id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(20),
    PRIMARY KEY(id, name) -- > combination of both (id, name) will be always UNIQUE because of primary key
);

-- > FOREIGN CONSTRAINTS < --
CREATE TABLE temp1(
	cust_id INT,
    FOREIGN KEY (cust_id) REFERENCES customer(id)
);

-- > DEFAULT CONSTRAINTS < --
CREATE TABLE employee(
	id INT,
    salary INT DEFAULT 25000
);

-- inserting values into employee table
INSERT INTO employee (id) VALUES(101);

-- view employee table
SELECT * FROM employee;

-- > CHECK CONSTRAINTS < --
CREATE TABLE city(
	id INT PRIMARY KEY,
    city VARCHAR(50),
    age INT,
    CONSTRAINT age_check CHECK (age >= 18 AND city="Delhi")
);

-- another example for CHECK CONSTRAINTS
-- CREATE TABLE newTab(
-- 	age INT CHECK (age >= 18)
-- )




