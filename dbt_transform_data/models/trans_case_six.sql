
{{ config(materialized='table') }}


SELECT 
    "location",
    count("location") 
FROM 
    {{ source('public', 'crime_data')}}
GROUP BY  
    "location"