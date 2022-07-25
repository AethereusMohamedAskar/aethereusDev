Select
    distinct m.Name,
    m.ID,
    c.DOB,
    m.EmailAddress
From
    Mother_DE as m
    join Child_DE as c on m.ID = c.ID