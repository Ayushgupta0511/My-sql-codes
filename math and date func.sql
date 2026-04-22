CREATE DATABASE NumericFunctionsDB;
USE NumericFunctionsDB;

CREATE TABLE numbers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    num_value DECIMAL(10,5)
);

INSERT INTO numbers (num_value) VALUES
(25.6789),
(-17.5432),
(100.999),
(-0.4567),
(9.5),
(1234.56789),
(0);

select * from numbers;

select num_value , ABS(num_value) AS absolute_value FROM numbers;

select num_value, TRUNCATE(num_value,2) -- from numbers; round to 2 decimal places

select num_value, CASE WHEN num_value > 709 THEN "Value too large for EXP()" ELSE EXP(num_value) END AS exp_value FROM numbers;

select day(now());

select DATE_FORMAT("2025-03-03" , "%W, %M, %e, %Y") as FORMATTED_date;

select * from orders where order_date >= date_sub( now(), interval 7 day);

