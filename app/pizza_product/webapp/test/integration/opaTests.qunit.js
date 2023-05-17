sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pizzaproduct/test/integration/FirstJourney',
		'pizzaproduct/test/integration/pages/PizzaProductList',
		'pizzaproduct/test/integration/pages/PizzaProductObjectPage'
    ],
    function(JourneyRunner, opaJourney, PizzaProductList, PizzaProductObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pizzaproduct') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePizzaProductList: PizzaProductList,
					onThePizzaProductObjectPage: PizzaProductObjectPage
                }
            },
            opaJourney.run
        );
    }
);