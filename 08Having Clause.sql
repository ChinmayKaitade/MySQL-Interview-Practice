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

SELECT * FROM student;

-- > HAVING Clause < --
SELECT city, COUNT(rollno)
FROM student
GROUP BY city
HAVING MAX(marks) > 90;


SELECT city
FROM student
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks) >= 93
ORDER BY city DESC;


