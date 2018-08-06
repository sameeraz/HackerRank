--Query a count of the number of cities in CITY having a Population larger than 100000 . 



--Revising Aggregations - The Count Function
--Query a count of the number of cities in CITY having a Population larger than .

BEGIN TRANSACTION
CREATE TABLE CITY (
	Id int,
	[Name] VARCHAR(17),
	CountryCode VARCHAR(3),
	District VARCHAR(20),
	[Population] int
)

SELECT COUNT(Id) FROM CITY
WHERE [Population] > 100000

ROLLBACK TRANSACTION
