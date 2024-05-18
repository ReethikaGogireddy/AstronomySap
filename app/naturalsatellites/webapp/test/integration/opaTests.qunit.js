sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'naturalsatellites/test/integration/FirstJourney',
		'naturalsatellites/test/integration/pages/NaturalSatellitesList',
		'naturalsatellites/test/integration/pages/NaturalSatellitesObjectPage'
    ],
    function(JourneyRunner, opaJourney, NaturalSatellitesList, NaturalSatellitesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('naturalsatellites') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheNaturalSatellitesList: NaturalSatellitesList,
					onTheNaturalSatellitesObjectPage: NaturalSatellitesObjectPage
                }
            },
            opaJourney.run
        );
    }
);