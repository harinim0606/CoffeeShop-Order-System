
-- Create Database
CREATE DATABASE CoffeeShopDB;
GO

USE CoffeeShopDB;
GO

-- Products Table
CREATE TABLE Products (
    product_id INT IDENTITY(1,1) PRIMARY KEY,
    coffee_name VARCHAR(100) NOT NULL,
    base_price DECIMAL(10,2) NOT NULL
);
GO

-- Orders Table
CREATE TABLE Orders (
    order_id INT IDENTITY(1,1) PRIMARY KEY,
    product_id INT NOT NULL,
    quantity INT NOT NULL DEFAULT 1,
    unit_price DECIMAL(10,2) NOT NULL,
    order_timestamp DATETIME2 DEFAULT SYSDATETIME(),

    CONSTRAINT FK_Orders_Products
    FOREIGN KEY (product_id)
    REFERENCES Products(product_id)
);
GO

-- Ingredients Table
CREATE TABLE Ingredients (
    ingredient_id INT IDENTITY(1,1) PRIMARY KEY,
    product_id INT NOT NULL,
    ingredient_name VARCHAR(100) NOT NULL,

    CONSTRAINT FK_Ingredients_Products
    FOREIGN KEY (product_id)
    REFERENCES Products(product_id)
);
GO
