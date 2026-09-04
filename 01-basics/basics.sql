-- =========================================
-- SQL BASICS
-- Database: MySQL
-- =========================================

-- Select all employees
SELECT *
FROM employees;

-- Select specific columns
SELECT name, salary
FROM employees;

-- Employees with salary greater than 50000
SELECT *
FROM employees
WHERE salary > 50000;

-- Sort employees by salary
SELECT *
FROM employees
ORDER BY salary DESC;

-- Get unique departments
SELECT DISTINCT department_id
FROM employees;

-- Get first 5 employees
SELECT *
FROM employees
LIMIT 5;
