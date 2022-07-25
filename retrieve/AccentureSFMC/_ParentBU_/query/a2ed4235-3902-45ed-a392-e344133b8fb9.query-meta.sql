select
    Distinct D.Id,
    D.Email
from
    _Open as S
    left join _Subscribers as B on S.SubscriberKey = B.SubscriberKey
    left join Demo_Contacts as D On B.EmailAddress = D.Email
Where
    JobID = '309978'