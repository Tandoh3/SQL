
--INSERT INTO EmployeeDemographics
--(EmployeeID, FirstName, LastName, Age, Gender) 
--VALUES 
--(4, 'Aku', 'Adehenu', 22, 'Female'),
--(5, 'Kwame', 'Frimpong', 34, 'Male'),
--(6, 'Abena', 'Bortey',45, 'Female'),
--(7, 'Kwamina', 'Hammond', 23, 'Male'),
--(8, 'Maame', 'Tandoh', 34, 'Female'),
--(7, 'Nii', 'Agyei', 45, 'Male');

----UPDATE EmployeeDemographics
----SET EmployeeID = 1009
----WHERE FirstName = 'Nii';

INSERT INTO EmployeeSalary
(EmployeeID, JobTitle, Salary)
VALUES 
(1001, 'CEO', 1455555000),
(1002, 'COO', 5600078),
(1003, 'Manager', 450078),
(1004, 'MD', 1350000000),
(1005, 'Sales', 679000),
(1007, 'HR', 7800000),
(1008, 'SE', 890000),
(1009, 'CFO', 7800000);


/*
Select Statement 
*, Top, Distinct, Count, As, Max, Min, Avg
*/

SELECT *
FROM EmployeeDemographics 
