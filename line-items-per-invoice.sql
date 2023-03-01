SELECT
    DISTINCT il.InvoiceId,
    COUNT(*) AS Tracks
FROM InvoiceLine as il
JOIN Invoice as i
WHERE i.InvoiceId = il.InvoiceId
GROUP BY il.InvoiceId