
----INSERT INTO EmployeeDemographics
----(EmployeeID, FirstName, LastName, Age, Gender) 
----VALUES 
----(4, 'Aku', 'Adehenu', 22, 'Female'),
----(5, 'Kwame', 'Frimpong', 34, 'Male'),
----(6, 'Abena', 'Bortey',45, 'Female'),
----(7, 'Kwamina', 'Hammond', 23, 'Male'),
----(8, 'Maame', 'Tandoh', 34, 'Female'),
----(7, 'Nii', 'Agyei', 45, 'Male');

------UPDATE EmployeeDemographics
------SET EmployeeID = 1009
------WHERE FirstName = 'Nii';

--INSERT INTO EmployeeSalary
--(EmployeeID, JobTitle, Salary)
--VALUES 
--(1001, 'CEO', 1455555000),
--(1002, 'COO', 5600078),
--(1003, 'Manager', 450078),
--(1004, 'MD', 1350000000),
--(1005, 'Sales', 679000),
--(1006, 'Operations Head', 5678999),
--(1007, 'HR', 7800000),
--(1008, 'SE', 890000),
--(1009, 'CFO', 7800000);


--/*
--Select Statement 
--*, Top, Distinct, Count, As, Max, Min, Avg
--*/

--SELECT *
--FROM EmployeeDemographics 

----Show only FirstName and LastName 
--SELECT FirstName, LastName
--FROM EmployeeDemographics;

---- TOP (Head of the dataset) 
--SELECT TOP 5 * 
--FROM EmployeeDemographics;

---- DISTINCT (unique values of a specific column) 
--SELECT DISTINCT EmployeeID 
--FROM EmployeeDemographics;

----COUNT (all the non null values in a column) 
--SELECT COUNT(Age) AS AgeCount
--FROM EmployeeDemographics;

----MAX (Finds the maximum value in the column) 
--SELECT MAX(Salary)
--FROM EmployeeSalary;

--SELECT MIN(Salary) 
--FROM EmployeeSalary;

-----Because the value was too large 
--SELECT AVG(CAST(Salary AS bigint)) 
--FROM EmployeeSalary;

/*
WHERE Statement 
=, <>, <,>, AND, OR, LIKE, NULL, 
NOT NULL, IN
*/

SELECT * 
FROM EmployeeDemographics
WHERE FirstName =  'Nana Banyin'


SELECT * 
FROM EmployeeDemographics
WHERE FirstName <> 'Nana Banyin'

SELECT * 
FROM EmployeeDemographics
WHERE Age > 30 
 --WHERE Age >= 30 
 --WHERE Age <= 30 
 --WHERE Age < 30

SELECT * 
FROM EmployeeDemographics
WHERE Age <= 32 OR Gender = 'Male'


SELECT * 
FROM EmployeeDemographics 
WHERE Lastname LIKE 'T%O%';

SELECT * 
FROM EmployeeDemographics
WHERE FirstName IN ('Nana Banyin', 'Aku')

/*
GROUP BY ,
ORDER BY 
*/

-- Shows distinct or unique values in each column
SELECT Gender, COUNT(Gender) AS CountGender 
FROM EmployeeDemographics
GROUP BY Gender 

SELECT Gender, COUNT(Gender) AS CountGender 
FROM EmployeeDemographics
GROUP BY Gender 
ORDER BY Gender DESC


SELECT * 
FROM EmployeeDemographics
ORDER BY Age, Gender 


SELECT * 
FROM EmployeeDemographics
ORDER BY 4 DESC, 5 DESC

/*
INNER JOINS, FULL/LEFT/RIGHT/ OUTER JOINS 
*/
INSERT INTO EmployeeDemographics
(EmployeeID, FirstName, LastName, Age, Gender) 
VALUES 
(1011, 'Ryan', 'Howard', 26, 'Male'),
(NULL, 'Holly', 'Flax', NULL, NULL), 
(1013, 'Darryl', 'Philbin', NULL, 'Male');

INSERT INTO EmployeeSalary
(EmployeeID, JobTitle, Salary) 
VALUES 
(1010, NULL, 47000),
(NULL, 'Driver', 43000);

--Inner Join 
SELECT * 
FROM EmployeeDemographics
INNER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--Full Outer Join 
SELECT * 
FROM EmployeeDemographics
FULL OUTER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

-- Left Outer Join 
SELECT * 
FROM EmployeeDemographics
LEFT OUTER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

-- Right Outer Join 
SELECT * 
FROM EmployeeDemographics
RIGHT OUTER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT ED.EmployeeID, (FirstName + ' ' + LastName) AS FullName, JobTitle, Salary 
FROM EmployeeDemographics AS ED
INNER JOIN EmployeeSalary AS ES 
	ON ED.EmployeeID = ES.EmployeeID





