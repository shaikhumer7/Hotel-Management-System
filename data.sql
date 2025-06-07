-- Insert  Into customers
INSERT INTO customers (name, email, phone, address) VALUES
('John Doe', 'john@example.com', '1234567890', '123 Street, City'),
('Alice Smith', 'alice@example.com', '9876543210', '456 Avenue, City'),
('Bob Johnson', 'bob@example.com', '5556667777', '789 Boulevard, City');

-- Insert  Into rooms
INSERT INTO rooms (room_number, room_type, price_per_night, status) VALUES
('101', 'Deluxe', 150.00, 'available'),
('102', 'Standard', 100.00, 'available'),
('103', 'Suite', 200.00, 'available'),
('104', 'Deluxe', 150.00, 'booked'),
('105', 'Standard', 100.00, 'booked');

-- Insert  Into bookings
INSERT INTO bookings (customer_id, room_id, check_in_date, check_out_date, status) VALUES
(1, 1, '2024-03-01', '2024-03-05', 'completed'),
(2, 2, '2024-03-02', '2024-03-06', 'completed'),
(3, 3, '2024-03-10', '2024-03-15', 'booked'),
(1, 4, '2024-04-01', '2024-04-07', 'booked'),
(2, 5, '2024-04-05', '2024-04-10', 'booked');

-- Insert  Into payments
INSERT INTO payments (booking_id, amount, payment_date, payment_status) VALUES
(1, 600.00, '2023-03-01', 'paid'),
(2, 400.00, '2023-03-02', 'paid'),
(3, 1000.00, '2024-03-10', 'pending'),
(4, 1050.00, '2023-04-01', 'paid'),
(5, 500.00, '2024-04-05', 'paid');

-- Insert  Into feedback
INSERT INTO feedback (customer_id, booking_id, rating, comments) VALUES
(1, 1, 5, 'Great experience! The room was clean and comfortable.'),
(2, 2, 4, 'Nice hotel, but the service could be improved.'),
(3, 3, 3, 'Average stay, nothing special.'),
(1, 4, 5, 'Loved the deluxe room, highly recommend it!'),
(2, 5, 4, 'Good value for money.');

