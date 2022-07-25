SELECT
    [first name],
    [birthday],
    [email id],
    [customer id]
FROM
    pen
WHERE
    DAY([birthday]) = DAY(GETDATE())
    AND MONTH([birthday]) = MONTH(GETDATE())