CREATE DATABASE decode_labs;
USE decode_labs;

# All Data
SELECT * FROM Orders;


# Select Specific Columns
SELECT OrderID, Product, TotalPrice
FROM Orders;


# WHERE Clause
SELECT * FROM Orders
WHERE TotalPrice > 5000;


# ORDER BY
SELECT OrderID, Product, TotalPrice FROM Orders
ORDER BY TotalPrice DESC;


# COUNT
SELECT COUNT(*) AS TotalOrders FROM Orders;


# SUM
SELECT SUM(TotalPrice) AS TotalSales
FROM Orders;


# AVG
SELECT AVG(TotalPrice) AS AverageOrderValue
FROM Orders;


# GROUP BY Product
SELECT Product,
SUM(TotalPrice) AS TotalSales
FROM Orders
GROUP BY Product;


# GROUP BY Order Status
SELECT OrderStatus,
COUNT(*) AS TotalOrders
FROM Orders
GROUP BY OrderStatus;


# Top 5 Highest Orders
SELECT OrderID,Product, TotalPrice
FROM Orders
ORDER BY TotalPrice DESC
LIMIT 5;

