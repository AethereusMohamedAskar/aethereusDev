select
    T.Name as Name,
    T.Email as Email,
    T.Country_code as Country_code,
    getdate() as [SendTime]
from
    Timezone_POC as T