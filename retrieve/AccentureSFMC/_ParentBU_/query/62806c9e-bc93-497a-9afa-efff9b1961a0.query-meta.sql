select
    c.Id as contactId,
    c.FirstName,
    c.LastName,
    c.Email,
    o.Abandoned_Cart__c,
    o.Brand__c,
    o.CreatedDate,
    o.PoDate
from
    Contact_Salesforce c
    Inner Join Order_Salesforce o on o.AccountId = c.AccountId
where
    o.Abandoned_Cart__c = 'False'
    And o.PoDate >= DateAdd(day, -150, getDate())