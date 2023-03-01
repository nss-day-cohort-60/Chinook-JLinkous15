SELECT
i.InvoiceId,
t.Name AS TrackName,
a.title AS AlbumName
FROM InvoiceLine AS i
JOIN Track AS t
    ON t.TrackId = i.TrackId
JOIN Album AS a
    ON t.AlbumId = a.AlbumId