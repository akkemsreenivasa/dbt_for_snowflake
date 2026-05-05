{{ 
config(
         materialized='table'
) 
}}
WITH source AS (
    SELECT
        customer_id,
        customer_name,
        email
    FROM {{ source('raw', 'customers') }}
)
SELECT * FROM source
