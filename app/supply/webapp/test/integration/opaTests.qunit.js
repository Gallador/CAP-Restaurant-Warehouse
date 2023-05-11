sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'supply/test/integration/FirstJourney',
		'supply/test/integration/pages/SupplyList',
		'supply/test/integration/pages/SupplyObjectPage'
    ],
    function(JourneyRunner, opaJourney, SupplyList, SupplyObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('supply') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSupplyList: SupplyList,
					onTheSupplyObjectPage: SupplyObjectPage
                }
            },
            opaJourney.run
        );
    }
);