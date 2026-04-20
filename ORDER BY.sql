CREATE DATABASE db12;
USE db12;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock_quantity INT,
    last_updated TIMESTAMP
);

-- Insert initial sample data
INSERT INTO products VALUES
(1, 'Laptop Pro', 'Electronics', 1299.99, 50, '2024-01-15 10:00:00'),
(2, 'Desk Chair', 'Furniture', 199.99, 30, '2024-01-16 11:30:00'),
(3, 'Coffee Maker', 'Appliances', 79.99, 100, '2024-01-14 09:15:00'),
(4, 'Gaming Mouse', 'Electronics', 59.99, 200, '2024-01-17 14:20:00'),
(5, 'Bookshelf', 'Furniture', 149.99, 25, '2024-01-13 16:45:00');

select * from products order by price  desc;

select * from products where category = "electronics"  order by price;

select * from products order by category, price desc;

select * from products order by 4;

select * from products order by length(product_name) limit 1;

select * from products order by stock_quantity desc limit 1;

-- custom ordering 
select * from products order by field(category, "electronics" , "Appliances" , "Furniture"), price desc;

select *, stock_quantity <= 50  and price >= 200 from products order by (stock_quantity <= 50  and price >= 200) desc ; 

-- case else example
select *, case
 when stock_quantity <= 50 and price >= 200 then 1 
 when stock_quantity <= 50 then 2
 else 3 
 end as priority from products order by
 case 
 when stock_quantity <= 50 and price >= 200 then 1 
 when stock_quantity <= 50 then 2
 else 3
 end;
 
 -- handling null value 
 
 INSERT INTO products VALUES
(6, 'Desk Lamp', 'Furniture', NULL, 45, '2024-01-18 13:25:00'),
(7, 'Keyboard', 'Electronics', 89.99, NULL, '2024-01-19 15:10:00');

select * from products order by price;

select *, price*stock_quantity as total_value from products order by total_value desc;

select * from products order by category , price;