Platform.Load('core', '1');

// create DE
var timeStamp = Math.round(new Date().getTime() / 1000);

var deKey = 'BACKUP_A';
var deName = 'Backup DE ';
try {
    var obj = {
        CustomerKey: deKey,
        Name: deName,
        Fields: [
            {
                Name: 'SubscriberKey',
                FieldType: 'Text',
                IsPrimaryKey: true,
                MaxLength: 50,
                IsRequired: true
            },
            { Name: 'FirstName', FieldType: 'Text', MaxLength: 50 },
            { Name: 'LastName', FieldType: 'Text', MaxLength: 50 },
            { Name: 'EmailAddress', FieldType: 'EmailAddress', IsRequired: true }
            //{ "Name" : "Phone", "FieldType" : "Phone", "MaxLength" : 50 },
            //{ "Name" : "Gender", "FieldType" : "Text", "MaxLength" : 50}
        ],
        SendableInfo: {
            Field: { Name: 'SubscriberKey', FieldType: 'Text' },
            RelatesOn: 'Subscriber Key'
        }
    };

    var de = DataExtension.Add(obj);

    // retrieve DE records

    var sourceDE = DataExtension.Init('Master_Subscribers');
    var data = sourceDE.Rows.Retrieve();

    // add source rows to target DE

    var targetDE = DataExtension.Init(deKey);
    var result = targetDE.Rows.Add(data);
    console.log(result);
    Write('Result : ' + Stringify(result));
} catch (err) {
    Write(' Error message: ' + Stringify(err) + '<br>');
}
