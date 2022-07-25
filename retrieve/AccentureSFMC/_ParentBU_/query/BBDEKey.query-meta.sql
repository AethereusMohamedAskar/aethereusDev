Select
    b.SubscriberKey,
    s.EmailAddress,
    b.EventDate,
    b.JobID,
    b.BounceCategory
from
    _bounce b
    join _subscribers s on b.subscriberId = s.subscriberID
where
    b.isUnique = 1
    AND b.bouncecategory = 'Block bounce'
    AND b.EventDate > dateadd(d, -60, getdate())