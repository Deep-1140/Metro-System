-- First clear existing train data
DELETE FROM api_ticket;
DELETE FROM ticket;
DELETE FROM train;

-- Insert Indore Metro routes
INSERT INTO train (train_no, fare, from_station, seats_available, to_station, train_name) 
VALUES 
-- Line 1 (Yellow Line): Gandhi Nagar to Super Corridor
(101, 30.00, 'Gandhi Nagar', 300, 'Super Corridor', 'Indore Yellow Line'),
(102, 20.00, 'Gandhi Nagar', 300, 'Robot Square', 'Indore Yellow Line'),
(103, 20.00, 'Robot Square', 300, 'Bhanwarkuan', 'Indore Yellow Line'),
(104, 25.00, 'Bhanwarkuan', 300, 'MR 10', 'Indore Yellow Line'),
(105, 25.00, 'MR 10', 300, 'Super Corridor', 'Indore Yellow Line'),

-- Line 2 (Blue Line): MR 10 to Rajwada
(201, 30.00, 'MR 10', 300, 'Rajwada', 'Indore Blue Line'),
(202, 20.00, 'MR 10', 300, 'Vijay Nagar', 'Indore Blue Line'),
(203, 20.00, 'Vijay Nagar', 300, 'LIG Square', 'Indore Blue Line'),
(204, 25.00, 'LIG Square', 300, 'Palasia', 'Indore Blue Line'),
(205, 25.00, 'Palasia', 300, 'Rajwada', 'Indore Blue Line'),

-- Line 3 (Green Line): Airport to Railway Station
(301, 35.00, 'Indore Airport', 300, 'Railway Station', 'Indore Green Line'),
(302, 20.00, 'Indore Airport', 300, 'Bengali Square', 'Indore Green Line'),
(303, 25.00, 'Bengali Square', 300, 'Geeta Bhawan', 'Indore Green Line'),
(304, 25.00, 'Geeta Bhawan', 300, 'Navlakha', 'Indore Green Line'),
(305, 20.00, 'Navlakha', 300, 'Railway Station', 'Indore Green Line');

-- Insert some sample bookings for these routes
INSERT INTO ticket (ticket_id, journey_date, seat_type, seats_required, amount, ticket_status, transaction_id, train_no, user_id) 
VALUES 
('TICKET001', '2025-08-28', 'Standard', 2, 60.00, 'Booked', 'txn001', 101, 1),
('TICKET002', '2025-08-28', 'Standard', 1, 20.00, 'Booked', 'txn002', 202, 2),
('TICKET003', '2025-08-29', 'Standard', 3, 75.00, 'Booked', 'txn003', 303, 1);

-- Insert some sample API bookings
INSERT INTO api_ticket (ticket_id, journey_date, seat_type, seats_required, amount, ticket_status, transaction_id, train_no) 
VALUES 
('API_TICKET001', '2025-08-28', 'Standard', 1, 30.00, 'Booked', 'txn101', 101),
('API_TICKET002', '2025-08-28', 'Standard', 2, 40.00, 'Booked', 'txn102', 202),
('API_TICKET003', '2025-08-29', 'Standard', 2, 50.00, 'Booked', 'txn103', 303);
