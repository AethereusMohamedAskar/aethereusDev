SELECT
    DISTINCT s.SubscriberKey,
    CAST(s.EventDate AS Date) AS EventDate,
    s.Domain,
    s.JobID
FROM
    _sent s
WHERE
    CAST(s.EventDate AS DATE) = cast(getdate() as date)