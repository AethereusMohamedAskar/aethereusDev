Platform.Load('Core', '1');
//AUTHENTICATE
var url = 'https://mcfyfwscx0zgzfvrhzpbd0vv9kj1.auth.marketingcloudapis.com/v2/token';
var contentType = 'application/json';
var payload =
    '{"grant_type": "client_credentials","client_id": "n2hq350ius2i90icbzwofidd","client_secret": "loYsFhfJQxN2gupVbr1YbvTN","account_id":"514003648"}';

var accessTokenResult = HTTP.Post(url, contentType, payload);
var accessToken = Platform.Function.ParseJSON(accessTokenResult['Response'][0]).access_token;

if (accessToken != '') {
    //EXECUTE
    try {
        var deleteUrl =
            'https://mcfyfwscx0zgzfvrhzpbd0vv9kj1.rest.marketingcloudapis.com/contacts/v1/contacts/actions/delete?type=listReference';
        var payload1 =
            '{"deleteOperationType": "ContactAndAttributes","targetList": {"listType": {"listTypeID": 3},"listKey": "[AD900E4C-B957-4EE3-AE0D-F2472FE14762]"},"deleteListWhenCompleted": false,"deleteListContentsWhenCompleted": false}';
        var headerNames = ['Authorization'];
        var s1 = 'Bearer ';
        var headerValues = [s1.concat(accessToken)];
        var result = HTTP.Post(deleteUrl, contentType, payload1, headerNames, headerValues);
    } catch (ex) {
        Write('Exception Error: ' + Stringify(ex));
    }
}
