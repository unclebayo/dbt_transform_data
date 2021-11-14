
{{ config(materialized='table') }}


SELECT 
    "primary_type",
    count("primary_type") 
FROM 
    {{ source('public', 'crime_data')}}
GROUP BY  
    "primary_type"