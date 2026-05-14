{% set temp = 90 %}
select
    {% if temp > 70 and temp < 80 %}
        'I need ice cream' as message
    {% elif temp > 80 %}
        'I need ice' as message
    {% else %}
        'I need nothing' as message
    {% endif %}