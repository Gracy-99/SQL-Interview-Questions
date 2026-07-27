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
