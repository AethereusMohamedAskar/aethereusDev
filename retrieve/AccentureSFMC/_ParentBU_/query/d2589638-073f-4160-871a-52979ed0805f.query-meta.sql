SELECT
    EventDate,
    [Yahoo Count Remainder],
    [Outlook Count Remainder],
    [Others Count Remainder],
    [Total Count Remainder],
    CASE
        WHEN [Gmail Count Remainder] < 0 THEN 0
        ELSE [Gmail Count Remainder]
    END as [Gmail Count Remainder]
FROM
    [Remainder_Count_for_Current_Day_Send]