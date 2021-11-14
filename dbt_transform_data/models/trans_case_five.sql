
{{ config(materialized='table') }}


SELECT 
    "location_description",
    count("location_description") 
FROM 
    {{ source('public', 'crime_data')}}
GROUP BY  
    "location_description"