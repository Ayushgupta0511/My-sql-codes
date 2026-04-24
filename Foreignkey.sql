CREATE DATABASE company_db2;
USE company_db2;

-- Create the parent table (departments)
CREATE TABLE departments (
    department_id INT NOT NULL,
    department_name VARCHAR(100) NOT NULL,
    location VARCHAR(100),
    PRIMARY KEY (department_id)
);

-- Create the child table with a foreign key (employees)
CREATE TABLE employees (
    employee_id INT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    hire_date DATE,
    salary DECIMAL(10,2),
    department_id INT,
    PRIMARY KEY (employee_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- INSERT SAMPLE DATA
-- =================

-- Insert department data
INSERT INTO departments (department_id, department_name, location)
VALUES 
    (1, 'Human Resources', 'Floor 1'),
    (2, 'Marketing', 'Floor 2'),
    (3, 'Engineering', 'Floor 3'),
    (4, 'Finance', 'Floor 1');

-- Insert employee data
INSERT INTO employees (employee_id, first_name, last_name, email, hire_date, salary, department_id)
VALUES
    (101, 'John', 'Smith', 'john.smith@company.com', '2018-06-20', 55000.00, 1),
    (102, 'Sarah', 'Johnson', 'sarah.johnson@company.com', '2019-03-15', 62000.00, 2),
    (103, 'Michael', 'Williams', 'michael.williams@company.com', '2020-01-10', 75000.00, 3),
    (104, 'Emily', 'Brown', 'emily.brown@company.com', '2019-11-05', 68000.00, 3),
    (105, 'David', 'Jones', 'david.jones@company.com', '2021-02-28', 58000.00, 4),
    (106, 'Jessica', 'Davis', 'jessica.davis@company.com', '2020-07-16', 61000.00, 2),
    (107, 'Robert', 'Miller', 'robert.miller@company.com', '2018-09-12', 72000.00, 3);

-- View employee data
SELECT * FROM employees;

-- DEMONSTRATING FOREIGN KEY CONSTRAINT
-- ====================================

-- Attempt to insert an employee with non-existent department_id (this will fail)
INSERT INTO employees (employee_id, first_name, last_name, email, hire_date, salary, department_id)
VALUES
    (145, 'John', 'Smith', 'john.smith@company.com', '2018-06-20', 55000.00, 69);
-- Error: Cannot add or update a child row: a foreign key constraint fails

-- Insert an employee with NULL department_id (allowed if the foreign key allows NULL)
INSERT INTO employees (employee_id, first_name, last_name, email, hire_date, salary, department_id)
VALUES 
    (108, 'Thomas', 'Wilson', 'thomas.wilson@company.com', '2022-04-10', 65000.00, NULL);

-- ADDING AND REMOVING FOREIGN KEYS
-- ===============================

-- Create a projects table
CREATE TABLE projects (
    project_id INT NOT NULL,
    project_name VARCHAR(100) NOT NULL,
    start_date DATE,
    end_date DATE,
    manager_id INT,
    PRIMARY KEY (project_id)
);

-- Add a foreign key constraint after table creation
ALTER TABLE projects
ADD FOREIGN KEY (manager_id) REFERENCES employees(employee_id);

show create table projects;

-- 'projects', 'CREATE TABLE `projects` (\n  `project_id` int NOT NULL,\n  `project_name` varchar(100) NOT NULL,\n  `start_date` date DEFAULT NULL,\n  `end_date` date DEFAULT NULL,\n  `manager_id` int DEFAULT NULL,\n  PRIMARY KEY (`project_id`),\n  KEY `manager_id` (`manager_id`),\n  CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `employees` (`employee_id`)\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci'
-- 'projects', 'CREATE TABLE `projects` (\n  `project_id` int NOT NULL,\n  `project_name` varchar(100) NOT NULL,\n  `start_date` date DEFAULT NULL,\n  `end_date` date DEFAULT NULL,\n  `manager_id` int DEFAULT NULL,\n  PRIMARY KEY (`project_id`),\n  KEY `manager_id` (`manager_id`)\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci'

alter table projects drop foreign key projects_ibfk_1;

-- to create a table with custom constraint name;

alter table employees add Constraint Ayushjai05 FOREIGN KEY (department_id) REFERENCES departments(department_id);

show create table employees;

-- 'employees', 'CREATE TABLE `employees` (\n  `employee_id` int NOT NULL,\n  `first_name` varchar(50) NOT NULL,\n  `last_name` varchar(50) NOT NULL,\n  `email` varchar(100) DEFAULT NULL,\n  `hire_date` date DEFAULT NULL,\n  `salary` decimal(10,2) DEFAULT NULL,\n  `department_id` int DEFAULT NULL,\n  PRIMARY KEY (`employee_id`),\n  KEY `Ayushjai05` (`department_id`),\n  CONSTRAINT `Ayushjai05` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`),\n  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`)\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci'
 
 