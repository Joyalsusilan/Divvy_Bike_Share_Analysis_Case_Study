CREATE OR REPLACE TABLE `chromatic-yeti-462107-q7.Cyclistic_bike_share.Bike_Trips_Stats_2019_2020` AS
SELECT 
  FORMAT_TIMESTAMP('%Y-%m', Start_time) AS trip_month,
  COUNT(*) AS total_trips

FROM `chromatic-yeti-462107-q7.Cyclistic_bike_share.All_Bike_Trips_2019_2020`

GROUP BY trip_month
ORDER BY trip_month;