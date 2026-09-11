
-- REAL-WORLD SQL PROBLEMS


-- Q1. Find the highest-paid employee.

SELECT
    name,
    salary
FROM employees
ORDER BY salary DESC
LIMIT 1;


-- Q2. Find the second-highest salary.

SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);


-- Q3. Find employees earning more than
-- their department's average salary.

SELECT
    e.name,
    e.salary,
    e.department_id
FROM employees e
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e2.department_id = e.department_id
);


-- Q4. Find the top 3 highest-paid employees.

SELECT
    name,
    salary
FROM employees
ORDER BY salary DESC
LIMIT 3;


-- Q5. Find departments having more than
-- one employee.

SELECT
    department_id,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 1;
