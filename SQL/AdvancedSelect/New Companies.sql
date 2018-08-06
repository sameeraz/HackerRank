

--Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy: 

BEGIN TRANSACTION
CREATE TABLE Company(
	company_code  VARCHAR(10),
	founder VARCHAR(10)
)

CREATE TABLE Lead_Manager(
	lead_manager_code VARCHAR(10),
	company_code VARCHAR(10)
)

CREATE TABLE Senior_Manager(
	senior_manager_code VARCHAR(10),
	lead_manager_code VARCHAR(10),
	company_code  VARCHAR(10)
)

CREATE TABLE Manager(
	manager_code VARCHAR(100),
	senior_manager_code VARCHAR(10),
	lead_manager_code  VARCHAR(10),
	company_code  VARCHAR(10)
)

CREATE TABLE Employee(
	employee_code VARCHAR(10),
	manager_code VARCHAR(10),
	senior_manager_code VARCHAR(10),
	lead_manager_code  VARCHAR(10),
	company_code  VARCHAR(10)
)

INSERT INTO Company(company_code, founder )
	VALUES	 ('C1', 'Monika')
			,('C2', 'Samantha')

INSERT INTO Lead_Manager(lead_manager_code, company_code )
	VALUES	 ('LM1', 'C1')
			,('LM2', 'C2')

INSERT INTO Senior_Manager(senior_manager_code, lead_manager_code, company_code )
	VALUES	 ('SM1', 'LM1', 'C1')
			,('SM2', 'LM1', 'C1')
			,('SM3', 'LM2', 'C2')

INSERT INTO Manager(manager_code, senior_manager_code, lead_manager_code, company_code )
	VALUES	 ('M1', 'SM1', 'LM1', 'C1')
			,('M2', 'SM3', 'LM2', 'C2')
			,('M3', 'SM3', 'LM2', 'C2')

INSERT INTO Employee(employee_code, manager_code, senior_manager_code, lead_manager_code, company_code )
	VALUES	 ('E1', 'M1', 'SM1', 'LM1', 'C1')
			,('E2', 'M1', 'SM1', 'LM1', 'C1')
			,('E3', 'M2', 'SM3', 'LM2', 'C2')
			,('E4', 'M3', 'SM3', 'LM2', 'C2');



SELECT	 c.company_code
		,c.founder
		,COUNT(DISTINCT lm.lead_manager_code)
		,COUNT(DISTINCT sm.senior_manager_code)
		,COUNT(DISTINCT m.manager_code)
		,COUNT(DISTINCT e.employee_code)
FROM 
	Company c
	,Lead_Manager lm
	,Senior_Manager sm
	,Manager m
	,Employee e
WHERE
	c.company_code = lm.company_code
	AND lm.lead_manager_code = sm.lead_manager_code
	AND sm.senior_manager_code = m.senior_manager_code
	AND m.manager_code = e.manager_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code 


ROLLBACK TRANSACTION

