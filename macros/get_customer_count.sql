{% macro get_customer_count() %}
    SELECT COUNT(*) AS customer_count FROM {{ ref('customers') }}
{% endmacro %}
