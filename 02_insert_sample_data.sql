
USE CoffeeShopDB;
GO

INSERT INTO Products (coffee_name, base_price)
VALUES
('Espresso', 100.00),
('Cappuccino', 150.00),
('Latte', 170.00),
('Americano', 120.00),
('Mocha', 190.00);
GO

INSERT INTO Ingredients (product_id, ingredient_name)
VALUES
(1, 'Coffee Beans'),
(1, 'Water'),
(2, 'Coffee Beans'),
(2, 'Milk'),
(2, 'Milk Foam'),
(3, 'Coffee Beans'),
(3, 'Milk'),
(4, 'Coffee Beans'),
(4, 'Hot Water'),
(5, 'Coffee Beans'),
(5, 'Milk'),
(5, 'Chocolate Syrup');
GO

INSERT INTO Orders
(product_id, quantity, unit_price, order_timestamp)
VALUES
(1, 2, 100.00, DATEADD(DAY, -2, GETDATE())),
(2, 3, 150.00, DATEADD(DAY, -5, GETDATE())),
(3, 1, 170.00, DATEADD(DAY, -10, GETDATE())),
(4, 2, 120.00, DATEADD(DAY, -15, GETDATE())),
(5, 2, 190.00, DATEADD(DAY, -20, GETDATE())),
(1, 1, 100.00, DATEADD(DAY, -35, GETDATE()));
GO
