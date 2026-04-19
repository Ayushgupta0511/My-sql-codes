CREATE DATABASE company;
USE company;

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO employees (first_name, last_name, department, salary, hire_date) VALUES
('John', 'Doe', 'HR', 60000.00, '2022-05-10'),
('Jane', 'Smith', 'IT', 75000.00, '2021-08-15'),
('Alice', 'Johnson', 'Finance', 82000.00, '2019-03-20'),
('Bob', 'Williams', 'IT', 72000.00, '2020-11-25'),
('Charlie', 'Brown', 'Marketing', 65000.00, '2023-01-05');

Select * from employees where department = 'IT';

select first_name as 'FIRST NAME',department from employees;

select concat(first_name,' ',last_name) as 'FULL NAME' , ROUND(salary,1)from employees;

select AVG(salary) from employees;

select * from employees where salary > (select AVG(salary) from employees);

select count(*) , department from employees group by department;

select length('hello');

select 5 < 3;
