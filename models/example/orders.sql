{{ 
config(
         materialized='table'
) 
}}
WITH source AS (
    SELECT
        order_id,
        order_date,
        customer_id,
        product_id,
        quantity
    FROM {{ source('raw', 'orders') }}
)
SELECT * FROM source
