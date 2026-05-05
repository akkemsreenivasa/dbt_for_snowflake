{{ 
config(
    materialized='table'
) 
}}
SELECT
    o.order_id,
    o.order_date,
    c.customer_id,
    c.customer_name,
    c.email,
    p.product_id,
    p.product_name,
    p.price,
    o.quantity,
    (o.quantity * p.price) AS total_order_value
FROM raw_db.raw_schema.orders o
JOIN raw_db.raw_schema.customers c
    ON o.customer_id = c.customer_id
JOIN raw_db.raw_schema.products p
    ON o.product_id = p.product_id

