sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'sap/fe/app/flightfe/test/integration/FirstJourney',
		'sap/fe/app/flightfe/test/integration/pages/FlightList',
		'sap/fe/app/flightfe/test/integration/pages/FlightObjectPage'
    ],
    function(JourneyRunner, opaJourney, FlightList, FlightObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('sap/fe/app/flightfe') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheFlightList: FlightList,
					onTheFlightObjectPage: FlightObjectPage
                }
            },
            opaJourney.run
        );
    }
);