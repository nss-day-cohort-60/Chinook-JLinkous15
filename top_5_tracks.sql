SELECT
    DISTINCT t.Name,
    t.TrackId,
    SUM(Quantity) as NumOfSales
FROM InvoiceLine AS il
JOIN Track AS t
    ON t.TrackId = il.TrackId
JOIN Invoice AS i
    ON i.InvoiceId = il.InvoiceId
GROUP BY t.Name
ORDER BY NumOfSales DESC
LIMIT 5

SELECT
    DISTINCT t.TrackId,
    t.Name,
    SUM(Quantity) as NumOfSales
FROM InvoiceLine AS il
JOIN Track AS t
    ON t.TrackId = il.TrackId
JOIN Invoice AS i
    ON i.InvoiceId = il.InvoiceId
GROUP BY t.TrackId
ORDER BY NumOfSales DESC
LIMIT 5