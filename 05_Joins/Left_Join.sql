/*
========================================================
LEFT JOIN
========================================================

Concept:
LEFT JOIN returns all records from the LEFT table
and the matching records from the RIGHT table.

If there is no matching record in the RIGHT table,
the columns from the RIGHT table return NULL.
*/


/*
--------------------------------------------------------
Question 1:
Display all employees along with their department names,
including employees who do not have a matching department.
--------------------------------------------------------
*/

SELECT
    EMP.EmployeeID,
    EMP.EmployeeName,
    DEP.DepartmentName
FROM Employees AS EMP
LEFT JOIN Departments AS DEP
    ON EMP.DepartmentID = DEP.DepartmentID;


/*
Expected Result:

EmployeeID | EmployeeName | DepartmentName
-----------|--------------|---------------
1          | Alice        | HR
2          | Bob          | IT
3          | Charlie      | HR
4          | David        | Finance
5          | Emma         | NULL

Emma is included because LEFT JOIN keeps all records
from the Employees table.
*/


/*
--------------------------------------------------------
Question 2:
Display all departments, including departments that
currently have no employees.
--------------------------------------------------------
*/

SELECT
    DEP.DepartmentID,
    DEP.DepartmentName,
    EMP.EmployeeName
FROM Departments AS DEP
LEFT JOIN Employees AS EMP
    ON DEP.DepartmentID = EMP.DepartmentID;


/*
Key Rule:

LEFT JOIN
→ Keeps ALL records from the LEFT table.

ON
→ Controls which records are matched during the JOIN.

WHERE
→ Filters the final result.
*/


/*
--------------------------------------------------------
Question 3:
Show all employees, but only bring department information
when the employee belongs to the IT department.
--------------------------------------------------------
*/

SELECT
    EMP.EmployeeID,
    EMP.EmployeeName,
    DEP.DepartmentName
FROM Employees AS EMP
LEFT JOIN Departments AS DEP
    ON EMP.DepartmentID = DEP.DepartmentID
   AND DEP.DepartmentName = 'IT';


/*
Important:

The condition is placed in ON instead of WHERE
because we want to keep ALL employees.

ON controls the matching.
WHERE would filter the final result and could remove
employees that don't belong to IT.
*/
