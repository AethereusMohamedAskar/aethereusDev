Platform.Load('core', '1.1.5');

var today = Format(Now(), 'dd MMMM yyyy 00:00');
var GmailCount = Platform.Function.Lookup(
    'Remainder_Count_for_Current_Day_Send',
    'Gmail Count Remainder',
    'EventDate',
    today
);
var GmailexistingQuery_Key = '1b57d823-f8de-4720-aa31-c35cd5cfb1b6';
var GmailexportQueryText =
    'SELECT Top ' +
    GmailCount +
    " A.Subscriberkey, A.EmailAddress, A.FirstName, A.LastName, A.INSERT_TIMESTAMP, A.SENT_TIMESTAMP FROM GMAILSEG_IP_Warming_Campaign A WHERE A.SENT_TIMESTAMP = 'DEFAULT' AND A.Subscriberkey NOT IN (SELECT SubscriberKey FROM Current_Day_total_Sent_Subscribers)";
var Gmailqd = QueryDefinition.Init(GmailexistingQuery_Key);
var Gmailupdate_status = Gmailqd.Update({ QueryText: GmailexportQueryText });

var YahooCount = Platform.Function.Lookup(
    'Remainder_Count_for_Current_Day_Send',
    'Yahoo Count Remainder',
    'EventDate',
    today
);
var YahooexistingQuery_Key = '264ff6f1-c67e-498c-b9c4-558870eebf4c';
var YahooexportQueryText =
    'SELECT Top ' +
    YahooCount +
    " A.Subscriberkey, A.EmailAddress, A.FirstName, A.LastName, A.INSERT_TIMESTAMP, A.SENT_TIMESTAMP FROM GMAILSEG_IP_Warming_Campaign A WHERE A.SENT_TIMESTAMP = 'DEFAULT' AND A.Subscriberkey NOT IN (SELECT SubscriberKey FROM Current_Day_total_Sent_Subscribers)";
var Yahooqd = QueryDefinition.Init(YahooexistingQuery_Key);
var Yahooupdate_status = Yahooqd.Update({ QueryText: YahooexportQueryText });

var OutlookCount = Platform.Function.Lookup(
    'Remainder_Count_for_Current_Day_Send',
    'Outlook Count Remainder',
    'EventDate',
    today
);
var OutlookexistingQuery_Key = '90d615c4-ab94-472e-8fb3-f3cc61c9efe5';
var OutlookexportQueryText =
    'SELECT Top ' +
    OutlookCount +
    " A.Subscriberkey, A.EmailAddress, A.FirstName, A.LastName, A.INSERT_TIMESTAMP, A.SENT_TIMESTAMP FROM GMAILSEG_IP_Warming_Campaign A WHERE A.SENT_TIMESTAMP = 'DEFAULT' AND A.Subscriberkey NOT IN (SELECT SubscriberKey FROM Current_Day_total_Sent_Subscribers)";
var Outlookqd = QueryDefinition.Init(OutlookexistingQuery_Key);
var Outlookupdate_status = Outlookqd.Update({ QueryText: OutlookexportQueryText });

var OthersCount = Platform.Function.Lookup(
    'Remainder_Count_for_Current_Day_Send',
    'Others Count Remainder',
    'EventDate',
    today
);
var OthersexistingQuery_Key = '17cab0e0-cca4-463a-8dfd-d6362eef67ff';
var OthersexportQueryText =
    'SELECT Top ' +
    OthersCount +
    " A.Subscriberkey, A.EmailAddress, A.FirstName, A.LastName, A.INSERT_TIMESTAMP, A.SENT_TIMESTAMP FROM GMAILSEG_IP_Warming_Campaign A WHERE A.SENT_TIMESTAMP = 'DEFAULT' AND A.Subscriberkey NOT IN (SELECT SubscriberKey FROM Current_Day_total_Sent_Subscribers)";
var Othersqd = QueryDefinition.Init(OthersexistingQuery_Key);
var Othersupdate_status = Othersqd.Update({ QueryText: OthersexportQueryText });
