SELECT
    (t2.[Gmail Count] - t1.[Gmail Count]) AS [Gmail Count remainder],
    (t2.[Yahoo Count] - t1.[Yahoo Count]) AS [Yahoo Count remainder],
    (t2.[Outlook Count] - t1.[Outlook Count]) AS [Outlook Count remainder],
    (t2.[Others Count] - t1.[Others Count]) AS [Others Count remainder],
    (t2.[Total Count] - t1.[Total Count]) AS [Total Count remainder],
    t1.EventDate
FROM
    [Domain_wise_Count_from_Sent_DV] t1
    CROSS JOIN [Day_Wise_Expected_Count] t2
WHERE
    t1.EventDate = t2.[Send Date]