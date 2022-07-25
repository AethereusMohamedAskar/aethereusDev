SELECT
    DISTINCT EmailAddress AS EmailAddress,
    s.SubscriberKey
FROM
    _Sent s
    LEFT JOIN _Subscribers sub ON s.SubscriberKey = sub.SubscriberKey
    LEFT JOIN _Open o ON s.SubscriberKey = o.SubscriberKey
WHERE
    o.SubscriberKey IS NULL