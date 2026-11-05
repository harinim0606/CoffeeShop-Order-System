
USE CoffeeShopDB;
GO

SELECT
    SUM(quantity * unit_price) AS total_revenue
FROM Orders
WHERE order_timestamp >= DATEADD(DAY, -30, GETDATE())
  AND order_timestamp <= GETDATE();
GO
