{% macro get_order_count() %}
    SELECT COUNT(*) AS order_count FROM {{ ref('orders') }}
{% endmacro %}
