--Revising Aggregations - The Sum Function

BEGIN TRANSACTION
CREATE TABLE CITY (
	Id int,
	[Name] VARCHAR(17),
	CountryCode VARCHAR(3),
	District VARCHAR(20),
	[Population] int
)

SELECT SUM(Population) FROM CITY
WHERE District = 'California'

ROLLBACK TRANSACTION

