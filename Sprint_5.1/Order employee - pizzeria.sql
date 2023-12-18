-- Listar quantos pedidos um determinado funcionário fez
SELECT d.id AS delivery_id, o.id AS order_id, o.date, o.time, COUNT(op.product_id) AS number_of_products
FROM delivery d
JOIN orders o ON d.order_id = o.id
JOIN order_products op ON o.id = op.order_id
WHERE d.employee_id = 3
GROUP BY d.id, o.id, o.date, o.time;