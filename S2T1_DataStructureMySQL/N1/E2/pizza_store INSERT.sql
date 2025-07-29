USE pizza_store;

INSERT INTO province (name) VALUES
("Barcelona"),
("Girona"),
("Lleida"),
("Tarragona");

INSERT INTO city (name, province_id) VALUES
("Barcelona", 1),
("Cornellà de Llobregat", 1),
("Girona", 2),
("Lleida", 3),
("Tarragona", 4);

INSERT INTO store(address, postal_code, city_id) VALUES
("Ramon i Cajal 15", "08940", 1),
("Perez i Gomez 71", "08491", 2),
("Av. del Riu 92", "08122", 3),
("Carrer del Sol 111", "08333", 4);

INSERT INTO worker(store_id, name, lastname, nif, phone, area) VALUES
(1, "Juana", "Dearco", "X1234678", "+34651478254", "delivery"),
(2, "Felipe", "Elfeo", "78541256G", "+34741545625", "cocina"),
(3, "Eliana", "Marveo", "54879635P", "+55678965485", "delivery"),
(4, "Jose", "Nabola", "87693524L", "+3341258768", "delivery");

INSERT INTO pizza_category(name) VALUES
("Hits del Verano"),
("Las mejores para Invierno"),
("Las que nos gustan a tod@s"),
("Algo diferente");

INSERT INTO product(type, name, price, pizza_category) VALUES
("pizza", "Hawaiana", 12.25, 1),
("pizza", "Barbacoa", 11.75, 2),
("pizza", "Margarita", 8.75, 3),
("pizza", "La de Tommy", 15.45, 4);

INSERT INTO product(type, name, price) VALUES
("hamburguesa", "La Clásica", 11.80),
("hamburguesa", "La Completa", 16.35),
("bebida", "Refresco", 2.50),
("bebida", "Cerveza", 2.50);

INSERT INTO client(name, lastname, address, city_id) VALUES
("Pepi", "Gonzalez", "C/LLuna 127", 2);

INSERT INTO client(name, lastname, postal_code, phone) VALUES
("Tommy", "Grindo", "08016", "+34852620145");

INSERT INTO client (name, lastname, address, postal_code, city_id, phone) VALUES
("Sole", "Grishio", "Av. Libertad 17", "08641", 3, "+34532386547"),
("Rosa", "Metra", "C/Siempreviva 57", "08412", 4, "+3475125683");

INSERT INTO new_order(client_id, store_id, type, total_price, deliverer_id, delivery_time) VALUES 
(1, 1, "delivery", 12.25, 1, "25-06-28 12.30"),
(2, 2, "take away", 14.30, null, null);

INSERT INTO new_order(client_id, store_id, type, total_price, deliverer_id, delivery_time) VALUES
(3, 3, "take away", 21.50, null, null),
(4, 4, "delivery", 21.75, 4, "25-06-28 13.15");

INSERT INTO order_details (order_id, product_id, quantity) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1);



