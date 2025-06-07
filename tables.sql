-- Creating a Database and Using it.
CREATE DATABASE HotelManagementSystem;
USE HotelManagementSystem;

-- Creating table: customers
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(20),
    address TEXT
);

-- Creating table: rooms
CREATE TABLE rooms (
    room_id INT AUTO_INCREMENT PRIMARY KEY,
    room_number VARCHAR(10) UNIQUE NOT NULL,
    room_type VARCHAR(50) NOT NULL,
    price_per_night DECIMAL(10,2) NOT NULL,
    status VARCHAR(20) DEFAULT 'available'
);

-- Creating table: bookings
CREATE TABLE bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    room_id INT REFERENCES rooms(room_id),
    check_in_date DATE NOT NULL,
    check_out_date DATE NOT NULL,
    status VARCHAR(20) DEFAULT 'booked'
);

-- Creating table: payments
CREATE TABLE payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    booking_id INT REFERENCES bookings(booking_id),
    amount DECIMAL(10,2) NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    payment_status VARCHAR(20) DEFAULT 'pending'
);

-- Creating table: feedback
CREATE TABLE feedback (
    feedback_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    booking_id INT NOT NULL,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comments TEXT,
    feedback_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (booking_id) REFERENCES bookings(booking_id)  
);
