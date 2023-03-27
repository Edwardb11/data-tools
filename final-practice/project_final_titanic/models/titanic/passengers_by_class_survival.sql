-- Para clasificar el número de pasajeros por clase de viaje que sobrevivieron y no sobrevivieron

{{ config(materialized='table') }}

with raw_data as (
    select
        pclass,
        cast(survived as int) as survived
    from {{ ref('dbt_supersettrain') }}
)
select
    pclass,
    count(*) as total_passengers,
    sum(case when survived = 1 then 1 else 0 end) as total_survived,
    sum(case when survived = 0 then 1 else 0 end) as total_not_survived
from raw_data
group by pclass;