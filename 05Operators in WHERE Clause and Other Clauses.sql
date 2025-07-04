CREATE DATABASE classes;

USE classes;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student 
(rollno, name, marks, grade, city)
VALUES
(101, "Anil", 78, "C", "Pune"),
(102, "Akash", 93, "A", "Mumbai"),
(103, "Chetan", 96, "A", "Mumbai"),
(104, "Shubham", 86, "B", "Gujrat"),
(105, "Sameer", 75, "C", "Nagpur"),
(106, "Mayur", 60, "C", "Delhi"),
(107, "Parmish", 96, "A", "Delhi");

SELECT name, marks FROM student; -- > it will gives only name and marks from the student table
SELECT DISTINCT city FROM student; -- > DISTINCT will give unique(non duplicate) values
SELECT * FROM student; -- > it will gives entire data from the student table

-- > WHERE CLAUSE < --
SELECT * FROM student WHERE marks > 80; -- > it will gives data for students scoring more than 80 marks
SELECT * FROM student WHERE city = "Mumbai"; -- > it will gives entire data for students from Mumbai

SELECT * FROM student WHERE marks > 80 AND city ="Mumbai"; -- > it will gives data for marks more than 80 and from Mumbai

-- > Operators in WHERE CLAUSE < --
-- > Arithematic Operator (+, -, *, /, %)
SELECT * FROM student WHERE marks+10 > 100; 

-- > Comparision Operator (=, !=, >, <, >=, <=)
SELECT * FROM student WHERE marks > 90; 

-- > Logical Operator (AND, OR, NOT, IN, BETWEEN, ALL, LIKE, ANY)
SELECT * FROM student WHERE marks > 80 AND city = "Mumbai"; -- AND -> to check for both conditions to be true
SELECT * FROM student WHERE marks > 90 OR city = "Mumbai"; -- OR -> to check for one of the condition to be true
SELECT * FROM student WHERE marks BETWEEN 80 AND 90; -- BETWEEN -> selects for a given range
SELECT * FROM student WHERE city IN ("Delhi", "Mumbai", "Chennai"); -- IN -> matches any value in the list
SELECT * FROM student WHERE city NOT IN ("Delhi", "Mumbai"); -- NOT -> to negate the given condition


-- > Bitwise Operator (&, OR) -- ADVANCED TOPIC
SELECT * FROM student WHERE marks > 90; 

-- > LIMIT CLAUSE < --
SELECT * FROM student LIMIT 3; -- > sets an upper limit on number of (tuples) rows to be returned
SELECT * FROM student WHERE marks > 75 LIMIT 3;