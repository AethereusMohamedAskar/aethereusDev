select
    c.Id as contactId,
    c.AccountId,
    c.FirstName,
    c.LastName,
    c.Email,
    o.Abandoned_Cart__c,
    o.Brand__c,
    o.EffectiveDate,
    o.EndDate,
    o.ActivatedDate,
    o.PoDate,
    o.Converted_Date__c,
    o.Creation_Date__c,
    o.CreatedDate,
    o.TotalAmount
from
    Contact_Salesforce c
    Inner Join Order_Salesforce o on o.AccountId = c.AccountId
where
    o.Abandoned_Cart__c = 'False'
    And o.PoDate between '11-25-2020' and '12-10-2020'