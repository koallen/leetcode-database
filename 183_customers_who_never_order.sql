SELECT Name AS Customers
FROM Customers C
WHERE NOT EXISTS (SELECT *
                  FROM Orders O
                  WHERE O.CustomerId = C.Id);
