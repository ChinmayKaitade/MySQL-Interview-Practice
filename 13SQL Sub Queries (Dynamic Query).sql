-- > SQL Sub Queries

CREATE DATABASE tution;

USE tution;

CREATE TABLE student(
 rollno INT PRIMARY KEY,
 name VARCHAR(50),
 marks INT
);

INSERT INTO student (rollno, name, marks) 
VALUES
(101, "Anil", 78),
(102, "Bhumika", 93),
(103, "Chetan", 85),
(104, "Dhruv", 96),
(105, "Emanuel", 92),
(106, "Farah", 82);


SELECT * FROM student;

-- 1. find the avg of class
SELECT AVG(marks)
FROM student;

-- 2. find the names of students with marks > avg
SELECT name, marks
FROM student 
WHERE marks > (SELECT AVG(marks) FROM student);

-- find the names of all students with the even roll numbers
SELECT rollno, name
FROM student
WHERE rollno % 2 = 0;

-- 1. find the even roll numbers 
SELECT name, rollno
FROM student
WHERE rollno IN (102, 104, 106);

-- 2. find the names of students with even roll no
SELECT name, rollno
FROM student
WHERE rollno IN 
(
SELECT rollno
FROM student
WHERE rollno % 2 = 0
);



