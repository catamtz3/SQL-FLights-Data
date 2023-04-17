-- Output relation cardinality: 1472 rows
SELECT CARRIERS.name AS name, 
FLIGHTS1.flight_num AS f1_flight_num, 
FLIGHTS1.origin_city AS f1_origin_city, 
FLIGHTS1.dest_city AS f1_dest_city, 
FLIGHTS1.actual_time AS f1_actual_time, 
FLIGHTS2.flight_num AS f2_flight_num, 
FLIGHTS2.origin_city AS f2_origin_city,
FLIGHTS2.dest_city AS f2_dest_city, 
FLIGHTS2.actual_time AS f2_actual_time,
FLIGHTS1.actual_time+FLIGHTS2.actual_time AS actual_time
FROM CARRIERS, MONTHS, FLIGHTS FLIGHTS1 INNER JOIN FLIGHTS FLIGHTS2 ON FLIGHTS1.origin_city='Seattle WA'
AND FLIGHTS1.carrier_id=CARRIERS.cid 
AND FLIGHTS2.dest_city='Boston MA'
AND FLIGHTS1.dest_city=FLIGHTS2.origin_city 
AND FLIGHTS1.carrier_id=FLIGHTS2.carrier_id
AND FLIGHTS1.month_id=MONTHS.mid
AND FLIGHTS1.day_of_month=15
AND FLIGHTS1.month_id=FLIGHTS2.month_id
AND FLIGHTS1.month_id = 7
AND MONTHS.month='July'
AND FLIGHTS1.day_of_month=FLIGHTS2.day_of_month
AND FLIGHTS1.actual_time+FLIGHTS2.actual_time < 420;