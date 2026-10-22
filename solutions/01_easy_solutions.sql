Select c.customer_id,c.customer_name FROM customers c 
Where exists (
Select 1 From orders o where o.customer_id = c.customer_id
);

Select c.customer_id,c.customer_name from customers c where not exists(
select 1 from orders o where c.customer_id = o.customer_id);

Select p.product_id, p.product_name from products p where exists(
Select 1 from orderitems o where o.product_id = p.product_id);

select p.product_id,p.product_name from products p where not exists(
Select 1 from orderitems o where o.product_id = p.product_id);







