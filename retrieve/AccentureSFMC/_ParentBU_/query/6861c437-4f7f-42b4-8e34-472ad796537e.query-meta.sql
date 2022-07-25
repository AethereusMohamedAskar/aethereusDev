SELECT
    a.[Product],
    a.[Customer_ID]
FROM
    Data2 a
    INNER JOIN DataMain b ON a.Customer_ID = b.Customer_ID