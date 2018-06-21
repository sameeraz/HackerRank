

--Query the two cities in STATION with the shortest and longest CITY names, 
--as well as their respective lengths (i.e.: number of characters in the name). 
--If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

SELECT TOP 1 CITY, LEN(CITY) FROM STATION ORDER BY LEN(CITY), CITY;
SELECT TOP 1 CITY, LEN(CITY) FROM STATION ORDER BY LEN(CITY) DESC, CITY;



-- =================OR===========
SELECT DISTINCT TOP 1 CITY, LEN(CITY) 
FROM STATION 
WHERE 
    LEN(CITY) = (SELECT DISTINCT TOP 1 MIN(LEN(CITY)) FROM STATION)
UNION
SELECT DISTINCT TOP 1 CITY, LEN(CITY) 
FROM STATION 
WHERE
    LEN(CITY) = (SELECT DISTINCT TOP 1 MAX(LEN(CITY)) FROM STATION)
ORDER BY CITY ;
