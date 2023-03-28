-- Para clasificar el número de pasajeros por sexo que sobrevivieron y no sobrevivieron
{{ config(materialized='table') }}

SELECT
    sex,
    COUNT(*) AS total_passengers,
    SUM(CAST(survived AS INTEGER)) AS total_survived,
    SUM(CASE WHEN survived = '0' THEN 1 ELSE 0 END) AS total_not_survived
FROM public.dbt_supersettrain
GROUP BY sex

/*
Esta consulta SQL cuenta el número total de pasajeros y el número total de 
sobrevivientes y no sobrevivientes por sexo a partir de la tabla "dbt_supersettrain"
en la base de datos pública. Los resultados se agrupan por sexo y se muestran en 
la consulta utilizando las funciones de agregación COUNT y SUM. El resultado de 
 a consulta proporciona información valiosa sobre la proporción de pasajeros que 
 sobrevivieron en función de su sexo.
*/