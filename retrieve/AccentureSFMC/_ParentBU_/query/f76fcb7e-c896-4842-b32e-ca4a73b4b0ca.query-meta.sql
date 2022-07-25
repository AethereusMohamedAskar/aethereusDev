SELECT
    A.Subscriberkey,
    A.EmailAddress,
    A.FirstName,
    A.LastName,
    A.INSERT_TIMESTAMP,
    A.SENT_TIMESTAMP
FROM
    OTHERSSEG_IP_Warming_Campaign A
    INNER JOIN [SECONDMASTER - TotalRecords_from_domains] B ON B.Subscriberkey = A.Subscriberkey
WHERE
    A.SENT_TIMESTAMP = 'DEFAULT'