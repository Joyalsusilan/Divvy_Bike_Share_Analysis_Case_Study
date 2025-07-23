
SELECT *

FROM `chromatic-yeti-462107-q7.Cyclistic_bike_share.All_Bike_Trips_2019_2020` 

#Trips exceeding a reasonable duration (e.g., 24 hours) were excluded as they are likely system or user errors not reflective of actual rider behavior

WHERE User_type = 'Customer'
  AND (
    CAST(SPLIT(Ride_length, ':')[OFFSET(0)] AS INT64) * 3600
    + CAST(SPLIT(Ride_length, ':')[OFFSET(1)] AS INT64) * 60
    + CAST(SPLIT(Ride_length, ':')[OFFSET(2)] AS INT64)
  ) > 86400