SELECT
    DISTINCT e.FirstName || ' ' || e.LastName as FullName,
    SUM(i.Total),
    COUNT(*)
FROM Employee AS e
LEFT JOIN Customer AS c
    ON c.SupportRepId = e.EmployeeId
LEFT JOIN Invoice AS i
    ON c.CustomerId = i.CustomerId
GROUP BY FullName