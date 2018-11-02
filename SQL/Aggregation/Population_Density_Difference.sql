﻿

--Query the difference between the maximum and minimum populations in CITY.

BEGIN TRANSACTION
CREATE TABLE City(
	ID INT,
	NAME VARCHAR(17),
	COUNTRYCODE VARCHAR(3),
	DISTRICT VARCHAR(20),
	POPULATION INT 
)

SELECT MAX(POPULATION) - MIN(POPULATION) FROM CITY


ROLLBACK TRANSACTION
