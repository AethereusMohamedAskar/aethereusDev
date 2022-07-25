select
    m.[Contact Key],
    m.Phone,
    m.Locale,
    m.FirstName,
    m.[Email Address],
    d.OptedIn,
    d.Interest
from
    [Mobile Connect Users] m
    full outer join [Mobile Connect Data] d on m.[Email Address] = d.Email