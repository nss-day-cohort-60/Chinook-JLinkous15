SELECT
    BillingCountry,
    MAX(TotalSales)
FROM (
    SELECT
        DISTINCT BillingCountry,
        SUM(Total) AS TotalSales
    FROM Invoice
    GROUP BY BillingCountry
);