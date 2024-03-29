﻿/**
Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath 
its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.

**/

SELECT
    [Doctor],
    [Professor],
    [Singer],
    [Actor]
FROM
    (SELECT 
         ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) rn,
         [Name],
         [Occupation] 
     FROM 
         Occupations
    ) AS source 
PIVOT
    ( MAX([Name]) FOR [occupation] IN ([Doctor],[Professor],[Singer],[Actor]) ) as pvt
ORDER BY rn