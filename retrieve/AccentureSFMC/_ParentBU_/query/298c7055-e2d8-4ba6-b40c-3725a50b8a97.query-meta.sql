SELECT
    *
FROM
    [Master_IP_Warming_Campaign]
WHERE
    EmailAddress LIKE '%@hotmail.com'
    OR EmailAddress LIKE '%@live.com'
    OR EmailAddress LIKE '%@msn.com'
    OR EmailAddress LIKE '%@live.co.uk'
    OR EmailAddress LIKE '%@hotmail.co.uk'
    OR EmailAddress LIKE '%@outlook.com'