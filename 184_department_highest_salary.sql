SELECT D1.Name AS Department, E1.Name AS Employee, E1.Salary
FROM Employee E1 JOIN Department D1 ON E1.DepartmentId = D1.Id
WHERE (E1.Salary, E1.DepartmentId) IN (SELECT MAX(E2.Salary), DepartmentId
                                      FROM Employee E2
                                      GROUP BY DepartmentId);
