WITH customer_count AS (
    {{ get_customer_count() }}
),
order_count AS (
    {{ get_order_count() }}
),
total_revenue AS (
    {{ get_total_revenue() }}
)

SELECT
    c.customer_count,
    o.order_count,
    t.total_revenue
FROM customer_count c
JOIN order_count o
ON 1 = 1
JOIN total_revenue t
ON 1 = 1

