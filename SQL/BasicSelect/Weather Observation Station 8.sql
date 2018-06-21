
--Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u)
--as both their first and last characters. Your result cannot contain duplicates.

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

SELECT CITY FROM STATION
WHERE 
    SUBSTRING(CITY, 1,1) IN('a', 'e', 'i', 'o', 'u')
    AND SUBSTRING(REVERSE(CITY), 1,1) IN('a', 'e', 'i', 'o', 'u');