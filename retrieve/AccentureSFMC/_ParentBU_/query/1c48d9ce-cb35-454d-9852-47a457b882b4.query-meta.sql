Select
    o.[Customer_ID],
    o.[Email_ID],
    p.[Product_Name]
From
    Customer_Basic_Details o
    Left Join Customer_Product_Purchase p on o.[Customer_ID] = p.[Customer_ID]