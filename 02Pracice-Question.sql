-- write the query to find avg marks in each city in ascending order

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

SELECT city, AVG(marks) 
FROM student
GROUP BY city
ORDER BY AVG(marks) ASC; -- > avg marks in each city in ascending order


SELECT city, AVG(marks) 
FROM student
GROUP BY city
ORDER BY AVG(marks) desc; -- > avg marks in each city in descending order
