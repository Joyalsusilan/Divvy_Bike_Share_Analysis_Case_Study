select User_type,
       AVG(TIMESTAMP_DIFF(End_time, Start_time, SECOND)) AS avg_duration_per_seconds


FROM `chromatic-yeti-462107-q7.Cyclistic_bike_share.All_Bike_Trips_2019_2020`

group by User_type