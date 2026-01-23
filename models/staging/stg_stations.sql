
{{ config(materialized='view') }}

select
    station_id,
    name as station_name,
    address,
    location,
    status,
    property_type
from {{ source('austin_bikeshare', 'bikeshare_stations') }}
