Select
    s.SubscriberKey as SubscriberKey,
    sub.EmailAddress as Emailaddress,
    c.EventDate as Clickthroughdate,
    c.url as Linkclicked,
    c.LinkName as Alias,
    c.IsUnique as IsUnique
from
    _sent s
    left join _Subscribers sub on s.subscriberkey = sub.subscriberkey
    left join _Click c on s.subscriberkey = c.subscriberkey
where
    c.eventDate > dateadd(day, -1, getdate())
    and DATEDIFF(minute, s.eventdate, c.eventdate) >= 2