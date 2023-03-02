SELECT
    EmployeeName,
    MAX(TotalSales) AS IHateSQL
FROM (
    SELECT
    DISTINCT 
        e.FirstName || ' ' || e.LastName AS EmployeeName,
        SUM(Total) as TotalSales
    FROM Invoice AS i
    JOIN Customer AS c
        ON c.CustomerId = i.CustomerId
    JOIN Employee AS e
        ON c.SupportRepId = e.EmployeeId
    GROUP BY EmployeeName);

