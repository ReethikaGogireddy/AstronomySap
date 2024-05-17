using {  AstronomyThings } from './service';

annotate AstronomyThings.NaturalSatellites with @(
    UI.LineItem:[
        {
            Value: name
        },
        {
            Value: forplanet
        },
        {
            Value: distance
        },
      
    ],
     UI.FieldGroup #NaturalSatellites : {
        $Type : 'UI.FieldGroupType',
        Data : [
        {
            Value: name
        },
        {
            Value: forplanet
        },
        {
            Value: distance
        },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'NaturalSatellitesFacet',
            Label : 'NaturalSatellites',
            Target : '@UI.FieldGroup#NaturalSatellites',
        },
    ],

);
