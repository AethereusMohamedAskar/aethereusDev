Select
    b.subscriberKey,
    s.emailaddress,
    b.EventDate,
    b.jobID,
    b.bounceCategory
from
    _bounce b
    join _subscribers s on b.subscriberId = s.subscriberId
where
    b.isUnique = 1
    AND b.bounceCategory = 'Hard bounce'
    AND b.EventDate > dateadd(d, -10, getdate())