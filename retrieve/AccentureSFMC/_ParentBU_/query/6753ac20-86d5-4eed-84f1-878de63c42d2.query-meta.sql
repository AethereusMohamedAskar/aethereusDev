select
    c.Id as Contact_ID,
    c.Name,
    c.Email
from
    Contact_Salesforce c
Where
    c.Phone = '888888'