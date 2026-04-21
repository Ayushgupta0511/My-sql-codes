CREATE DATABASE StoreDB;
USE StoreDB;


CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);

INSERT INTO products (product_name, category, price, stock) VALUES
('Laptop', 'Electronics', 1200.00, 10),
('Phone', 'Electronics', 800.00, 15),
('Tablet', 'Electronics', 600.00, 20),
('Headphones', 'Accessories', 150.00, 50),
('Mouse', 'Accessories', 30.00, 100),
('Keyboard', 'Accessories', 45.00, 80);

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    customer_name VARCHAR(50)
);


INSERT INTO orders (order_date, customer_name) VALUES
('2024-02-01', 'Alice'),
('2024-02-05', 'Bob'),
('2024-02-10', 'Charlie'),
('2024-02-15', 'David');
select * from products where price = 600;

select * from products where not price != 800;

-- OR
select * from products where  price <> 800;

select * from products where  price <= 500;

select * from products where category = "Electronics";

select * from orders where  order_date < "2024-02-10";

select * from products where product_name > "mouse";

select "100" < "2";

