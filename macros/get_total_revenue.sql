{% macro get_total_revenue() %}
    SELECT 
        SUM(o.quantity * p.price) AS total_revenue
    FROM {{ ref('orders') }} o
    JOIN {{ ref('products') }} p
    ON o.product_id = p.product_id
{% endmacro %}
