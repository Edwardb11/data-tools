--Para clasificar el número de pasajeros por edad que sobrevivieron y no sobrevivieron
{{ config(materialized='table') }}


SELECT 
    CASE
        WHEN age::float < 18 THEN 'child'
        WHEN age::float >= 18 AND age::float < 65 THEN 'adult'
        ELSE 'senior'
    END AS age_group,
    COUNT(*) AS total_passengers,
    SUM(CASE WHEN survived = '1' THEN 1 ELSE 0 END) AS total_survived,
    SUM(CASE WHEN survived = '0' THEN 1 ELSE 0 END) AS total_not_survived
FROM 
    public.dbt_supersettrain
GROUP BY 
    age_group

/* 
La consulta devuelve el número total de pasajeros, el número total de sobrevivientes y el número total de no sobrevivientes agrupados por grupos de edad (niño, adulto y mayor). Se utiliza la función CASE para categorizar los pasajeros en los grupos de edad y la cláusula GROUP BY para agruparlos por grupo de edad.
 */