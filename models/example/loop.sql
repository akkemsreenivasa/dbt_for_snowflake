{% set flavors = ['chocolate', 'vanilla', 'strawberry'] %}

select 'Today I want {{ flavors[0] }} ice cream!' as message

{% for i in flavors[1:] %}
union all
select 'Today I want {{ i }} ice cream!' as message
{% endfor %}