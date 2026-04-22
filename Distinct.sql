CREATE DATABASE EmployeeDB;
USE EmployeeDB;

-- Create employees table
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

-- Insert sample data including duplicates
INSERT INTO employees (name, department, salary) VALUES
    ('Alice', 'HR', 50000),
    ('Bob', 'Finance', 60000),
    ('Charlie', 'IT', 70000),
    ('Alice', 'HR', 50000),      -- Duplicate record
    ('David', 'Finance', 55000),
    ('Eve', 'IT', 70000),        -- Duplicate salary
    ('Frank', 'HR', 50000);
    
select distinct department from employees;

select  * from employees; 

select distinct name,department,salary from employees; 

select count(distinct department) as unique_departments from employees; 

select distinct salary  from employees order by salary desc;

select distinct department from employees where salary > 50000;

INSERT INTO employees (name, department, salary) VALUES ('Grace', NULL, 48000); 

select distinct department from employees;

