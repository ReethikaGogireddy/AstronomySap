using {  AstronomyThings } from './service';

annotate AstronomyThings.ArtificialSatellites with @(
    UI.LineItem:[
        {
            Value: name
        },
        {
            Value: forplanet
        },
        {
            Value: weight
        },
        {
            Value: fuel
        },
    ],
     UI.FieldGroup #ArtificialSatellites : {
        $Type : 'UI.FieldGroupType',
        Data : [
        {
            Value: name
        },
        {
            Value: forplanet
        },
        {
            Value: weight
        },
        {
            Value: fuel
        },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'ArtificialSatellitesFacet',
            Label : 'ArtificialSatellites',
            Target : '@UI.FieldGroup#ArtificialSatellites',
        },
    ],

);
