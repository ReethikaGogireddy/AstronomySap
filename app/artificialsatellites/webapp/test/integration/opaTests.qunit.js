sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'artificialsatellites/test/integration/FirstJourney',
		'artificialsatellites/test/integration/pages/ArtificialSatellitesList',
		'artificialsatellites/test/integration/pages/ArtificialSatellitesObjectPage'
    ],
    function(JourneyRunner, opaJourney, ArtificialSatellitesList, ArtificialSatellitesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('artificialsatellites') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheArtificialSatellitesList: ArtificialSatellitesList,
					onTheArtificialSatellitesObjectPage: ArtificialSatellitesObjectPage
                }
            },
            opaJourney.run
        );
    }
);