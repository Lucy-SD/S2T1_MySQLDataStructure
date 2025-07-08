CREATE DATABASE IF NOT EXISTS optics_big_glass;
USE optics_big_glass;

CREATE TABLE address(
address_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
street VARCHAR(50) NOT NULL,
number VARCHAR(10) NOT NULL,
floor VARCHAR(10),
door VARCHAR(10),
city VARCHAR(50) NOT NULL,
postal_code VARCHAR(10) NOT NULL,
country VARCHAR(50) NOT NULL
);

CREATE TABLE supplier(
supplier_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
address_id INT NOT NULL,
phone VARCHAR(20) NOT NULL,
fax VARCHAR(20),
nif VARCHAR(20) NOT NULL UNIQUE,
FOREIGN KEY (address_id) REFERENCES address(address_id)
);


CREATE TABLE glasses(
glass_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
supplier_id INT NOT NULL,
brand VARCHAR(50) NOT NULL,
right_graduation DECIMAL(5,2) NOT NULL,
left_graduation DECIMAL(5,2) NOT NULL,
frame_type ENUM ('flotante', 'pasta', 'metálica'),
frame_colour VARCHAR(20) NOT NULL,
glass_colour VARCHAR(20) NOT NULL,
price DECIMAL(6,2),
FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);

CREATE TABLE seller(
seller_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL
);

CREATE TABLE customer(
customer_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
postal_code VARCHAR(20) NOT NULL,
phone VARCHAR(20) NOT NULL,
email VARCHAR(50),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
recomended_by INT,
seller_id INT,
FOREIGN KEY (recomended_by) REFERENCES customers (customer_id),
FOREIGN KEY (seller_id) REFERENCES sellers (seller_id)
);

CREATE TABLE sale(
sale_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
seller_id INT,
customer_id INT,
glass_id INT,
sale_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (seller_id) REFERENCES sellers(seller_id),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
FOREIGN KEY (glass_id) REFERENCES glasses(glass_id)
);