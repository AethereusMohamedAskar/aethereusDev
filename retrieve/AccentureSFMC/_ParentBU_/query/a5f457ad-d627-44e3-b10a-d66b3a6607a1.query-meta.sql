Select
    b.subscriberKey,
    s.emailaddress,
    b.EventDate,
    b.jobID,
    b.BounceCategory
from
    _bounce b
    join _subscribers s on b.subscriberid = s.subscriberid
where
    b.isunique = 1
    AND b.bouncecategory = 'Hard bounce'
    AND b.EventDate > dateadd(d, -120, getdate())