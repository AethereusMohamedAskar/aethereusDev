select
    CustomerKey,
    FirstName,
    LastName,
    Platform,
    [System Token],
    [Device ID],
    Channel,
    Email,
    locale,
    Mobile,
    substatus,
    Date
from
    Test_DE_ePaylater
where
    substatus = 'tnc accepted'
    and Date = DATEADD(MINUTE, -60, getdate())