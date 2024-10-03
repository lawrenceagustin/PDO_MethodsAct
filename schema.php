--Create Cars Table
CREATE TABLE cars (
car_id VARCHAR(20) PRIMARY KEY,
manufacturer VARCHAR(50),
model VARCHAR(50),
rental_rate_per_day DECIMAL(6,2),
availability VARCHAR(11)
);
--Create Customers Table
CREATE TABLE customers (
customer_id INT PRIMARY KEY,
first_name VARCHAR(255),
last_name VARCHAR(255),
email VARCHAR(255),
phone_number INT,
driver_license_number INT(255)
);
--Create Rentals Table
CREATE TABLE rentals (
rental_id INT PRIMARY KEY,
car_id INT,
customer_id INT,
rental_start_date VARCHAR(20),
rental_end_date VARCHAR(20),
total_rental_amount,
staff_id INT
);
--Create Payments Table
CREATE TABLE payments (
payment_id INT PRIMARY KEY,
rental_id INT,
payment_date INT,
amount INT,
payment_method INT,
staff_id INT
);
--Create Employees
CREATE TABLE staffs (
staff_id INT PRIMARY KEY,
first_name VARCHAR(255),
last_name VARCHAR(255),
position VARCHAR(255),
contact_info INT
);
