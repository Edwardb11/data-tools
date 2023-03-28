-- Para clasificar el número de pasajeros por clase de viaje que sobrevivieron y no sobrevivieron

{{ config(materialized='table') }}
SELECT
    pclass,
    COUNT(*) AS total_passengers,
    SUM(CAST(survived AS INTEGER)) AS total_survived,
    SUM(CASE WHEN survived = '0' THEN 1 ELSE 0 END) AS total_not_survived
FROM public.dbt_supersettrain
GROUP BY pclass

/*
Esta consulta cuenta el número total de pasajeros, el número total de sobrevivientes 
y el número total de no sobrevivientes agrupados por clase de pasajero (pclass) en la 
tabla public.dbt_supersettrain. La función SUM se utiliza para sumar las columnas de
 survived para calcular el número total de sobrevivientes y no sobrevivientes. 
 La expresión CASE se utiliza para contar el número de no sobrevivientes. La consulta 
utiliza la cláusula GROUP BY para agrupar los resultados por clase de pasajero.
*/




