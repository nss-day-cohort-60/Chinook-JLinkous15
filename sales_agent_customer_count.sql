SELECT
    DISTINCT e.FirstName || ' ' || e.LastName AS EmployeeFullName,
    COUNT(*) AS CustomerCount
FROM Customer as c
LEFT JOIN Employee AS e
    ON c.SupportRepId = e.EmployeeId
GROUP BY EmployeeFullName