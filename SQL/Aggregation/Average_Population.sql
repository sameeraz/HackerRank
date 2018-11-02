


--Query the average population for all cities in CITY, rounded down to the nearest integer.

BEGIN TRANSACTION
CREATE TABLE City(
	ID INT,
	NAME VARCHAR(17),
	COUNTRYCODE VARCHAR(3),
	DISTRICT VARCHAR(20),
	POPULATION INT 
)

SELECT ROUND(AVG(POPULATION),0) FROM CITY


ROLLBACK TRANSACTION

