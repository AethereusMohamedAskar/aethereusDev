Select
    distinct m.Name,
    m.ID,
    c.DOB,
    m.EmailAddress,
    case
        when datediff(month, c.DOB, getdate()) = 12 then 'y1'
        when datediff(month, c.DOB, getdate()) = 24 then 'y2'
        when datediff(month, c.DOB, getdate()) = 36 then 'y3'
        else 'not matching'
    end as age
From
    Mother_DE as m
    join Child_DE as c on m.ID = c.ID