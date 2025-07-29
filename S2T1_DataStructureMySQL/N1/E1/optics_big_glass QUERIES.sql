USE optics_big_glass;

SELECT g.brand, s.name AS supplier
FROM glasses g
JOIN supplier s on g.supplier_nif = s.nif;

SELECT c.name, r.name AS referred_by FROM costumer c
JOIN costumer r ON c.recomended_by = r.costumer_id;

SELECT c.name, s.name AS salled_by FROM costumer c
JOIN seller s ON c.seller_id = s.seller_id;

SELECT * FROM glasses;

SELECT c.name AS nombre_cliente, g.brand AS marca_gafas,
s.sale_date, g.price
FROM sale s
JOIN customer c ON s.customer_id = c.customer_id
JOIN glasses g ON s.glass_id = g.glass_id
WHERE s.sale_date BETWEEN "2025-01-01" AND "2025-12-31";

SELECT DISTINCT g.brand AS marca_gafas, w.name AS nombre_vendedor
FROM sale s
JOIN seller w ON s.seller_id = w.seller_id
JOIN glasses g ON s.glasses_id = g.glasses_id
WHERE YEAR(s.sale_date= = 2025)
AND w.name = "MariPili";

SELECT DISTINCT g.brand AS marca_gafas, w.name AS nombre_vendedor
FROM sale s
JOIN seller w ON s.seller_id = w.seller_id
JOIN glasses g ON s.glass_id = g.glass_id
WHERE YEAR(s.sale_date) = 2025
AND w.name = "MariPili";

SELECT DISTINCT sup.name AS nombre_proveedor
FROM sale s
JOIN glasses g ON s.glass_id = g.glass_id
JOIN supplier sup ON g.supplier_id = sup.supplier_id;