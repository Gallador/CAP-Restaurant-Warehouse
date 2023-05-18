sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'grammar/test/integration/FirstJourney',
		'grammar/test/integration/pages/GrammarList',
		'grammar/test/integration/pages/GrammarObjectPage'
    ],
    function(JourneyRunner, opaJourney, GrammarList, GrammarObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('grammar') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheGrammarList: GrammarList,
					onTheGrammarObjectPage: GrammarObjectPage
                }
            },
            opaJourney.run
        );
    }
);