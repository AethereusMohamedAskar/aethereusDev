select
    SubscriberKey as ContactID,
    EmailAddress
from
    _Subscribers
where
    Status = 'Unsubscribed'