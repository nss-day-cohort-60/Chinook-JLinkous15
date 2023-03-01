SELECT
DISTINCT BillingCountry,
COUNT(*) AS TotalInvoices
FROM Invoice
GROUP BY BillingCountry