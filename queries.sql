-- Retrieve a list of available rooms for a given date range
SELECT r.room_id, r.room_number, r.room_type, r.price_per_night
FROM rooms r
LEFT JOIN bookings b 
    ON r.room_id = b.room_id 
    AND ('2024-04-05' < b.check_out_date AND '2024-04-10' > b.check_in_date)
WHERE b.room_id IS NULL AND r.status = 'available';

-- Calculate total revenue generated in the last quarter
SELECT SUM(amount) AS total_revenue
FROM payments
WHERE YEAR(payment_date) = 2024;

-- Retrieve booking details for a specific customer 
SELECT c.name AS customer_name, r.room_number, b.check_in_date, b.status
FROM bookings b
INNER JOIN customers c ON b.customer_id = c.customer_id
INNER JOIN rooms r ON b.room_id = r.room_id
WHERE c.customer_id = 1;

-- Get the average rating for each room type
SELECT r.room_type, ROUND(AVG(f.rating), 2) AS average_rating
FROM feedback f
JOIN bookings b ON f.booking_id = b.booking_id
JOIN rooms r ON b.room_id = r.room_id
GROUP BY r.room_type
ORDER BY average_rating DESC;
