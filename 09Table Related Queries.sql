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

-- SET SQL_SAFE_UPDATES = 0; -- > it will set Safe SQL Updates as OFF
-- SET SQL_SAFE_UPDATES = 1; -- > it will set Safe SQL Updates as ON

-- > TABLE RELATED QUERIES < --

-- > UPDATE Query
UPDATE student 
SET grade = "O"
WHERE garde = "A";


UPDATE student 
SET grade = "B"
WHERE marks BETWEEN 80 AND 90;

UPDATE student
SET marks = 25
WHERE rollno = 106;

UPDATE student
SET marks = marks + 1;


-- > DELETE Query
DELETE FROM student
WHERE marks < 33;

SELECT * FROM student;