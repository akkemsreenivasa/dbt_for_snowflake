{{ 
config(
         materialized='table'
) 
}}
WITH source AS (
    SELECT
        	product_id,
    	product_name,
    	price
    FROM {{ source('raw', 'products') }}
)
SELECT * FROM source
