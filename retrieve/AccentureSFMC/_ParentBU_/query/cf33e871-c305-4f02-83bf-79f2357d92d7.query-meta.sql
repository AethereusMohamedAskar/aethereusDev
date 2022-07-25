select
    T.Name,
    T.Email,
    T.Country_code,
    dateadd(
        second,
        Tz.Time_Difference_in_Seconds_for_SFMC,
        T.SendTime
    ) as [ConvertedTime]
from
    Timezone_POC as T
    JOIN Timezone as Tz on T.Country_code = Tz.Country_code