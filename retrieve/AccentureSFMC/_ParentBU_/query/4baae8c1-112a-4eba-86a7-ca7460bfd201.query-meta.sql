select
    EmailAddress
from
    _Subscribers as S
    join _Bounce as B on S.SubscriberID = B.SubscriberID
where
    BounceCategory = 'Hard bounce'