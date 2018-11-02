

--We define an employee's total earnings to be their monthly  worked, 
--and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. 
--Write a query to find the maximum total earnings for all employees 
--as well as the total number of employees who have maximum total earnings. 
--Then print these values as  space-separated integers.

BEGIN TRANSACTION
CREATE TABLE EMPLOYEE (
	ID INT,
	Name VARCHAR(17),
	Months INT,
	Salary INT
)

INSERT INTO EMPLOYEE(ID, Name, Months, Salary)
	VALUES	 (12228, 'Rose',	15,	1968)
			,(33645, 'Angela',	1,	3443)
			,(45692, 'Frank',	17,	1608)
			,(56118, 'Patrick',	7,	1345)
			,(59725, 'Lisa',	11,	2330)
			,(74197, 'kimberly',16,	4372)
			,(78454, 'Bonnie',	8,	1771)
			,(83565, 'Michael',	6,	2017)
			,(98607, 'Todd',	5,	3396)
			,(99989, 'Joe',		9,	3573)
 
SELECT MAX(SALARY*MONTHS), COUNT(*) FROM EMPLOYEE
WHERE (SALARY*MONTHS) = (SELECT MAX(SALARY*MONTHS) FROM EMPLOYEE);

ROLLBACK TRANSACTION