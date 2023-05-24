USE littlelemondb;

SELECT customer.CustomerID, customer.CustomerName, orders.OrderID, orders.TotalCost, menu.MenuName, menuitems.CourseName
FROM customer
JOIN orders 
ON customer.CustomerID = orders.CustomerID
JOIN menu
ON orders.MenuID = menu.MenuID
JOIN menuitems
ON menu.MenuItemsID = menuitems.MenuItemsID 
WHERE orders.TotalCost > 150
ORDER BY orders.TotalCost ASC;

CALL GetMaxQuantity();

SELECT MenuName FROM menu WHERE 
MenuID = ANY (
SELECT MenuID FROM orders
WHERE Quantity > 2
);

SET @id = '00-090-3491';
CALL GetOrderDetails (@id);

SET @cancel = '33-207-9048';
CALL CancelOrder(@cancel);