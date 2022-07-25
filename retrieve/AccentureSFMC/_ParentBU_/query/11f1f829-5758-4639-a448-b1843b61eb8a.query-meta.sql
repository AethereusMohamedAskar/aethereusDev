Select
    Contact_key,
    Name,
    Email,
    Birthday
From
    PoC_Birthday
Where
    Month(Birthday) = Month(GetDate())
    and DATEPART(d, Birthday) = DATEPART(d, GetDate())