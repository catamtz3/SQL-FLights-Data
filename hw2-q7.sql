-- Output relation cardinality: 31 rows
SELECT FLIGHTS.day_of_month AS day_of_month, SUM(FLIGHTS.capacity) AS capacity
FROM FLIGHTS, MONTHS
WHERE FLIGHTS.month_id = 7 
AND MONTHS.mid = FLIGHTS.month_id
AND MONTHS.month = 'July'
AND FLIGHTS.origin_city = 'Seattle WA' 
AND FLIGHTS.dest_city = 'San Francisco CA' 
OR (FLIGHTS.origin_city = 'San Francisco CA' 
AND FLIGHTS.dest_city = 'Seattle WA'
AND MONTHS.mid = FLIGHTS.month_id
AND MONTHS.month = 'July')
GROUP BY FLIGHTS.day_of_month;
