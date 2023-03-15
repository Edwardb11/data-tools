-- DOCUMENTACION
   -- Este modelo utiliza la directiva "materialized=table" para crear una nueva tabla materializada en la base de datos.
   -- La tabla contendrá los registros únicos de la tabla "original_data". para eso es el DISTINCT
--

{{ config(materialized='table') }}

SELECT DISTINCT ON (survived, passengerid) *
FROM tic_gs_2019_0823.titanic
