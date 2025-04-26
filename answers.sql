CREATE DATABASE sales;

USE sales;

-- QUIZ 1
CREATE TABLE Original (
OrderID INT,
CustomerName VARCHAR(255),
Products VARCHAR(255));

SELECT * FROM Original;

INSERT INTO Original
VALUES
(101, "John Doe", "Laptop"),
(101, "John Doe", "Mouse"),
(102, "Jane Smith",	"Tablet"),
(102, "Jane Smith", "Keyboard"),
(102, "Jane Smith",	"Mouse"),
(103, "Emily Clark", "Phone");


-- QUIZ 2
-- Separate into 2 tables.
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(255)
);

Insert into Orders
INSERT INTO Orders (OrderID, CustomerName)
VALUES 
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

-- Create the OrderItems table
CREATE TABLE OrderItems (
    OrderID INT,
    Product VARCHAR(255),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Insert into OrderItems
INSERT INTO OrderItems (OrderID, Product, Quantity)
VALUES 
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);
