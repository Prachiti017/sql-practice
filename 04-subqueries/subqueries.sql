-- =========================================
-- SUBQUERIES
-- =========================================

-- Employees earning more than average salary
SELECT
    name,
    salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);


-- Employee with the highest salary
SELECT
    name,
    salary
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);


-- Employees working in the IT department
SELECT
    name
FROM employees
WHERE department_id = (
    SELECT department_id
    FROM departments
    WHERE department_name = 'IT'
);
