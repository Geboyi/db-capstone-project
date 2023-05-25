CREATE DEFINER=`little_lemon`@`%` PROCEDURE `UpdateBooking`(IN _BookingID INT, IN _BookingDate DATE)
BEGIN
UPDATE bookings
SET BookingDate=_BookingDate
WHERE BookingID=_BookingID;
SELECT CONCAT('Booking ', _BookingID, ' Updated successfully!') AS Message;
END