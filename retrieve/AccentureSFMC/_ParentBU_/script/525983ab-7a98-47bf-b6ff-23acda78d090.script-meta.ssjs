Platform.Load('core', '1.1');

var DE = 'MyDataExtensionSSJS2';

try {
    var obj = {
        CustomerKey: Platform.Function.GUID(),
        Name: DE,
        Fields: [
            { Name: 'Id', FieldType: 'Number', IsPrimaryKey: true, IsRequired: true },
            { Name: 'MyData', FieldType: 'Text', MaxLength: 50 },
            { Name: 'Active', FieldType: 'Boolean', DefaultValue: true }
        ]
    };
    DataExtension.Add(obj);
    Write('(+) Data Extension was created successfully.' + '<br>');
} catch (err) {
    Write('(!) Data Extension was not created. Error message: ' + err + '<br>');
}
