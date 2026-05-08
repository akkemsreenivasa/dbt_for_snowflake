{{ config(materialized='table') }}

WITH source AS (
    SELECT
        o.customer_id,
        c.customer_name,
        COUNT(o.order_id) AS total_orders,
        SUM(p.price * o.quantity) AS total_spent
    FROM {{ ref('stg_orders') }} AS o
    JOIN {{ ref('stg_customers') }} AS c 
        ON o.customer_id = c.customer_id
    JOIN {{ ref('stg_products') }} AS p 
        ON o.product_id = p.product_id
    GROUP BY 
        o.customer_id, 
        c.customer_name
)

SELECT * FROM source
