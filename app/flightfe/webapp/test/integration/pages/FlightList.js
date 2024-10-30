sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'sap.fe.app.flightfe',
            componentId: 'FlightList',
            contextPath: '/Flight'
        },
        CustomPageDefinitions
    );
});