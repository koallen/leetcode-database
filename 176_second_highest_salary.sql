SELECT MAX(E1.Salary)
FROM Employee E1
WHERE Id NOT IN (SELECT Id
                 FROM Employee E2
                 WHERE Salary = (SELECT MAX(E3.Salary)
                                 FROM Employee E3));
