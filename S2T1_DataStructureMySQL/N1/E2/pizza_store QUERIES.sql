USE pizza_store;

SELECT ci.name AS nombre_ciudad, p.name AS nombre_producto, od.quantity
FROM new_order o
JOIN client c ON o.client_id = c.client_id
JOIN city ci ON  c.city_id = ci.city_id
JOIN order_details od ON o.order_id = od.order_id
JOIN product p ON od.product_id = p.product_id
WHERE p.type = "pizza";

SELECT o.order_id, o.created_at,
CONCAT (w.name, " ", w.lastname) AS deliverer,
o.delivery_time FROM new_order o
JOIN worker w ON o.deliverer_id = w.worker_id
WHERE o.type = "delivery";

SELECT p.name AS nombre_pizza, pc.name AS categoria_pizza
FROM product p
JOIN pizza_category pc ON p.product_id = pc.category_id;

SELECT w.name AS trabajador_nombre, w.lastname AS apellido,
COUNT(o.order_id) AS cantidad_envios
FROM worker w
LEFT JOIN new_order o ON w.worker_id = o.deliverer_id
GROUP BY w.worker_id;
