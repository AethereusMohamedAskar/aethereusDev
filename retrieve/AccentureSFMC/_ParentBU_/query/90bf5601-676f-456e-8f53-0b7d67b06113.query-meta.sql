SELECT
    EventDate,
    [Yahoo Count Remainder],
    [Outlook Count Remainder],
    [Others Count Remainder],
    [Gmail Count Remainder],
    CASE
        WHEN [Total Count Remainder] < 0 THEN 0
        ELSE [Total Count Remainder]
    END as [Total Count Remainder]
FROM
    [Remainder_Count_for_Current_Day_Send]