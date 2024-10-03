-- Create Cars Table
CREATE TABLE cars (
car_id VARCHAR(20) PRIMARY KEY,
manufacturer VARCHAR(50),
model VARCHAR(50),
rental_rate_per_day DECIMAL(6,2),
availability VARCHAR(11)
);
-- Create Customers Table
CREATE TABLE customers (
customer_id INT PRIMARY KEY,
first_name VARCHAR(255),
last_name VARCHAR(255),
email VARCHAR(255),
phone_number INT,
driver_license_number INT(255)
);
-- Create Rentals Table
CREATE TABLE rentals (
rental_id INT PRIMARY KEY,
car_id INT,
customer_id INT,
rental_start_date VARCHAR(20),
rental_end_date VARCHAR(20),
total_rental_amount INT,
staff_id INT
);
-- Create Payments Table
CREATE TABLE payments (
payment_id INT PRIMARY KEY,
rental_id INT,
payment_date INT,
amount INT,
payment_method INT,
staff_id INT
);
-- Create Employees
CREATE TABLE staffs (
staff_id INT PRIMARY KEY,
first_name VARCHAR(255),
last_name VARCHAR(255),
position VARCHAR(255),
contact_info INT
);

-- Insert into cars table
INSERT INTO cars (car_id, manufacturer, model, rental_rate_per_day, availability) VALUES
(1, 'Daewoo', 'Nubira', 800.23, 'available'),
(2, 'Honda', 'Ridgeline', 800.33, 'unavailable'),
(3, 'Jaguar', 'XJ', 999.99, 'available'),
(4, 'Kia', 'Sedona', 500.57, 'unavailable'),
(5, 'Infiniti', 'J', 500.59, 'available'),
(6, 'Toyota', 'Fortuner', 1000.6, 'unavailable'),
(7, 'Buick', 'Park Avenue', 1000.28, 'available'),
(8, 'Volvo', '240', 1000.32, 'unavailable'),
(9, 'Mazda', 'Protege', 600.45, 'available'),
(10, 'GMC', 'Sierra 3500', 1000.91, 'unavailable'),
(11, 'Chrysler', 'PT Cruiser', 1300.71, 'available'),
(12, 'Ford', 'E150', 1011.42, 'unavailable'),
(13, 'Toyota', 'Highlander', 1073.72, 'available'),
(14, 'Honda', 'Civic', 600.93, 'unavailable'),
(15, 'Toyota', 'Vios', 600.43, 'available'),
(16, 'Buick', 'LeSabre', 900.46, 'unavailable'),
(17, 'Lincoln', 'Navigator', 1500.16, 'available'),
(18, 'Ford', 'Taurus', 1500.49, 'unavailable'),
(19, 'Jeep', 'Wrangler', 1500.77, 'available'),
(20, 'Mazda', 'MX-5', 1500.1, 'unavailable');
-- Insert into customers
INSERT INTO customers (customer_id, first_name, last_name, email, phone_number,
driver_license_number) VALUES
(1, 'Calhoun', 'Franklyn', 'cfranklyn0@msn.com', '09123456789', 'A1234567890'),
(2, 'Shirlene', 'Gerkens', 'sgerkens1@printfriendly.com', '09234567890', 'B2345678901'),
(3, 'Gerladina', 'Obbard', 'gobbard2@geocities.com', '09345678901', 'C3456789012'),
(4, 'Andria', 'Gress', 'agress3@google.nl', '09456789012', 'D4567890123'),
(5, 'Dot', 'Enric', 'denric4@reuters.com', '09567890123', 'E5678901234'),
(6, 'Alina', 'Cronkshaw', 'acronkshaw5@nifty.com', '09678901234', 'F6789012345'),
(7, 'Edsel', 'Rubinsky', 'erubinsky6@ibm.com', '09789012345', 'G7890123456'),
(8, 'Ernestine', 'Druitt', 'edruitt7@flickr.com', '09890123456', 'H8901234567'),
(9, 'Jeremie', 'Magnar', 'jmagnar8@oaic.gov.au', '09901234567', 'I9012345678'),
(10, 'Warden', 'Murrhardt', 'wmurrhardt9@mlb.com', '09012345678', 'J0123456789'),
(11, 'Esteban', 'Perview', 'eperviewa@lulu.com', '09134567890', 'K1234567891'),
(12, 'Kakalina', 'Peart', 'kpeartb@ucsd.edu', '09245678901', 'L2345678902'),
(13, 'Barrie', 'Scanlon', 'bscanlonc@oracle.com', '09356789012', 'M3456789013'),
(14, 'Edward', 'Ranvoise', 'eranvoised@buzzfeed.com', '09467890123', 'N4567890124'),
(15, 'Stacey', 'Plank', 'splanke@stumbleupon.com', '09578901234', 'O5678901235'),
(16, 'Guillermo', 'Amoore', 'gamooref@domainmarket.com', '09689012345', 'P6789012346'),
(17, 'Crista', 'Olennikov', 'colennikovg@earthlink.net', '09790123456', 'Q7890123457'),
(18, 'Irwin', 'Raggatt', 'iraggatth@infoseek.co.jp', '09801234567', 'R8901234568'),
(19, 'Lalo', 'Janicijevic', 'ljanicijevici@jimdo.com', '09912345678', 'S9012345679'),
(20, 'Tamarra', 'Leyden', 'tleydenj@sohu.com', '09023456789', 'T0123456780');
-- Insert into rentals
INSERT INTO rentals (rental_id, car_id, customer_id, rental_start_date, rental_end_date,
total_rental_amount, staff_id) VALUES
(1, 1, 1, '09-01-2024', '09-02-2024', 7110.45, 1),
(2, 4, 2, '09-05-2024', '09-06-2024', 5200.12, 2),
(3, 3, 3, '09-10-2024', '09-11-2024', 6999.99, 3),
(4, 4, 4, '09-15-2024', '09-16-2024', 6505.95, 4),
(5, 6, 5, '09-20-2024', '09-22-2024', 7310.59, 5),
(6, 6, 6, '09-25-2024', '09-27-2024', 8704.54, 3),
(7, 6, 7, '09-30-2024', '10-03-2024', 7992.96, 2),
(8, 8, 8, '10-02-2024', '10-09-2024', 7900.77, 1),
(9, 9, 9, '10-07-2024', '10-14-2024', 6510.45, 4),
(10, 10, 10, '10-10-2024', '10-11-2024', 7101.92, 5),
(11, 12, 11, '10-15-2024', '10-21-2024', 6827.81, 1),
(12, 3, 12, '10-20-2024', '10-27-2024', 5950.48, 2),
(13, 2, 13, '10-25-2024', '10-31-2024', 7403.74, 4),
(14, 14, 14, '10-30-2024', '11-01-2024', 5705.18, 3),
(15, 11, 15, '11-01-2024', '11-08-2024', 6108.57, 2),
(16, 10, 16, '11-05-2024', '11-06-2024', 7910.46, 5),
(17, 2, 17, '11-10-2024', '11-12-2024', 6504.54, 2),
(18, 1, 18, '11-15-2024', '11-18-2024', 7558.19, 4),
(19, 19, 19, '11-20-2024', '11-23-2024', 7408.45, 1),
(20, 20, 20, '11-25-2024', '11-30-2024', 6302.89, 3);
-- Insert into payments
INSERT INTO payments (payment_id, rental_id, payment_date, amount, payment_method,
staff_id) VALUES
(1, 1, '09-02-2024', 7210.5, 'Cash', 1),
(2, 2, '09-07-2024', 5320.75, 'Cash', 2),
(3, 3, '09-12-2024', 7050.2, 'Gcash', 3),
(4, 4, '09-18-2024', 6580.8, 'Cash', 3),
(5, 5, '09-24-2024', 7375.3, 'Gcash', 5),
(6, 6, '09-28-2024', 8650.45, 'Cash', 2),
(7, 7, '10-05-2024', 8015.1, 'PayPal', 2),
(8, 8, '10-08-2024', 7930.6, 'Cash', 2),
(9, 9, '10-13-2024', 6550.9, 'Gcash', 3),
(10, 10, '10-17-2024', 7155.3, 'Gcash', 4),
(11, 11, '10-19-2024', 6850.4, 'Cash', 1),
(12, 12, '10-24-2024', 6050.75, 'Gcash', 3),
(13, 13, '10-29-2024', 7405.5, 'Cash', 2),
(14, 14, '11-03-2024', 5785.2, 'PayPal', 4),
(15, 15, '11-07-2024', 6200.1, 'PayPal', 3),
(16, 16, '11-09-2024', 7985.4, 'Gcash', 2),
(17, 17, '11-14-2024', 6555.25, 'PayPal', 1),
(18, 18, '11-20-2024', 7600.35, 'Gcash', 4),
(19, 19, '11-26-2024', 7455.8, 'Cash', 3),
(20, 20, '11-29-2024', 6280.15, 'Cash', 5);
-- Insert into employees
INSERT INTO staff (staff_id, first_name, last_name, position, contact_info) VALUES
(1, 'Dallas', 'Illston', 'Manager', '09123456789'),
(2, 'Oona', 'Le Brom', 'Accounting', '09234567890'),
(3, 'Shelley', 'Igoe', 'Fleet Maintenance Coordinator', '09345678901'),
(4, 'Agna', 'Lazonby', 'Customer Service Representative', '09456789012'),
(5, 'Welby', 'Hargreave', 'Customer Service Representative', '09567890123');
