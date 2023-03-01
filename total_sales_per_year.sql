SELECT
    DISTINCT (strftime('%Y', InvoiceDate)) AS Year,
    SUM(total)
FROM Invoice as i
GROUP BY Year