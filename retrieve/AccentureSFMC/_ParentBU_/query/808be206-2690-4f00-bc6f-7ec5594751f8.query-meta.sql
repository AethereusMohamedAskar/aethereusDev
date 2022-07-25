select
    A.id,
    A.Name,
    A.Email,
    A.City
from
    [Collect Automatio Data] A
    left join [importData] i on A.Email = i.Email