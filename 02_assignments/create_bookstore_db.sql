CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Position VARCHAR(50),
    HireDate DATE
);

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Address VARCHAR(200)
);

CREATE TABLE Book (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Price DECIMAL(10, 2),
    StockQuantity INT
);

CREATE TABLE Date (
    DateID INT PRIMARY KEY,
    Date DATE,
    Year INT,
    Month INT,
    Day INT,
    Quarter INT
);

CREATE TABLE [Order] (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate INT,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (OrderDate) REFERENCES Date(DateID)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    BookID INT,
    Quantity INT,
    Price DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES [Order](OrderID),
    FOREIGN KEY (BookID) REFERENCES Book(BookID)
);

CREATE TABLE Sales (
    SalesID INT PRIMARY KEY,
    EmployeeID INT,
    OrderID INT,
    SaleDate INT,
    TotalSaleAmount DECIMAL(10, 2),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (OrderID) REFERENCES [Order](OrderID),
    FOREIGN KEY (SaleDate) REFERENCES Date(DateID)
);
