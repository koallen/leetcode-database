SELECT Name AS Employee
FROM Employee E1
WHERE Salary > (SELECT Salary
                FROM Employee E2
                WHERE E2.Id = E1.ManagerId)
      AND E1.ManagerID IS NOT NULL;
