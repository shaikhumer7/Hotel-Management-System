-- Index Creation for Query Optimization

-- Index on customers table
CREATE INDEX idx_customers_customer_id ON customers(customer_id);

-- Indexes on rooms table
CREATE INDEX idx_rooms_room_id ON rooms(room_id);

-- Indexes on bookings table
CREATE INDEX idx_bookings_booking_id ON bookings(booking_id);
CREATE INDEX idx_bookings_customer_id ON bookings(customer_id);
CREATE INDEX idx_bookings_room_id ON bookings(room_id);

-- Index on booking_id in payments table
CREATE INDEX idx_payments_booking_id ON payments(booking_id);
