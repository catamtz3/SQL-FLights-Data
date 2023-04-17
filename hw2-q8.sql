-- Output relation cardinality: 22 rows
SELECT CARRIERS.name AS name, SUM(FLIGHTS.departure_delay) AS delay
FROM CARRIERS, FLIGHTS
WHERE FLIGHTS.carrier_id= CARRIERS.cid
GROUP BY CARRIERS.name;
