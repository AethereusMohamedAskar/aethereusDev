SELECT
    Top 100 A.Subscriberkey,
    A.EmailAddress,
    A.FirstName,
    A.LastName,
    A.INSERT_TIMESTAMP,
    A.SENT_TIMESTAMP
FROM
    GMAILSEG_IP_Warming_Campaign A
WHERE
    A.SENT_TIMESTAMP = 'DEFAULT'
    AND A.Subscriberkey NOT IN (
        SELECT
            SubscriberKey
        FROM
            Current_Day_total_Sent_Subscribers
    )