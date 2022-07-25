SELECT
    a.EventDate,
    (
        SELECT
            COUNT(*)
        FROM
            [Current_Day_total_Sent_Subscribers]
        WHERE
            (
                Domain LIKE '%gmail.com'
                OR Domain LIKE '%googlemail.com'
            )
            and EventDate = a.EventDate
    ) as [Gmail Count],
    (
        SELECT
            COUNT(*)
        FROM
            [Current_Day_total_Sent_Subscribers]
        WHERE
            (
                Domain LIKE '%yahoo.co.uk'
                OR Domain LIKE '%sky.com'
                OR Domain LIKE '%aol.com'
                OR Domain LIKE '%rocketmail.com'
                OR Domain LIKE '%verizon.com'
                OR Domain LIKE '%ymail.com'
                OR Domain LIKE '%yahoo.com'
                OR Domain LIKE '%btinternet.com'
            )
            and EventDate = a.EventDate
    ) as [Yahoo Count],
    (
        SELECT
            COUNT(*)
        FROM
            [Current_Day_total_Sent_Subscribers]
        WHERE
            (
                Domain LIKE '%hotmail.com'
                OR Domain LIKE '%live.com'
                OR Domain LIKE '%msn.com'
                OR Domain LIKE '%live.co.uk'
                OR Domain LIKE '%hotmail.co.uk'
                OR Domain LIKE '%outlook.com'
            )
            and EventDate = a.EventDate
    ) as [Outlook Count],
    (
        SELECT
            COUNT(*)
        FROM
            [Current_Day_total_Sent_Subscribers]
        WHERE
            Domain NOT LIKE '%hotmail.co.uk'
            And Domain NOT LIKE '%yahoo.co.uk'
            And Domain NOT LIKE '%gmail.com'
            And Domain NOT LIKE '%aol.com'
            And Domain NOT LIKE '%btinternet.com'
            And Domain NOT LIKE '%live.co.uk'
            And Domain NOT LIKE '%sky.com'
            And Domain NOT LIKE '%hotmail.com'
            And Domain NOT LIKE '%rocketmail.com'
            And Domain NOT LIKE '%yahoo.com'
            And Domain NOT LIKE '%live.com'
            And Domain NOT LIKE '%msn.com'
            And Domain NOT LIKE '%googlemail.com'
            And Domain NOT LIKE '%outlook.com'
            And Domain NOT LIKE '%ymail.com'
            And Domain NOT LIKE '%verizon.com'
            and EventDate = a.EventDate
    ) as [Others Count],
    (
        SELECT
            COUNT(*)
        FROM
            [Current_Day_total_Sent_Subscribers]
        WHERE
            EventDate = a.EventDate
    ) as [Total Count]
FROM
    (
        SELECT
            DISTINCT EventDate
        FROM
            [Current_Day_total_Sent_Subscribers]
    ) a