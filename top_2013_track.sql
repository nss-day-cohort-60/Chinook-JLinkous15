--Doesn't Work
SELECT 
    DISTINCT Name,
    TrackIds,
    NumOfSales
FROM (
    SELECT
        DISTINCT t.Name,
        GROUP_CONCAT(t.TrackId) AS TrackIds,
        SUM(Quantity) as NumOfSales
    FROM InvoiceLine AS il
    JOIN Track AS t
        ON t.TrackId = il.TrackId
    JOIN Invoice AS i
        ON i.InvoiceId = il.InvoiceId
    WHERE i.InvoiceDate LIKE "2013%"
    GROUP BY t.Name
    ORDER BY NumOfSales DESC
)AS Subquery 
WHERE NumOfSales = (SELECT MAX(NumOfSales) FROM Subquery);

--Works Poorly
SELECT
    DISTINCT NumOfSales,
    GROUP_CONCAT(Name)
FROM (
SELECT
    Distinct t.Name,
    SUM(il.Quantity) AS NumOfSales
FROM InvoiceLine as il
JOIN Track as t
    ON t.TrackId = il.TrackId 
JOIN Invoice as i
    ON i.InvoiceId = il.InvoiceId
WHERE i.InvoiceDate LIKE "2013%"
GROUP BY t.Name
)
GROUP BY NumOfSales
ORDER BY NumOfSales DESC
Limit 1;

--Coach Code
SELECT
	t.Name,
	COUNT(t.Name) PurchaseCount
FROM
	Track t
JOIN InvoiceLine l ON
	l.TrackId = t.TrackId
JOIN Invoice i ON
	l.InvoiceId = i.InvoiceId
WHERE
	STRFTIME('%Y', i.InvoiceDate) = "2013"
GROUP BY
	t.Name
ORDER BY
	PurchaseCount DESC
;

--Coach Code
with TopTracks as (
    select t.Name,
        COUNT(t.Name) PurchaseCount
    from Track t
        join InvoiceLine l on l.TrackId = t.TrackId
        join Invoice i on l.InvoiceId = i.InvoiceId
    where STRFTIME('%Y', i.InvoiceDate) = "2013"
    group by t.Name
    order by PurchaseCount desc
)


select Name,
    PurchaseCount
from TopTracks
where (
        select max(PurchaseCount)
        from TopTracks
    ) = PurchaseCount

;