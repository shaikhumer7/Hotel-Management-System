-- Creating stored procedure: Cancel bookings older than a given date
DELIMITER $$

CREATE PROCEDURE cancel_old_bookings(IN cancel_date DATE)
BEGIN
    UPDATE bookings
    SET status = 'cancelled'
    WHERE check_in_date < cancel_date;
    UPDATE rooms
    SET status = 'available'
    WHERE room_id IN (
        SELECT room_id FROM bookings WHERE check_in_date < cancel_date
    );

    SELECT CONCAT('Bookings before ', cancel_date, ' have been cancelled and rooms updated to available.') AS message;
END $$

DELIMITER ;


-- Example Usage

CALL cancel_old_bookings('2024-01-01');