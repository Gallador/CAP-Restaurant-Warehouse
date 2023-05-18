sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'order',
            componentId: 'OrderList',
            entitySet: 'Order'
        },
        CustomPageDefinitions
    );
});