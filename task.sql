CREATE DATABASE IF NOT EXISTS ShopDB;
USE ShopDB;

CREATE TABLE Products (
	ID INT auto_increment,
    Name varchar(50),
    Description varchar(100),
    Price INT,
    WarehouseAmount INT,
    primary key (ID)
);
CREATE TABLE Customers (
	ID INT auto_increment,
    FirstName varchar(50),
    LastName varchar(50),
    Email varchar(50),
    Address varchar(50),
    primary key (ID)
);

CREATE TABLE Orders (
	ID INT auto_increment,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(ID) ON DELETE SET NULL,
    Date DATE,
    primary key (ID)
);

CREATE TABLE OrderItems (
	ID INT auto_increment,
    OrderID INT,
    ProductID INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(ID) ON DELETE SET NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ID) ON DELETE SET NULL,
    primary key (ID)
);