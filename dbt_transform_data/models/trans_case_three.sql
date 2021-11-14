
{{ config(materialized='table') }}


SELECT 
    "domestic",
    count("domestic") 
FROM 
    {{ source('public', 'crime_data')}}
GROUP BY  
    "domestic"