SELECT
    Subscriberkey,
    EmailAddress,
    FirstName,
    LastName,
    INSERT_TIMESTAMP,
    GetDate() as SENT_TIMESTAMP
FROM
    [SECONDMASTER - TotalRecords_from_domains]
WHERE
    SENT_TIMESTAMP = 'DEFAULT'