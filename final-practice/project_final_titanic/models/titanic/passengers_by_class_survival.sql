-- Para clasificar el número de pasajeros por clase de viaje que sobrevivieron y no sobrevivieron

{{ config(materialized='table') }}
SELECT
    pclass,
    COUNT(*) AS total_passengers,
    SUM(CAST(survived AS INTEGER)) AS total_survived,
    SUM(CASE WHEN survived = '0' THEN 1 ELSE 0 END) AS total_not_survived
FROM public.dbt_supersettrain
GROUP BY pclass

/* SELECT: indica que se va a realizar una consulta de datos.
pclass: es la columna que se va a seleccionar para mostrar en la consulta.
COUNT(*) AS total_passengers: cuenta el número total de registros y lo renombra como total_passengers.
SUM(CAST(survived AS INTEGER)) AS total_survived: suma la columna survived que se convierte a tipo INTEGER y lo renombra como total_survived.
SUM(CASE WHEN survived = '0' THEN 1 ELSE 0 END) AS total_not_survived: suma los registros en los que survived es igual a '0' y lo renombra como total_not_survived.
FROM public.dbt_supersettrain: especifica la tabla dbt_supersettrain ubicada en el esquema público de la base de datos.
GROUP BY pclass: agrupa los resultados por valores únicos en la columna pclass.
*/




