CREATE DEFINER=`little_lemon`@`%` PROCEDURE `AddBooking`(IN _BookingID INT,IN _CustomerID VARCHAR(255),IN _BookingDate DATE, IN _TableNumber INT)
BEGIN
INSERT INTO bookings(BookingID, CustomerID, BookingDate, TableNumber)
VALUES (_BookingID, _CustomerID, _BookingDate, _TableNumber);
END