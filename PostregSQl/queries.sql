-- PostgreSQL Queries --- 

-- Create Table
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary NUMERIC(10, 2),
    joining_date DATE
);

-- Insert Records

INSERT INTO employees (name, department, salary, joining_date)
VALUES 
('Alice Johnson', 'HR', 55000.00, '2023-01-15'),
('Bob Smith', 'Engineering', 75000.00, '2022-06-01'),
('Charlie Brown', 'Marketing', 60000.00, '2024-03-20');

-- Update Record

-- Update specific row:
UPDATE employees
SET salary = 80000.00
WHERE name = 'Bob Smith';

-- Update multiple rows (e.g., all in one department):
UPDATE employees
SET department = 'Sales'
WHERE department = 'Marketing';


--  Delete Record

-- Delete specific record:
DELETE FROM employees
WHERE name = 'Charlie Brown';

-- Delete all records:
DELETE FROM employees;


-- Select Data

SELECT * FROM employees; -- Select all
SELECT name, salary FROM employees; --  Select specific columns
SELECT * FROM employees WHERE department = 'Engineering'; -- Select with condition

--  Rename Table
ALTER TABLE employees RENAME TO company_staff;