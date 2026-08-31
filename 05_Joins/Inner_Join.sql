/*
Question:
Display EmployeeName, DepartmentName and Salary
by joining Employees and Departments.

Concept:
INNER JOIN
*/

SELECT
    EmployeeName,
    DepartmentName,
    Salary
FROM Employees AS EMP
INNER JOIN Departments AS DEP
    ON EMP.DepartmentID = DEP.DepartmentID;
But Departments has no DepartmentID = 104.

Question:

If we use your INNER JOIN, will Emma appear in the result?

And why?
  Exactly, Bud! 😄👏 The conclusion is correct.

Emma will not appear because an INNER JOIN returns only the rows where the join condition finds a match in both tables.

One small correction to your explanation, though:

DepartmentID doesn't necessarily have to be the primary key in both tables.

Usually, in this example:

Departments.DepartmentID → Primary Key
Employees.DepartmentID → Foreign Key

So the relationship is:

Departments
DepartmentID (PK)
       ↑
       |
       |
Employees
DepartmentID (FK)

And our JOIN:

ON EMP.DepartmentID = DEP.DepartmentID

means:

"Match each employee to a department where the DepartmentID is the same."

For Emma:

Employees.DepartmentID = 104
Departments.DepartmentID = 104 → ❌ doesn't exist

Therefore, Emma is excluded.
If an interviewer asks:

"What happens to unmatched records in an INNER JOIN?"

You can confidently say:

"INNER JOIN returns only records that have matching values in both tables. Unmatched records are excluded."

That's a very good interview answer. 
