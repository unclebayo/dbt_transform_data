
{{ config(materialized='table') }}


SELECT 
    "district",
    count("district") 
FROM 
    {{ source('public', 'crime_data')}}
GROUP BY  
    "district"