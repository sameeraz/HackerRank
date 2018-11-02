

--Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's 
--key was broken until after completing the calculation. 
--She wants your help finding the difference between her miscalculation (using salaries with any zeroes removed), and the actual average salary.

BEGIN TRANSACTION
CREATE TABLE EMPLOYEES (
	ID INT,
	Name VARCHAR(17),
	Salary INT
)

--INSERT INTO EMPLOYEES(ID, Name, Salary)
--	VALUES	 (1, 'Kristeen', 142)
--			,(2, 'Ashley', 26)
--			,(2, 'Julia', 221)
--			,(2, 'Maria', 3)

INSERT INTO EMPLOYEES(ID, Name, Salary)
	VALUES	 (1, 'Kristeen', 1420)
			,(2, 'Ashley', 2006)
			,(3, 'Julia', 2210)
			,(4, 'Maria', 3000)

SELECT CEILING(AVG(Salary) - AVG(REPLACE(Salary, '0', '')+0)) FROM EMPLOYEES -- This is Wrong 
SELECT CAST(CEILING(AVG(CAST(Salary AS FLOAT)) - AVG(CAST(Replace(Salary, 0, '') AS FLOAT))) AS INT) FROM EMPLOYEES;

ROLLBACK TRANSACTION

