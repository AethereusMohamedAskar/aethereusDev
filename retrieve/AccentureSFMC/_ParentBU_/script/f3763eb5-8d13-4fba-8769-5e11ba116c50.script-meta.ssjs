Platform.Load('core', '1.1.1');
try {
    var deKey = 'E26D5DEE-3505-42C5-A5B0-7960E56F2B80', // replace with the external key of the DE holding the query results
        prox = new Script.Util.WSProxy(),
        objectType = 'DataExtensionObject[' + deKey + ']',
        cols = ['subscriberkey', 'emailaddress', 'status'],
        moreData = true,
        reqID = null,
        numItems = 0;

    while (moreData) {
        moreData = false;
        var data =
            reqID == null ? prox.retrieve(objectType, cols) : prox.getNextBatch(objectType, reqID);

        if (data != null) {
            moreData = data.HasMoreRows;
            reqID = data.RequestID;
            if (data && data.Results) {
                for (var i = 0; i < data.Results.length; i++) {
                    var subkey = data.Results[i].Properties[0].Value,
                        email = data.Results[i].Properties[1].Value,
                        status = data.Results[i].Properties[2].Value;

                    var sub = {
                        SubscriberKey: subkey,
                        EmailAddress: email,
                        Status: status,
                        Lists: [
                            {
                                ID: '342' // input the ID of the All Subscribers list in your account
                            }
                        ]
                    };
                    var options = {
                        SaveOptions: [
                            {
                                PropertyName: '*',
                                SaveAction: 'UpdateAdd'
                            }
                        ]
                    };

                    var resp = prox.createItem('Subscriber', sub, options);

                    numItems++;
                }
            }
        }
    }
} catch (e) {
    //Write(Stringify(e));
}
