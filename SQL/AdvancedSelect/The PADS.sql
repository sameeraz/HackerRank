/**
Generate the following two result sets:

Query an alphabetically ordered list of all names in OCCUPATIONS, 
immediately followed by the first letter of each profession as a parenthetical 
(i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, 
and output them in the following format: 

There are a total of [occupation_count] [occupation]s.
where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] 
is the lowercase occupation name. If more than one Occupation has the same [occupation_count], 
they should be ordered alphabetically.

Note: There will be at least two entries in the table for each type of occupation.
**/

/**Insert Sample Date Query**/
USE [TestDB]
GO
/****** Object:  Table [dbo].[OCCUPATIONS]    Script Date: 6/26/2018 11:54:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OCCUPATIONS](
	[Name] [varchar](50) NOT NULL,
	[Occupation] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[OCCUPATIONS] ([Name], [Occupation]) VALUES (N'Samantha', N'Doctor')
GO
INSERT [dbo].[OCCUPATIONS] ([Name], [Occupation]) VALUES (N'Julia', N'Actor')
GO
INSERT [dbo].[OCCUPATIONS] ([Name], [Occupation]) VALUES (N'Maria', N'Actor')
GO
INSERT [dbo].[OCCUPATIONS] ([Name], [Occupation]) VALUES (N'Meera', N'Singer')
GO
INSERT [dbo].[OCCUPATIONS] ([Name], [Occupation]) VALUES (N'Ashely', N'Professor')
GO
INSERT [dbo].[OCCUPATIONS] ([Name], [Occupation]) VALUES (N'Christeen', N'Professor')
GO
INSERT [dbo].[OCCUPATIONS] ([Name], [Occupation]) VALUES (N'Jane', N'Actor')
GO
INSERT [dbo].[OCCUPATIONS] ([Name], [Occupation]) VALUES (N'Jenny', N'Doctor')
GO
INSERT [dbo].[OCCUPATIONS] ([Name], [Occupation]) VALUES (N'Priya', N'Singer')
GO
INSERT [dbo].[OCCUPATIONS] ([Name], [Occupation]) VALUES (N'Ketty', N'Professor')
GO

SELECT CONCAT(Name, '(', SUBSTRING(Occupation, 1, 1), ')') AS TheText
FROM OCCUPATIONS
ORDER BY TheText ASC

SELECT CASE
	WHEN COUNT(Occupation) = 1 THEN CONCAT('There is a total of ', COUNT(Occupation), ' ', LOWER(Occupation), '.')
	WHEN COUNT(Occupation) > 1 THEN CONCAT('There are a total of ', COUNT(Occupation), ' ', LOWER(Occupation), 's.')
	END AS TheText
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(Occupation) ASC, Occupation