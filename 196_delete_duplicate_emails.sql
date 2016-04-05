DELETE FROM Person
WHERE Id IN (SELECT Id
             FROM (SELECT P1.Id
                   FROM Person P1, Person P2
                   WHERE P1.Email = P2.Email
                         AND P1.Id > P2.Id) AS P)
