-- Output relation cardinality: 3 rows

SELECT DISTINCT FLIGHTS.flight_num AS flight_num
FROM FLIGHTS, CARRIERS, WEEKDAYS  
WHERE FLIGHTS.origin_city = 'Seattle WA' 
AND FLIGHTS.dest_city = 'Boston MA' 
AND CARRIERS.name = 'Alaska Airlines Inc.' 
AND WEEKDAYS.day_of_week = 'Monday' 
AND FLIGHTS.carrier_id= CARRIERS.cid
AND FLIGHTS.day_of_week_id= WEEKDAYS.did;

