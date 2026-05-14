{% set person = {
    'name' : 'Sreenivas',
    'Job' : 'Trainer'
}%}
select
    '{{ person["name"] }}'  as name,
    '{{ person["Job"] }}'   as job
