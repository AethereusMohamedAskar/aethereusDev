SELECT
    EventDate,
    [Gmail Count Remainder],
    [Outlook Count Remainder],
    [Others Count Remainder],
    [Total Count Remainder],
    CASE
        WHEN [Yahoo Count Remainder] < 0 THEN 0
        ELSE [Yahoo Count Remainder]
    END as [Yahoo Count Remainder]
FROM
    [Remainder_Count_for_Current_Day_Send]