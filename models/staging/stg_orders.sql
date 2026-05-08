{{ config(materialized='table') }}

SELECT
    order_id,
    CAST(order_date AS DATE) AS order_date,
    customer_id,
    product_id,
    quantity,
    CURRENT_TIMESTAMP() AS load_timestamp
FROM {{ source('raw', 'orders') }}
WHERE quantity > 0
