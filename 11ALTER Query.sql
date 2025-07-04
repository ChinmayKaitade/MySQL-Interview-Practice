-- > Table Related Queries - ALTER < --
-- ALTER > to change schema

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

-- > ALTER - to change the schema (ADD, DROP, RENAME TO, CHANGE, MODIFY)
ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19; -- > ADD - add age column in student table

ALTER TABLE student
MODIFY COLUMN age VARCHAR(2);

ALTER TABLE student
CHANGE age stud_age INT;

ALTER TABLE student
DROP COLUMN stud_age; -- > DROP - delete age column in student table

ALTER TABLE stud
RENAME TO student;

SELECT * FROM student;

INSERT INTO student
(rollno, name, marks, stud_age)
VALUES
(108, "Bob", 68, 100);

-- > TRUNCATE Table Query (to delete table's data)
TRUNCATE TABLE student;

-- DROP > to delete entire table
-- TRUNCATE > to delete table data





