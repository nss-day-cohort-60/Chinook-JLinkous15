SELECT
    e.FirstName || ' ' || e.LastName AS FullName,
    i.InvoiceId
FROM Customer AS c
JOIN Invoice AS i
    ON c.CustomerId = i.CustomerId
JOIN Employee AS e
    ON e.EmployeeId = c.SupportRepId