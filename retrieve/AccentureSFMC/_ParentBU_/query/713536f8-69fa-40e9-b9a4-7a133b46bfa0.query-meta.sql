Select
    CustomerID,
    Email,
    FirstName,
    LastName,
    BIrthday
From
    Bday_Journey_POC_Kavitha
Where
    Month(BIrthday) = Month(GetDate())
    and DATEPART(d, BIrthday) = DATEPART(d, GetDate())