![MySQL Logo](./mysql-official.png)

# MySQL Practice Series 🔥🚀❤️‍🔥

> Welcome to the **MySQL Practice Repo**! 🚀  
> This repository is perfect for practicing SQL queries including **CRUD operations**, **Joins**, **Functions**, **Constraints**, and **Interview Questions** preparation.

---

### ✅ **What's Inside?**

- 🔹 100 Most Asked SQL/MySQL Interview Questions
- 🔹 Real-world Use Cases & Scenario-Based Queries
- 🔹 Performance Tips & Optimization Techniques
- 🔹 Window Functions, Joins, Indexing, JSON & More

---

### 📂 **How to Use**

- Clone the repo
- Read through the markdown or PDF format
- Practice each question with a database like **MySQL Workbench**, **phpMyAdmin**, or **DB Fiddle**
- Revise before your interview or assessment

---

## ✅ Types of SQL Commands:

👉 DDL (Data Definition Language): create, alter, rename, truncate & drop

👉 DQL (Data Query Language): select

👉 DML (Data Manipulation Language): insert, update & delete

👉 DCL (Data Control Language): grant & revoke permission to users

👉 TCL (Transaction Control Language): start transaction, commit, rollback

## Keys🗝️

✔️ **Primary Key**: It is a column (or set of columns) in a table that uniquely identifies each row. (a unique id)
There is only 1 PK & it should be NOT null.

✔️ **Foreign Key**: A foreign key is a column (or set of columns) in a table that refers to the primary key in another table.
FKs can have duplicate & null values.

## 📌 Table of Contents

- 🔧 [CRUD Operations](#-crud-operations)
- 📋 [Advanced Queries](#-advanced-queries)
- 🔗 [Joins](#-joins)
- 🧠 [Functions & Clauses](#-functions--clauses)
- 📎 [Constraints](#-constraints)
- 💬 [Top Interview Questions](#-top-interview-questions)
- 📂 [Sample Database](#-sample-database)

---

## 🔧 CRUD Operations

### 🟢 Create (INSERT)

```sql
INSERT INTO employees (id, name, age, department)
VALUES (1, 'Alice', 28, 'IT');
```

### 🔍 Read (SELECT)

```sql
SELECT * FROM employees;
SELECT name, department FROM employees WHERE age > 25;
```

### 📝 Update

```sql
UPDATE employees
SET department = 'HR'
WHERE id = 1;
```

### ❌ Delete

```sql
DELETE FROM employees
WHERE id = 1;
```

---

## 📋 Advanced Queries

- 🔢 **Aggregate Functions**

```sql
SELECT COUNT(*) FROM employees;
SELECT AVG(age) FROM employees;
```

- 🧩 **GROUP BY**

```sql
SELECT department, COUNT(*) FROM employees GROUP BY department;
```

- 🚫 **HAVING**

```sql
SELECT department, COUNT(*) FROM employees
GROUP BY department
HAVING COUNT(*) > 2;
```

---

## 🔗 Joins

### 👥 INNER JOIN

```sql
SELECT e.name, d.name AS dept_name
FROM employees e
INNER JOIN departments d ON e.department_id = d.id;
```

### 🚀 LEFT JOIN

```sql
SELECT e.name, d.name
FROM employees e
LEFT JOIN departments d ON e.department_id = d.id;
```

---

## 🧠 Functions & Clauses

- ⏱️ `NOW()` – Current timestamp
- 🗓️ `DATE()` – Extract date
- 🔠 `UPPER()`, `LOWER()` – Case conversion
- 🔎 `LIKE`, `IN`, `BETWEEN` – Conditional filters

```sql
SELECT * FROM orders
WHERE order_date BETWEEN '2024-01-01' AND '2024-12-31';

SELECT * FROM employees
WHERE name LIKE 'A%';
```

---

## 📎 Constraints

- 🔑 Primary Key
- 🗝️ Foreign Key
- 🔒 NOT NULL
- 🛡️ UNIQUE
- ✅ CHECK

```sql
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT CHECK (age >= 18)
);
```

---

## 📂 Sample Database

You can practice with:

- `employees` 👨‍💼
- `departments` 🏢
- `orders` 🧾
- `products` 🛒
- `students` 🎓

Use dummy data or import from [Mockaroo](https://mockaroo.com/) for realistic datasets.

---

## 📣 Contribution

Feel free to fork this repo, add new queries, or create issue threads if you find bugs or want improvements!

---

### 🌟 **Don't forget to**

- ⭐ Star the repository
- 🍴 Fork it
- 📢 Share with friends & developers preparing for interviews
- 🔁 Keep practicing daily!

---

## 📩 Lets Connect

<a href="https://www.linkedin.com/in/chinmay-sharad-kaitade/" target="blank"><img align="center" src="https://img.shields.io/badge/linkedin-%230077B5.svg?style=for-the-badge&logo=linkedin&logoColor=white" alt="Chinmay'sLinkedinHandle" title="LinkedIn"/></a> | <a href="https://www.instagram.com/chinmaykaitade_hunter/" target="blank"><img align="center" src="https://img.shields.io/badge/Instagram-%23E4405F.svg?style=for-the-badge&logo=Instagram&logoColor=white" alt="Chinmay'sInstagramHandle" title="Instagram"/></a> | <a href="https://x.com/chinmaydotcom" target="blank"><img align="center" src="https://img.shields.io/badge/X-%23000000.svg?style=for-the-badge&logo=X&logoColor=white" alt="Chinmay'sXHandle" title="X"/></a>

---

> _"Practice makes perfect — keep querying until it's second nature!"_ 💪
