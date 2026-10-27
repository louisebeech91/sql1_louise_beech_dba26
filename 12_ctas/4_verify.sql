SELECT * FROM customers;

SELECT * FROM products;

SELECT * FROM orders;

SELECT * FROM orderlines;

--recreate the flat table
SELECT
    o.order_id,
    o.order_date,
    c.customer_name,
    c.customer_city,
    p.product_name AS product,
    p.product_price,
    ol.qty
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
JOIN orderlines ol ON ol.order_id = o.order_id
JOIN products p ON p.product_id = ol.product_id
ORDER BY o.order_id;

SELECT * FROM orders_flat;

EXIT
