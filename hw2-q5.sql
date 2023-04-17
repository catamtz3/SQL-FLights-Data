-- Output relation cardinality: 3 rows
SELECT CARRIERS.name AS name, (SUM(FLIGHTS.canceled)*100.0/COUNT(*)) AS percentage
FROM FLIGHTS, CARRIERS
WHERE FLIGHTS.carrier_id= CARRIERS.cid
AND FLIGHTS.origin_city='Seattle WA'
GROUP BY CARRIERS.name
HAVING percentage >= 1
ORDER BY percentage;