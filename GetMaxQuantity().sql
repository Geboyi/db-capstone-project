CREATE DEFINER=`little_lemon`@`%` PROCEDURE `GetMaxQuantity`()
BEGIN
DECLARE max_quantity INT;
SELECT MAX(Quantity) INTO max_quantity FROM orders;
SELECT max_quantity AS 'Maximum Quantity';
END