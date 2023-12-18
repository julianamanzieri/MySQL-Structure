-- Lista de total de compras de um cliente 
SELECT customers.name, SUM(glasses.price) AS total_purchases
FROM customers
JOIN sales ON customers.id = sales.customers_id
JOIN glasses ON sales.glasses_id = glasses.id
GROUP BY customers.name;

-- Listar diferentes óculos que um funvionário vendeu durante 1 ano
SELECT employee.name, glasses.brand, COUNT(*)
FROM employee
JOIN sales ON employee.id = sales.employee_id
JOIN glasses ON sales.glasses_id = glasses.id
WHERE YEAR(sales.date_sales) = 2023
GROUP BY employee.name, glasses.brand;

-- Listar diferentes fornecedores que forncem óculos vendidos com sucesso 
SELECT suppliers.name, COUNT(sales.glasses_id) AS total_sales
FROM suppliers
JOIN glasses ON suppliers.id = glasses.supplier_id
JOIN sales ON glasses.id = sales.glasses_id
GROUP BY suppliers.name
ORDER BY total_sales DESC;

