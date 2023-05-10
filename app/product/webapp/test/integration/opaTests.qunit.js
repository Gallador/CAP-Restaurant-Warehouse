sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'product/test/integration/FirstJourney',
		'product/test/integration/pages/ProductList',
		'product/test/integration/pages/ProductObjectPage',
		'product/test/integration/pages/SupplyItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProductList, ProductObjectPage, SupplyItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('product') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProductList: ProductList,
					onTheProductObjectPage: ProductObjectPage,
					onTheSupplyItemsObjectPage: SupplyItemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);