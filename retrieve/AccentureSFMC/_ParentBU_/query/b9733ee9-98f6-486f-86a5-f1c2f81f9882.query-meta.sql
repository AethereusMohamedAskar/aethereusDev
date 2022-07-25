Select
    o.[Customer_ID],
    o.[Loan_Type],
    p.[Loan Amount],
    p.[Name],
    o.[Email Address],
    o.[Phone No],
    o.[City]
From
    [Vitas Demo] o
    Join [Vitas Customer Info] p on o.[Customer_ID] = p.[Customer_ID]
Where
    o.[Loan_Type] = 'Home Improvement'
    AND p.[Loan Amount] > 100