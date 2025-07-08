CREATE DATABASE IF NOT EXISTS pizza_store;
USE pizza_store;

CREATE TABLE province(
province_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL
);

CREATE TABLE city(
city_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
province_id INT NOT NULL,
FOREIGN KEY (province_id) REFERENCES province(province_id)
);

CREATE TABLE store(
store_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
address VARCHAR(100) NOT NULL,
postal_code VARCHAR(10) NOT NULL,
city_id INT NOT NULL,
FOREIGN KEY (city_id) REFERENCES city(city_id)
);

CREATE TABLE worker(
worker_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
store_id INT NOT NULL,
name VARCHAR(50) NOT NULL,
lastname VARCHAR(50) NOT NULL,
nif VARCHAR(20) NOT NULL UNIQUE,
phone VARCHAR(20) NOT NULL,
area ENUM ('cocina', 'delivery') NOT NULL,
FOREIGN KEY (store_id) REFERENCES store(store_id)
);


CREATE TABLE pizza_category(
category_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50)
);


CREATE TABLE product(
product_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
type ENUM ('hamburguesa', 'pizza', 'bebida') NOT NULL,
name VARCHAR(20) NOT NULL,
description TEXT(150),
image BLOB,
price  DECIMAL(6,2) NOT NULL,
pizza_category INT,
FOREIGN KEY (pizza_category) REFERENCES pizza_category(category_id)
);

CREATE TABLE client(
client_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
lastname VARCHAR(50) NOT NULL,
address VARCHAR(100),
postal_code VARCHAR(10),
city_id INT,
phone VARCHAR(20),
FOREIGN KEY (city_id) REFERENCES city(city_id)
);

CREATE TABLE new_order(
order_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
client_id INT NOT NULL,
store_id INT NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
type ENUM ('take away', 'delivery'),
total_price DECIMAL (8,2),
deliverer_id INT,
delivery_time DATETIME,
FOREIGN KEY (client_id) REFERENCES client(client_id),
FOREIGN KEY (store_id) REFERENCES store(store_id),
FOREIGN KEY (deliverer_id) REFERENCES worker(worker_id)
);

CREATE TABLE order_details(
order_id INT,
product_id INT,
quantity INT,
FOREIGN KEY (order_id) REFERENCES new_order(order_id),
FOREIGN KEY (product_id) REFERENCES product(product_id)
);










