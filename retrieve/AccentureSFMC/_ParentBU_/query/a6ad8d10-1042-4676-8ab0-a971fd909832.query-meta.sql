Select
    o.[Customer_ID],
    o.[Email_ID],
    p.[Product_Name],
    k.[Loyalty Member]
From
    Customer_Basic_Details o
    Join Customer_Product_Purchase p on o.[Customer_ID] = p.[Customer_ID]
    Join Customer_Behaviour_Details k on o.[Customer_ID] = k.[Customer_ID]
Where
    k.[Loyalty Member] = 'Gold'