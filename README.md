# SQL-FLights-Data
Submit your pre-work as create-tables.sql and import-tables.sql. 


1 (10 points)  (Output relation cardinality: 3 rows)
List the distinct flight numbers for all flights from Seattle to Boston by Alaska Airlines Inc. on Mondays.  Notice that, in the dataset, city names include the state (eg, Seattle appears as “Seattle WA”); you should hardcode both “Seattle WA” and “Boston MA” in your query.

Your output should return the value of the flight_num column (ie, not the fid), and the output column should be named flight_num.


2 (10 points)  (Output relation cardinality: 1472 rows)
Find all itineraries from Seattle to Boston on July 15th that have exactly one stop (i.e., flight 1: Seattle -> [somewhere], flight2: [somewhere] -> Boston).

Both flights must depart on the same day and must be with the same carrier; it's fine if the landing date is different from the departing date (i.e., an overnight flight). You don't need to verify whether the first flight overlaps with the second, since the departing and arriving time of the flights are not provided in the dataset.  The total duration of the entire itinerary should be fewer than 420 minutes (ie, 7 hours)

For each itinerary, your query should return the name of the carrier, the first flight number, the origin and destination of that first flight, the flight duration, the second flight number, the origin and destination of the second flight, the second flight duration, and finally the total flight duration. Only count flight durations here; do not include any layover time.

Name the output columns as follows: name (ie, the name of the carrier), f1_flight_num, f1_origin_city, f1_dest_city, f1_actual_time, f2_flight_num, f2_origin_city, f2_dest_city, f2_actual_time, and actual_time (ie, total flight duration). Your output columns must be in this order.


3 (10 points)  (Output relation cardinality: 1 row)
Calculate the day of the week with the longest average arrival delay.  Hint: consider using LIMIT (look up what it does!).

Name the output columns day_of_week and delay, in that order.


4 (10 points)  (Output relation cardinality: 12 rows)
Find the names of all airlines that ever flew more than 1000 flights in one day; we define “day” as “a specific day/month”, not as an arbitrary 24-hour period. Return only the names of the airlines, and do not return any duplicate names.

Name the output column name.


5 (10 points)  (Output relation cardinality: 3 rows)
Calculate Find the names of all airlines that had more than 1% (= 0.01) of their flights out of Seattle canceled.  Percentages should be outputted in percent format (ie, represent 3.5% as 3.5, not 0.035). Order the results by the percentage of canceled flights, in ascending order.

Name the output columns name and percentage, in that order.


6 (10 points)  (Output relation cardinality: 3 rows)
For each carrier, calculate output their name and the maximum ticket price for a direct flight between Seattle and New York, NY. This includes flights from Seattle to New York as well as those from New York to Seattle.
Name the output columns carrier and max_price, in that order.


7 (10 points)  (Output relation cardinality: 31 rows)
Calculate the total capacity of all direct flights between Seattle and San Francisco, CA (ie, flights from Seattle to SF and also flights from SF to Seattle) for each day in the dataset (ie, each day in July).  

Name the output columns day_of_month and capacity, in that order.


8 (10 points)  (Output relation cardinality: 22 rows)
Calculate the total departure delay for each airline, summed across all its flights. Some departure delays may be negative (indicating an early departure); these delays should reduce the total.

Name the output columns name and delay, in that order.



(3 points) 
Please reflect on your own personal experience completing this homework. Specifically:
What is one thing that you learned while doing this assignment?
What is one thing that surprised you while doing this assignment?
What is one question that you still have after doing this assignment?

The following questions are completely optional, but help us understand if we are creating appropriately-challenging questions:
How many hours did it take you to finish this assignment, including time to set up your computer (if necessary)?
How many of those hours did you feel were valuable and/or contributed to your learning?
Did you collaborate with other students on this assignment?  If so, approximately how many people did you collaborate with?  Do not include yourself in the count.

Save your answers to the reflection and feedback questions in a file called hw2-writeup.txt in the submission directory.
