CREATE DEFINER=`little_lemon`@`%` PROCEDURE `GetOrderDetails`(IN _CustomerID VARCHAR(255))
BEGIN
SELECT OrderID, Quantity, TotalCost FROM orders
WHERE _CustomerID = CustomerID;
END