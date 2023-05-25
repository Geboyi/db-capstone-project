CREATE DEFINER=`little_lemon`@`%` PROCEDURE `CancelBooking`(IN _BookingID INT)
BEGIN
DELETE FROM bookings
WHERE BookingID=_BookingID;
SELECT CONCAT('BookingID ', _BookingID, ' successfully deleted!') AS Message;
END