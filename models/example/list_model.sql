{% set list_l = ['I', 'am', 'Sreenivas'] %}
select
    '{{ list_l[0] }} {{ list_l[1] }} {{ list_l[2] }}' as sentence,
    {{ list_l | length }} as word_count