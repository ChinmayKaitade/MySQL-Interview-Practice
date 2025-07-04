CREATE DATABASE school;

USE school;

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








