CREATE DEFINER=`little_lemon`@`%` PROCEDURE `CancelOrder`(IN _OrderID VARCHAR(255))
BEGIN
DELETE FROM orders
WHERE _OrderID = OrderID;
END