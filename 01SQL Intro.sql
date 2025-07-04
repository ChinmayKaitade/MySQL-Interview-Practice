-- to create database
CREATE DATABASE college;

-- CREATE DATABASE IF NOT EXISTS college; --> gives warning not error 
-- DROP DATABASE IF EXISTS company; --> gives warning not error 

-- CREATE DATABASE temp1;
-- DROP DATABASE temp1;

-- lists databases
SHOW DATABASES; 

-- for entering into database 
USE college;

-- to create table inside the database
CREATE TABLE student(
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

-- inserting values into the table
INSERT INTO student VALUES(1, "AMAN", 26);
INSERT INTO student VALUES(2,"CHINMAY", 25);

-- list tables (USED AFTER ENTERING INTO RELEVANT DATABASE)
SHOW TABLES;

-- delete table
DROP TABLE student;

-- shows all data present in table
SELECT * FROM student;

