Platform.Load('core', '1.1');

var DE = 'MyDE';

/* Create a new Data Extension */
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

/* Deleting old data */
try {
    var deleteDE = DataExtension.Init(DE);
    deleteDE.Rows.Remove(['Active'], ['True']);
    Write('(+) Old records were deleted.' + '<br>');
} catch (e) {
    Write('(!) No old records were deleted: ' + e + '<br>');
}

/* Insert new data */
try {
    Platform.Function.InsertData(DE, ['Id', 'MyData', 'Active'], ['1', 'Quick brown fox', 'True']);
    Platform.Function.InsertData(DE, ['Id', 'MyData', 'Active'], ['2', 'Big white bear', 'True']);
    Write('(+) New data was inserted successfully.' + '<br>');
} catch (err) {
    Write('(!) New data was not inserted. Error message: ' + err + '<br>');
}
