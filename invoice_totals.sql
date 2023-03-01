SELECT
    i.Total,
    c.FirstName || ' ' || c.LastName AS CustomerFullName,
    c.Country AS CustomerCountry,
    e.FirstName || ' ' || e.LastName AS EmpoloyeeFullName
FROM Invoice AS i
JOIN Customer as c
    ON c.CustomerId = i.CustomerId
JOIN Employee as e
    ON e.EmployeeId = c.SupportRepId
