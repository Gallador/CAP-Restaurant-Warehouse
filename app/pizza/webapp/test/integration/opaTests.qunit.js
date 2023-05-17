sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pizza/test/integration/FirstJourney',
		'pizza/test/integration/pages/PizzaList',
		'pizza/test/integration/pages/PizzaObjectPage'
    ],
    function(JourneyRunner, opaJourney, PizzaList, PizzaObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pizza') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePizzaList: PizzaList,
					onThePizzaObjectPage: PizzaObjectPage
                }
            },
            opaJourney.run
        );
    }
);