
{{ config(materialized='table') }}


SELECT 
    "arrest",
    count("arrest") 
FROM 
    {{ source('public', 'crime_data')}}
GROUP BY  
    "arrest"