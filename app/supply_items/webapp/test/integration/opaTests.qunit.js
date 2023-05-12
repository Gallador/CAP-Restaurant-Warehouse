sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'supplyitems/test/integration/FirstJourney',
		'supplyitems/test/integration/pages/SupplyItemsList',
		'supplyitems/test/integration/pages/SupplyItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, SupplyItemsList, SupplyItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('supplyitems') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSupplyItemsList: SupplyItemsList,
					onTheSupplyItemsObjectPage: SupplyItemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);