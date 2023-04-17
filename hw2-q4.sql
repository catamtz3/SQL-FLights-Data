-- Output relation cardinality: 12 rows
SELECT DISTINCT CARRIERS.name AS name
FROM CARRIERS, FLIGHTS
WHERE FLIGHTS.carrier_id= CARRIERS.cid 
GROUP BY CARRIERS.name, FLIGHTS.day_of_month, FLIGHTS.month_id
HAVING COUNT(FLIGHTS.flight_num)>1000;