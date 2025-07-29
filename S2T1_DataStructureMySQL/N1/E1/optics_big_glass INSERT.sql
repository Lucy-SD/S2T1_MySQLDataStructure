USE optics_big_glass;

INSERT INTO address (street, number, floor, door, city, postal_code, country) VALUES
("Carrer Santiago", "26", "2", "A", "Barcelona", "08041", "España"),
("Carrer Broc", "77", "PB", null, "Barcelona", "08015", "España");

INSERT INTO supplier (nif, name, address_id, phone, fax) VALUES
("1234567X", "OptiLens", "1", "+34631245795", null),
("2547863Y", "MásVisión", "2", "+3475815263", null);


INSERT INTO glasses (supplier_id, brand, right_graduation, left_graduation, frame_type, frame_colour, glass_colour, price) VALUES
("1", "Gafotas", "+0.5", "+0.7", "metálica", "azul", "sin color", "187.21"),
("2", "AlSol", "0.0", "0.0", "pasta", "negro", "violeta", "123.57"),
("1", "Gafotas", "-2.2", "-1.8", "flotante", "gris", "ambar", "147.15");

INSERT INTO seller (name) VALUES
("Luis Alfonso"),
("MariPili");

INSERT INTO customer (name, postal_code, phone, seller_id) VALUES
("Loli", "08041", "+347851245", "1"),
("Pepi", "08033", "+34621475869", "2");

INSERT INTO customer (name, postal_code, phone, recomended_by, seller_id) VALUES
("Jose", "08097", "+3457891245", "1", "2");

INSERT INTO sale (seller_id, customer_id, glass_id) VALUES
(1, 1, 1),
(2, 2, 2),
(2, 3, 1);