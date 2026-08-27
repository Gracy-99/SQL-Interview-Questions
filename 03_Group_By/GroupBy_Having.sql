/*
Question:
Display Department, Number of Employees and Average Salary.
Show only departments where the average salary is greater than 55000.
*/

SELECT
    Department,
    COUNT(*) AS NumberOfEmployees,
    AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY Department
HAVING AVG(Salary) > 55000;


/*
Question:
Find employee names that appear more than once.

Solution:
*/

SELECT
    EmployeeName,
    COUNT(*) AS DuplicateCount
FROM Employees
GROUP BY EmployeeName
HAVING COUNT(*) > 1;


/*
Question:
Display the complete records of employees whose names are duplicated.

Solution:
*/

SELECT
    EmployeeID,
    EmployeeName,
    Department
FROM Employees
WHERE EmployeeName IN
(
    SELECT EmployeeName
    FROM Employees
    GROUP BY EmployeeName
    HAVING COUNT(*) > 1
);
