CREATE DATABASE db_for_group_by;
USE db_for_group_by;

-- Table Creation
-- =============================================
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE
);

-- Initial Data Insertion
-- =============================================
INSERT INTO employees (name, department, salary, joining_date) VALUES
('Alice', 'HR', 50000, '2020-06-15'),
('Bob', 'HR', 55000, '2019-08-20'),
('Charlie', 'IT', 70000, '2018-03-25'),
('David', 'IT', 72000, '2017-07-10'),
('Eve', 'IT', 73000, '2021-02-15'),
('Frank', 'Finance', 60000, '2020-11-05'),
('Grace', 'Finance', 65000, '2019-05-30'),
('Hannah', 'Finance', 62000, '2021-01-12');

-- Additional Data Insertion
-- =============================================
INSERT INTO employees (name, department, salary, joining_date) VALUES
('Tim', 'HR', 65000, '2019-05-30'),
('Tom', 'IT', 62000, '2021-01-12');

select * from employees;

select department, avg(salary) from employees group by department;


select department, min(salary), max(salary) from employees group by department ;

select department ,year(joining_date) as joining_year, count(*) from employees group by department, year (joining_date); 

select count(*) ,
case 
when salary < 60000 then "Low salary"
when salary between 60000 and 70000 then "medium salary"
else "high salary"
end as salary_range from employees group by salary_range;

select department , count(*) as total_employees from employees group by department order by total_employees desc limit 1;

select department ,avg(salary) as av_salary, count(*) as total_employees from employees group by department having total_employees >2 and av_salary > 50000;


