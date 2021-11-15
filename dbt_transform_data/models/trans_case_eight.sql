
{{ config(materialized='table') }}


SELECT 
    "boundaries_zip_codes",
    count("boundaries_zip_codes") 
FROM 
    {{ source('public', 'crime_data')}}
GROUP BY  
    "boundaries_zip_codes"