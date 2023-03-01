SELECT
i.InvoiceId,
t.Name
FROM InvoiceLine AS i
JOIN Track AS t
    ON t.TrackId = i.TrackId