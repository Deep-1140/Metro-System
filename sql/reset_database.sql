-- Drop existing tables if they exist
DROP TABLE IF EXISTS ticket;
DROP TABLE IF EXISTS api_ticket;
DROP TABLE IF EXISTS train;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS user_profiles;
DROP TABLE IF EXISTS hibernate_sequence;

-- Create table for storing user profiles with auto-incrementing ID
CREATE TABLE user_profiles (
    profile_id INT NOT NULL AUTO_INCREMENT,
    address VARCHAR(255),                  
    first_name VARCHAR(255),              
    image LONGBLOB,                        
    last_name VARCHAR(255),               
    phone_number VARCHAR(255),            
    PRIMARY KEY (profile_id)              
) ENGINE=InnoDB;

-- Create table for storing user information
CREATE TABLE users (
    user_id INT NOT NULL AUTO_INCREMENT,   
    username VARCHAR(255) NOT NULL,       
    password VARCHAR(255) NOT NULL,       
    role VARCHAR(255) NOT NULL,           
    session_id VARCHAR(255),              
    profile_id INT,                       
    PRIMARY KEY (user_id),               
    FOREIGN KEY (profile_id)              
        REFERENCES user_profiles (profile_id)
) ENGINE=InnoDB;

-- Create table for storing train information
CREATE TABLE train (
    train_no BIGINT NOT NULL,              
    fare DOUBLE PRECISION,                
    from_station VARCHAR(255),            
    seats_available INT,                  
    to_station VARCHAR(255),              
    train_name VARCHAR(255),              
    PRIMARY KEY (train_no)                
) ENGINE=InnoDB;

-- Create table for storing ticket information
CREATE TABLE ticket (
    ticket_id VARCHAR(255) NOT NULL,       
    journey_date DATE,                     
    seat_type VARCHAR(255),                
    seats_required INT,                   
    amount DOUBLE PRECISION,              
    ticket_status VARCHAR(255),            
    transaction_id VARCHAR(255),          
    train_no BIGINT,                       
    user_id INT,                           
    PRIMARY KEY (ticket_id),              
    FOREIGN KEY (train_no)                
        REFERENCES train (train_no),
    FOREIGN KEY (user_id)                 
        REFERENCES users (user_id)
) ENGINE=InnoDB;

-- Create table for API ticket information
CREATE TABLE api_ticket (
    ticket_id VARCHAR(255) NOT NULL,       
    journey_date DATE,                     
    seat_type VARCHAR(255),                
    seats_required INT,                   
    amount DOUBLE PRECISION,              
    ticket_status VARCHAR(255),            
    transaction_id VARCHAR(255),          
    train_no BIGINT,                       
    PRIMARY KEY (ticket_id),              
    FOREIGN KEY (train_no)                
        REFERENCES train (train_no)
) ENGINE=InnoDB;

-- Insert dummy data into user_profiles table (including admin and regular users)
INSERT INTO user_profiles (address, first_name, image, last_name, phone_number) 
VALUES 
('123 Admin St', 'Admin', NULL, 'User', '9999999999'),
('Vijay Nagar, Indore', 'Rajesh', NULL, 'Verma', '9823456789'),
('Palasia Square, Indore', 'Sita', NULL, 'Joshi', '9876543210'),
('Rajwada, Indore', 'Amit', NULL, 'Dubey', '9998887777');

-- Insert dummy data into users table with roles USER and ADMIN
INSERT INTO users (username, password, role, session_id, profile_id) 
VALUES 
('admin', '$2a$10$FgOoOSJ.VPyNPx0HDE0rEODDZhxzY7VGNUJZxGGhGW0oAcHrMGNWC', 'ADMIN', NULL, 1),
('indore_user1', '$2a$10$FgOoOSJ.VPyNPx0HDE0rEODDZhxzY7VGNUJZxGGhGW0oAcHrMGNWC', 'USER', NULL, 2),
('indore_user2', '$2a$10$FgOoOSJ.VPyNPx0HDE0rEODDZhxzY7VGNUJZxGGhGW0oAcHrMGNWC', 'USER', NULL, 3),
('indore_staff', '$2a$10$FgOoOSJ.VPyNPx0HDE0rEODDZhxzY7VGNUJZxGGhGW0oAcHrMGNWC', 'STAFF', NULL, 4);

-- Insert dummy data into train table (Indore Metro routes)
INSERT INTO train (train_no, fare, from_station, seats_available, to_station, train_name) 
VALUES 
(201, 20.00, 'Rajwada', 200, 'Vijay Nagar', 'Blue Line Metro'),
(202, 25.00, 'Bhanwarkuan', 150, 'Airport', 'Airport Express'),
(203, 18.00, 'Bengali Square', 250, 'MG Road', 'MG Road Shuttle'),
(204, 22.00, 'Indore Junction', 180, 'Palasia', 'Green Line Metro'),
(205, 30.00, 'Super Corridor', 300, 'IT Park', 'Tech Corridor Metro');

-- Insert dummy data into ticket table
INSERT INTO ticket (ticket_id, journey_date, seat_type, seats_required, amount, ticket_status, transaction_id, train_no, user_id) 
VALUES 
('TICKET001', '2025-09-01', 'General', 2, 40.00, 'Booked', 'txn001', 201, 2),
('TICKET002', '2025-09-05', 'AC', 1, 25.00, 'Booked', 'txn002', 202, 3),
('TICKET003', '2025-09-10', 'General', 3, 54.00, 'Cancelled', 'txn003', 203, 2),
('TICKET004', '2025-09-15', 'AC', 2, 44.00, 'Booked', 'txn004', 204, 3),
('TICKET005', '2025-09-20', 'General', 4, 120.00, 'Booked', 'txn005', 205, 4);

-- Insert dummy data into api_ticket table
INSERT INTO api_ticket (ticket_id, journey_date, seat_type, seats_required, amount, ticket_status, transaction_id, train_no) 
VALUES 
('API_TICKET001', '2025-09-02', 'General', 1, 20.00, 'Booked', 'txn101', 201),
('API_TICKET002', '2025-09-06', 'AC', 2, 50.00, 'Booked', 'txn102', 202),
('API_TICKET003', '2025-09-11', 'General', 2, 36.00, 'Cancelled', 'txn103', 203),
('API_TICKET004', '2025-09-16', 'AC', 1, 22.00, 'Booked', 'txn104', 204),
('API_TICKET005', '2025-09-21', 'General', 3, 90.00, 'Booked', 'txn105', 205);
