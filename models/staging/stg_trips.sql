{{ config(materialized='view')}}

SELECT
  bike_id,
  bike_type,
  duration_minutes as trip_duration,
  end_station_id,
  end_station_name as end_station,
  start_station_id,
  start_station_name as start_station,
  start_time as trip_start,
  subscriber_type as user_type,
  trip_id
FROM
  {{ source("austin","bikeshare_trips") }}