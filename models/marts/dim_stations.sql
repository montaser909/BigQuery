{{ config(materialized='table') }}

with stations as (
    select * from {{ ref("stg_stations")}}


), 

final as (
    select 
        station_id,
        station_name,
        location,
        status,
        case
            when status = "active" then true 
            else false 
            end as is_active
    from stations
)

select * from final