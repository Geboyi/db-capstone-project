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

CALL CheckBooking('2022-10-06', 101);

CALL AddValidBooking('2022-10-04', 1);
SET FOREIGN_KEY_CHECKS=0;
CALL AddBooking(1, '00-000-0001', '2023-01-01', 10);
CALL AddBooking(2, '00-000-0002', '2023-01-02', 11);

CALL UpdateBooking(1, '2023-01-10');
CALL CancelBooking(2);