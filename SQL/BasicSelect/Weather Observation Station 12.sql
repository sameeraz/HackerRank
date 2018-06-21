--Query the list of CITY names from STATION 
--that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.



SELECT DISTINCT CITY FROM STATION
WHERE 
    SUBSTRING(CITY, 1,1) NOT IN('a', 'e', 'i', 'o', 'u')
    AND SUBSTRING(REVERSE(CITY), 1,1) NOT IN('a', 'e', 'i', 'o', 'u');