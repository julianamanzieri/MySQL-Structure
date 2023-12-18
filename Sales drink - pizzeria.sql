-- Listar quantos produtos do tipo Drink foram vendidos em uma determinada localidade
SELECT SUM(op.quantity) AS total_drinks
FROM order_products op
JOIN orders o ON op.order_id = o.id
JOIN products p ON op.product_id = p.id
JOIN store s ON o.store_id = s.id
WHERE p.name = 'Drink' AND s.city = 'Madrid';





