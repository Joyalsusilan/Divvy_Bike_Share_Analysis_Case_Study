CREATE OR REPLACE TABLE `chromatic-yeti-462107-q7.Cyclistic_bike_share.Cleaned_Bike_Trips_2019_2020` AS
SELECT *
FROM `chromatic-yeti-462107-q7.Cyclistic_bike_share.All_Bike_Trips_2019_2020`
WHERE (
  CAST(SPLIT(Ride_length, ':')[OFFSET(0)] AS INT64) * 3600 +
  CAST(SPLIT(Ride_length, ':')[OFFSET(1)] AS INT64) * 60 +
  CAST(SPLIT(Ride_length, ':')[OFFSET(2)] AS INT64)
) <= 86400
