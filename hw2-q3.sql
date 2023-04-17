-- Output relation cardinality: 1 row
SELECT WEEKDAYS.day_of_week AS day_of_week, AVG(FLIGHTS.arrival_delay) AS delay 
FROM WEEKDAYS, FLIGHTS
WHERE FLIGHTS.day_of_week_id = WEEKDAYS.did
GROUP BY FLIGHTS.day_of_week_id
ORDER BY AVG(FLIGHTS.arrival_delay) DESC
LIMIT 1;