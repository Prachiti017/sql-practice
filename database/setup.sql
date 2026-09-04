
-- Create database
CREATE DATABASE company_db;

USE company_db;

-- Departments table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

-- Employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    department_id INT,
    salary DECIMAL(10,2),
    joining_date DATE,
    FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

-- Insert departments
INSERT INTO departments
VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing');

-- Insert employees
INSERT INTO employees
VALUES
(101, 'Amit', 1, 65000, '2022-05-10'),
(102, 'Priya', 1, 75000, '2021-08-15'),
(103, 'Rahul', 2, 55000, '2023-01-20'),
(104, 'Sneha', 3, 70000, '2020-11-05'),
(105, 'Vikram', 1, 85000, '2019-06-12'),
(106, 'Neha', 4, 60000, '2022-09-18');
