-- create database 
CREATE DATABASE college;

-- to go inside the database
USE college;

-- create table
CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50)
);

-- delete table
DROP TABLE student;

-- insert values into table (MULTIPLE AT A TIME)
INSERT INTO student (rollno, name) VALUES(101, "RISHABH"),(102, "RAHUL"),(103, "KARAN"),(104, "VIRAT");

-- insert values into table (SINGLE AT A TIME)
INSERT INTO student VALUES(105, "SHYAM");

-- select & view all columns 
SELECT * FROM student;


