CREATE DEFINER=`little_lemon`@`%` PROCEDURE `CheckBooking`(IN _BookingDate DATE, IN _TableNumber INT)
BEGIN
DECLARE tablestatus INT;
-- check if table is booked on a specific date
SELECT BookingID INTO tablestatus FROM bookings
WHERE _BookingDate=BookingDate AND _TableNumber=TableNumber;
-- message to display upon result from query
if tablestatus IS NOT NULL THEN
	SELECT CONCAT('Table ', _TableNumber, ' is already booked on ', _BookingDate) AS BookingStatus;
else
	SELECT CONCAT('Table ', _TableNumber, ' is available on ', _BookingDate) AS BookingStatus;
end if;
END