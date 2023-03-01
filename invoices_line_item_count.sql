SELECT
    i.InvoiceId,
    COUNT(*)
FROM Invoice as i
LEFT JOIN InvoiceLine as il
    ON i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId