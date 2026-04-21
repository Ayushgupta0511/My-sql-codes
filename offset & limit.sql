CREATE DATABASE db13;
USE db13;
-- Create products table
CREATE TABLE products (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100),
price DECIMAL(10,2),
category VARCHAR(50),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- Insert sample data
INSERT INTO products (name, price, category) VALUES
('Laptop', 999.99, 'Electronics'),
('Smartphone', 499.99, 'Electronics'),
('Coffee Maker', 79.99, 'Appliances'),
('Headphones', 149.99, 'Electronics'),
('Blender', 59.99, 'Appliances'),
('Tablet', 299.99, 'Electronics'),
('Microwave', 199.99, 'Appliances'),
('Smart Watch', 249.99, 'Electronics'),
('Toaster', 39.99, 'Appliances'),
('Speaker', 89.99, 'Electronics');

select * from products order by id limit 2;

select * from products order by id limit 2 offset 4;

-- select * from products order by id limit [offset_num], [limit];
select * from products order by id limit 2, 4;

select * from products order by price desc limit 3;

select * from products order by rand() limit 5;

select * from products where created_date > '2025-01-01 00:00:00' order by created_date limit 10;