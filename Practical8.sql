CREATE DATABASE class;
USE class;

CREATE TABLE EMPLOYEE8 (
    Emp_no INT CHECK (Emp_no > 100),
    E_name VARCHAR(30),
    E_address VARCHAR(50),
    Dept_no INT UNIQUE,
    Dept_name VARCHAR(30),
    Job_id INT,
    Designation VARCHAR(20),
    Salary INT,
    Hire_date DATE,
    CONSTRAINT pk_emp PRIMARY KEY (Emp_no)
);

RENAME TABLE EMPLOYEE8 TO EMPLOYEE;

INSERT INTO EMPLOYEE 
(Emp_no, E_name, E_address, Dept_no, Dept_name, Job_id, Designation, Salary, Hire_date)
VALUES
(101,'SMITH','DELHI',10,'IT',1,'CLERK',12000,'1981-12-17');

INSERT INTO EMPLOYEE 
(Emp_no, E_name, E_address, Dept_no, Dept_name, Job_id, Designation, Salary, Hire_date)
VALUES
(102,'ALLEN','NOIDA',20,'HR',2,'MANAGER',25000,'1981-05-01');

INSERT INTO EMPLOYEE 
(Emp_no, E_name, E_address, Dept_no, Dept_name, Job_id, Designation, Salary, Hire_date)
VALUES
(103,'SCOTT','DELHI',30,'IT',3,'ANALYST',30000,'1981-12-03');

INSERT INTO EMPLOYEE 
(Emp_no, E_name, E_address, Dept_no, Dept_name, Job_id, Designation, Salary, Hire_date)
VALUES
(104,'SARA','MUMBAI',40,'FINANCE',4,'IT PROFF',18000,'1981-12-17');

select * from employee;

SELECT 
    E_name,
    FLOOR(DATEDIFF(SYSDATE(), Hire_date)/365) AS Experience_Years,
    Salary/30 AS Daily_Salary
FROM EMPLOYEE;


SELECT *
FROM EMPLOYEE
WHERE Designation IN ('CLERK','ANALYST');


SELECT *
FROM EMPLOYEE
WHERE Hire_date IN (
    '1981-05-01',
    '1981-12-03',
    '1981-12-17'
);

SELECT Designation, SUM(Salary) AS Total_Salary
FROM EMPLOYEE
GROUP BY Designation;

SELECT *
FROM EMPLOYEE
ORDER BY Salary ASC;

SELECT *
FROM EMPLOYEE
WHERE Salary > 16000
ORDER BY Dept_name;