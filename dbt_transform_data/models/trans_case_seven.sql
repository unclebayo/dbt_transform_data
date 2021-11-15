
{{ config(materialized='table') }}


SELECT 
    "community_area",
    count("community_area") 
FROM 
    {{ source('public', 'crime_data')}}
GROUP BY  
    "community_area"