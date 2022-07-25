SELECT
    EventDate,
    [Yahoo Count Remainder],
    [Outlook Count Remainder],
    [Gmail Count Remainder],
    [Total Count Remainder],
    CASE
        WHEN [Others Count Remainder] < 0 THEN 0
        ELSE [Others Count Remainder]
    END as [Others Count Remainder]
FROM
    [Remainder_Count_for_Current_Day_Send]