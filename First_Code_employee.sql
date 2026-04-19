DROP TABLE IF EXISTS basic_employees;

CREATE TABLE basic_employees (
    employee_id int primary key auto_increment,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    hire_date date default (Current_date()),
    email varchar(100) unique,
    phone_number varchar(100) unique,
    salary decimal(10,2) check (salary > 0.0),
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp on update current_timestamp
);


Insert into basic_employees ( first_name,last_name,email,phone_number,salary)
values ('nandini' ,'Gupta','nansh@gmail.com','8794536721','12000000' );

select * from basic_employees;

alter table basic_employees
add column emergency_contact varchar(100);
alter table basic_employees
modify column emergency_contact varchar(100) NOT NULL;
alter table basic_employees
DROP column emergency_contact;

alter table basic_employees
add column department_id INT;

create table department (
department_name varchar(100),
location varchar(100)
);
INSERT INTO DEPARTMENT(department_name,location) VALUES 
('IT' , 'BUilding A'),
('HR' , 'BUilding B'),
('SAles' , 'BUilding C');
alter table department 
add column department_id INT primary key auto_Increment;
select * from department;

alter table basic_employees add foreign key (department_id) references department(department_id);