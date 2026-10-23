SELECT c.customer_id,c.customer_name 
FROM customers c 
WHERE EXISTS (
SELECT 1 
FROM orders o 
WHERE o.customer_id = c.customer_id
);

SELECT c.customer_id,c.customer_name 
FROM customers c 
WHERE NOT EXISTS(
SELECT 1 
FROM orders o 
WHERE c.customer_id = o.customer_id
);

SELECT p.product_id, p.product_name 
FROM products p 
WHERE EXISTS(
SELECT 1 
FROM orderitems o 
WHERE o.product_id = p.product_id
);

SELECT p.product_id,p.product_name 
FROM products p 
WHERE NOT EXISTS(
SELECT 1 FROM orderitems o 
WHERE o.product_id = p.product_id
);







