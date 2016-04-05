SELECT DISTINCT L1.Num AS ConsecutiveNums
FROM Logs L1
JOIN Logs L2
ON L1.Num = L2.Num
JOIN Logs L3
ON L2.Num = L3.Num
WHERE L2.Id - L1.Id = 1
      AND L3.Id - L1.Id = 2;
