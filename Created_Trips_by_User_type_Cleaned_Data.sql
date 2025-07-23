CREATE OR REPLACE TABLE `chromatic-yeti-462107-q7.Cyclistic_bike_share.Cleaned_Total_Bike_Trips_User_type_2019_2020` AS
SELECT User_type, COUNT(*) AS total_trips

from chromatic-yeti-462107-q7.Cyclistic_bike_share.Cleaned_Bike_Trips_2019_2020

GROUP BY User_type

