SELECT
i.InvoiceId,
t.Name AS TrackName,
Artist.Name
FROM InvoiceLine AS i
JOIN Track AS t
    ON t.TrackId = i.TrackId
JOIN Album AS a
    ON t.AlbumId = a.AlbumId
JOIN Artist
    ON Artist.ArtistId = a.ArtistId