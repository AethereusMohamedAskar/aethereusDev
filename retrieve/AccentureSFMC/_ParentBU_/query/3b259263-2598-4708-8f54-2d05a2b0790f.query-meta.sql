Select
    o.subscriberKey,
    s.emailaddress,
    o.jobid,
    o.eventdate
from
    _open o
    join _subscribers s on o.subscriberid = s.subscriberid
where
    o.isunique = 1
    and o.EventDate > dateadd(d, -60, getdate())
    and o.subscriberkey like '%@%'