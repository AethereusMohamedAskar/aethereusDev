Select
    distinct m.Name,
    m.ID,
    c.DOB,
    m.EmailAddress
From
    _Subscribers as s
    join Mother_DE as m on m.EmailAddress = s.EmailAddress
    join Child_DE as c on m.ID = c.ID
where
    c.DOB = CAST(GETDATE() AS Date)