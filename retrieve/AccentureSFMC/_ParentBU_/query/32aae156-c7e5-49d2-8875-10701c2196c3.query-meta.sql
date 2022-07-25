SELECT
    *
FROM
    [MASTER - Primary_Email_Send]
WHERE
    CAST(Inserttimestamp AS DATE) = CAST(getdate() AS DATE)
    AND Senttimestamp = 'DEFAULT'