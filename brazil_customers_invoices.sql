SELECT
*
FROM Customer AS C
JOIN Invoice AS I 
    ON C.CustomerId = I.CustomerId