-- =========================================
-- COMMON TABLE EXPRESSIONS
-- =========================================

WITH department_salary AS (
    SELECT
        department_id,
        AVG(salary) AS average_salary
    FROM employees
    GROUP BY department_id
)
SELECT *
FROM department_salary
WHERE average_salary > 60000;
