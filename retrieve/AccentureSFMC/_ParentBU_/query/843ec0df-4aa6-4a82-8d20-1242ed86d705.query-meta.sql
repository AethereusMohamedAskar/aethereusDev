SELECT
    DISTINCT EmailAddress AS [Email Address]
FROM
    _Sent s
    LEFT JOIN _Subscribers sub ON s.SubscriberKey = sub.SubscriberKey
    LEFT JOIN _Open o ON s.SubscriberKey = o.SubscriberKey
WHERE
    o.SubscriberKey IS NULL