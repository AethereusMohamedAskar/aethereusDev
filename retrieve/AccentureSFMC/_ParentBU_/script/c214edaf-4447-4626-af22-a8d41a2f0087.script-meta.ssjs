Platform.Load('core', '1');

var prox = new Script.Util.WSProxy();
var res;
var autoSupListDE = '61D7967B-23B8-4601-81D5-43FE46E2813D';

function clearAutoSuppressionList() {
    var action = 'ClearData';
    var options = {};
    var props = {
        CustomerKey: autoSupListDE
    };
    var res = prox.performItem('DataExtension', props, action, options);
}

function main() {
    clearAutoSuppressionList();
}

main();
