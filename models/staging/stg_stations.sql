
with 

source as (

    select * from {{ source('austin_bikeshare', 'bikeshare_stations') }}

),
renamed as (
select
    station_id,
    name as station_name,
    address,
    location,
    status,
    property_type
from source )

select * from renamed
