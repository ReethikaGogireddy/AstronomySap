sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'planets/test/integration/FirstJourney',
		'planets/test/integration/pages/PlanetsList',
		'planets/test/integration/pages/PlanetsObjectPage'
    ],
    function(JourneyRunner, opaJourney, PlanetsList, PlanetsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('planets') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePlanetsList: PlanetsList,
					onThePlanetsObjectPage: PlanetsObjectPage
                }
            },
            opaJourney.run
        );
    }
);