{{ config(materialized='table') }}

SELECT
    product_id,
    INITCAP(TRIM(product_name)) AS product_name,
    ROUND(price, 2) AS price
FROM {{ source('raw', 'products') }}
WHERE price > 0

