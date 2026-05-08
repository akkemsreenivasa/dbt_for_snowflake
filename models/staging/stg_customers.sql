{{ config(materialized='table') }}

SELECT
    customer_id,
    UPPER(TRIM(customer_name)) AS customer_name,
    LOWER(TRIM(email)) AS email
FROM {{ source('raw', 'customers') }}
WHERE customer_id IS NOT NULL
