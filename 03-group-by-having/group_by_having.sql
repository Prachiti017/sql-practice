-- =========================================
-- GROUP BY & HAVING
-- =========================================

-- Count employees in each department
SELECT
    department_id,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department_id;


-- Average salary by department
SELECT
    department_id,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department_id;


-- Departments with average salary above 60000
SELECT
    department_id,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 60000;


-- Highest salary in each department
SELECT
    department_id,
    MAX(salary) AS highest_salary
FROM employees
GROUP BY department_id;
