-- Output relation cardinality: 3 rows
SELECT CARRIERS.name AS carrier, MAX(FLIGHTS.price) AS max_price
FROM FLIGHTS, CARRIERS
WHERE FLIGHTS.carrier_id= CARRIERS.cid
AND FLIGHTS.origin_city='Seattle WA' 
AND FLIGHTS.dest_city = 'New York NY'
OR FLIGHTS.origin_city= 'New York NY' 
AND FLIGHTS.dest_city = 'Seattle WA'
AND FLIGHTS.carrier_id = CARRIERS.cid
GROUP BY CARRIERS.name;
