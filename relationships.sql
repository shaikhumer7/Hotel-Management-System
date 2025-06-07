-- Definining Relationships

-- Customers ↔ Bookings (One-to-Many)
ALTER TABLE bookings
ADD CONSTRAINT booking_customer FOREIGN KEY (customer_id) 
REFERENCES customers(customer_id);

-- Rooms ↔ Bookings (One-to-Many)
ALTER TABLE bookings
ADD CONSTRAINT booking_room FOREIGN KEY (room_id) 
REFERENCES rooms(room_id);

-- Bookings ↔ Payments (One-to-One)
ALTER TABLE payments
ADD CONSTRAINT payment_booking FOREIGN KEY (booking_id) 
REFERENCES bookings(booking_id);
