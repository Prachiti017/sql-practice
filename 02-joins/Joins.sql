-- =========================================
-- SQL JOINS
-- =========================================

-- INNER JOIN
SELECT
    e.name,
    d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;


-- LEFT JOIN
SELECT
    e.name,
    d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;


-- RIGHT JOIN
SELECT
    e.name,
    d.department_name
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id;
