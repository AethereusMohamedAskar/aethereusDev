SELECT
    sfdc.Id as SubscriberKey,
    sfdc.Email as EmailAddress,
    allsub.Status as Status
FROM
    [Contact_Salesforce] as sfdc
    inner JOIN [_Subscribers] as allsub ON sfdc.Id = allsub.SubscriberKey