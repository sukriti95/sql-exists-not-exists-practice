CREATE DATABASE exists_practice;
use exists_practice;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE OrderItems (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Customers VALUES
(1, 'Alice', 'Delhi'),
(2, 'Bob', 'Mumbai'),
(3, 'Charlie', 'Delhi'),
(4, 'Diana', 'Bangalore'),
(5, 'Ethan', 'Mumbai'),
(6, 'Farah', 'Pune'),
(7, 'George', 'Delhi'),
(8, 'Hina', 'Jaipur');

INSERT INTO Products VALUES
(101, 'Laptop', 'Electronics', 60000),
(102, 'Phone', 'Electronics', 25000),
(103, 'Chair', 'Furniture', 5000),
(104, 'Desk', 'Furniture', 12000),
(105, 'Headphones', 'Electronics', 2000),
(106, 'Notebook', 'Stationery', 100),
(107, 'Pen', 'Stationery', 20);


INSERT INTO OrderItems VALUES
(1, 1001, 101, 1),
(2, 1001, 105, 2),
(3, 1002, 102, 1),
(4, 1003, 103, 2),
(5, 1004, 102, 1),
(6, 1004, 105, 1),
(7, 1005, 104, 1),
(8, 1006, 103, 4),
(9, 1007, 101, 1),
(10, 1007, 102, 2),
(11, 1008, 106, 10),
(12, 1009, 105, 1);

