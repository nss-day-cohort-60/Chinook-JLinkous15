SELECT
    DISTINCT ar.ArtistId,
    ar.Name,
    SUM(il.Quantity)*il.UnitPrice AS TotalSales
FROM InvoiceLine AS il
JOIN Track AS t
    ON il.TrackId = t.TrackId
JOIN Album AS al
    ON t.AlbumId = al.AlbumId
JOIN Artist AS ar
    ON al.ArtistId = ar.ArtistId
GROUP BY ar.ArtistId
ORDER BY TotalSales DESC
LIMIT 3;