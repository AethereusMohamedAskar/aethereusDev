SELECT
    [First Name],
    [Birth Date],
    Email
FROM
    Nykaa
WHERE
    DAY([Birth Date]) = DAY(GETDATE())
    AND MONTH([Birth Date]) = MONTH(GETDATE())