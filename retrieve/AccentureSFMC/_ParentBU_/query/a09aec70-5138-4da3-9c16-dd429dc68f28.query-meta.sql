SELECT
    DISTINCT A.*,
    CAST(B.EventDate AS Date) AS EventDate,
    B.LinkName,
    CAST(C.DeliveredTime AS Date) AS DeliveredTime
FROM
    [SEGMENT - Primary_Email_Send] A
    JOIN _Click B ON A.Subscriberkey = B.SubscriberKey
    JOIN _Job C ON B.JobID = C.JobID
WHERE
    C.EmailID = 590
    AND Datediff(day, C.DeliveredTime, GetDate()) <= 21
    AND (
        LinkName = '20200409_whoweare'
        OR LinkName = '20200409_whatwedo'
        OR LinkName = '20200409_ipofferings'
        OR LinkName = '20200409_blogs'
    )