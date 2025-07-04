-- > JOINS in SQL -  
-- Join is used to combine rows from two or more tables, based on related column between them.

-- > INNER JOIN
-- 1. INNER JOIN (return records that have matching values in both tables)

-- > OUTER JOINS
-- 2. LEFT JOIN
-- 3. RIGHT JOIN
-- 4. FULL JOIN

CREATE DATABASE college;

USE college;

CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO student (id, name)
VALUES
(101,"Adam"),
(102,"Bob"),
(103, "Casey");

CREATE TABLE course(
	id INT PRIMARY KEY,
	item VARCHAR(100)
);

INSERT INTO course (id, item)
VALUES
(101,"English"),
(102,"Maths"),
(103, "Science"),
(104, "History");

SELECT * FROM student;
SELECT * FROM course;

-- > INNER JOIN
SELECT * FROM student
INNER JOIN course
ON student.id = course.id;

-- < - OR - > --

SELECT * FROM student as s
INNER JOIN course as c
ON s.id = c.id;

-- > LEFT JOIN
SELECT *
FROM student as s
LEFT JOIN course as c
ON s.id = c.id;

-- > LEFT JOIN
SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.id = c.id;

-- > FULL JOIN
SELECT *
FROM student as s
LEFT JOIN course as c
ON s.id = c.id
UNION
SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.id = c.id;






