CREATE DATABASE StringFunctionsDB;
USE StringFunctionsDB;

-- Create employees table for string function demonstrations
CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    department VARCHAR(50)
);

-- Insert sample employee data
INSERT INTO employees (first_name, last_name, email, department) VALUES
('John', 'Doe', 'john.doe@example.com', 'Marketing'),
('Jane', 'Smith', 'jane.smith@example.com', 'Sales'),
('Michael', 'Johnson', 'michael.johnson@example.com', 'IT'),
('Emily', 'Davis', 'emily.davis@example.com', 'HR'),
('Chris', 'Brown', 'chris.brown@example.com', 'Finance');

select concat(first_name," ",last_name) as full_name from employees;

select trim(upper(   "        ok   "));

select first_name, locate("a",first_name) as position_of_a from employees;

select * from employees;

select first_name, replace(email,"example.com", "amazon.com") from employees;

select first_name,ascii(first_name),ascii(lower(first_name)) from employees;

select *, FIELD (category, "electronics" , "Appliances" , "Furniture") FROM products ORDER by FIELD(category, "electronics" , "Appliances" , "Furniture");

select char_length("Hello");

select SOUNDEX("jane"); -- check similar sounding words

