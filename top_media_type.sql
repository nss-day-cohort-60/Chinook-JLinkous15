--Most Purchased Media Types

SELECT 
DISTINCT mt.Name,
SUM(il.Quantity) AS TotalSales
FROM InvoiceLine AS il
    JOIN Track AS t ON
        t.TrackId = il.TrackId
    JOIN MediaType AS mt ON
        t.MediaTypeId = mt.MediaTypeId
GROUP BY mt.Name
ORDER BY TotalSales DESC