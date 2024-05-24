CREATE TABLE employees (
id INT PRIMARY KEY,
name TEXT,
age INT,
department TEXT);

INSERT INTO employees (id, name, age, department)
VALUES (1, 'Andrii', 23, 'student'),
(2, 'Nazar', 35, 'director'),
(3, 'Vasil', 21, 'teacher');

SELECT * FROM employees WHERE age > 30;

UPDATE employees SET department = 'dvornik' WHERE id = 1;

DELETE FROM employees WHERE id = 2;

SELECT * FROM employees;


CREATE TABLE departments (
id INT PRIMARY KEY,
name TEXT);

ALTER TABLE employees
ADD FOREIGN KEY (id) REFERENCES departments(id);

INSERT INTO employees (id, name)
VALUES (123, 'Ron'),
(234, 'Taras'),
(464, 'Oleh');

SELECT employees.department, departments.name
FROM employees
INNER JOIN departments ON employees.id = departments.id;