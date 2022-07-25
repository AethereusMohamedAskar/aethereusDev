select
    T.Name as Name,
    T.Email as Email,
    T.Country_code as Country_code,
    dateadd(
        second,
        Tz.Time_Difference_in_Seconds_For_SFMC,
        T.SendTime
    ) as [ConvertedSendTime]
from
    Timezone_POC as T
    JOIN Timezone as Tz on T.Country_code = Tz.Country_code