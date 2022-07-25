SELECT
    EventDate,
    [Yahoo Count Remainder],
    [Gmail Count Remainder],
    [Others Count Remainder],
    [Total Count Remainder],
    CASE
        WHEN [Outlook Count Remainder] < 0 THEN 0
        ELSE [Outlook Count Remainder]
    END as [Outlook Count Remainder]
FROM
    [Remainder_Count_for_Current_Day_Send]