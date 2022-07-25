SELECT
    Subscriberkey,
    EmailAddress,
    FirstName,
    LastName,
    getdate() AS Senttimestamp,
    Inserttimestamp
FROM
    [SEGMENT - Primary_Email_Send]
WHERE
    Senttimestamp = 'DEFAULT'