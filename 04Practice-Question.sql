-- In Student table:
-- a. Change the name of column "name" to "full_name".
-- b. Delete all the students who scored marks less than 80.
-- c. Delete the column for grades.

CREATE DATABASE sample_data;

USE sample_data;

CREATE TABLE sample_student(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT,
    grade VARCHAR(2)
);

INSERT INTO sample_student 
(id, name, marks, grade)
VALUES
(101, "Abhishek", 87, "B"),
(102, "John", 93, "A"),
(103, "Kunal", 92, "A"),
(104, "Sameer", 76, "C");

SELECT * FROM sample_student;

-- a. Change the name of column "name" to "full_name".
ALTER TABLE sample_student
CHANGE name full_name VARCHAR(50);

SET SQL_SAFE_UPDATES = 0;

-- b. Delete all the students who scored marks less than 80.
DELETE FROM sample_student
WHERE marks < 80;

-- c. Delete the column for grades.
ALTER TABLE sample_student
DROP COLUMN grade;


