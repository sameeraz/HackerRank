
--Query a list of CITY names from STATION with even ID numbers only. 
--You may print the results in any order, but must exclude duplicates from your answer.

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/


SELECT DISTINCT CITY FROM STATION
WHERE ID%2 = 0
