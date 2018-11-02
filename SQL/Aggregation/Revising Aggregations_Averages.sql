

--Query the average population of all cities in CITY where District is California. 

BEGIN TRANSACTION
CREATE TABLE City(
	ID INT,
	NAME VARCHAR(17),
	COUNTRYCODE VARCHAR(3),
	DISTRICT VARCHAR(20),
	POPULATION INT 
)

SELECT AVG(POPULATION) FROM CITY WHERE DISTRICT = 'California';


ROLLBACK TRANSACTION

