CREATE DATABASE my_database;
USE my_database;

-- Create Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    signup_date DATE
);

-- Insert Sample Customers
INSERT INTO Customers VALUES
(1, 'Alice', 'Johnson', 'alice@example.com', '2023-01-15'),
(2, 'Bob', 'Smith', 'bob@example.com', '2022-11-20'),
(3, 'Charlie', 'Brown', 'charlie@example.com', '2023-05-10'),
(4, 'David', 'Lee', 'david@example.com', '2021-09-05');

-- Create Products Table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock_quantity INT
);

-- Insert Sample Products
INSERT INTO Products VALUES
(1, 'Laptop', 'Electronics', 999.99, 10),
(2, 'Smartphone', 'Electronics', 699.99, 15),
(3, 'Desk Chair', 'Furniture', 129.99, 25),
(4, 'Wireless Mouse', 'Accessories', 29.99, 50);

-- Create Orders Table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Insert Sample Orders
INSERT INTO Orders VALUES
(1, 1, '2024-02-01', 729.98),
(2, 2, '2024-02-03', 129.99),
(3, 3, '2024-02-05', 999.99),
(4, 4, '2024-02-07', 29.99);

-- Create OrderDetails Table
CREATE TABLE OrderDetails (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    subtotal DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Insert Sample Order Details
INSERT INTO OrderDetails VALUES
(1, 1, 2, 1, 699.99),
(2, 1, 4, 1, 29.99),
(3, 2, 3, 1, 129.99),
(4, 3, 1, 1, 999.99),
(5, 4, 4, 1, 29.99);

select * from OrderDetails;
select * from customers;
select * from products;
select * from orders;
