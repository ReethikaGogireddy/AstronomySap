using {  AstronomyThings } from './service';

annotate AstronomyThings.Planets with @(
    UI.LineItem:[
        {
            Value: name
        },
        {
            Value: place
        },
        {
            Value: diameter
        },
        {
            Value: mass
        },
        {
            Value: distancefromsun
        },
        {
            Value: hightemp
        },
        {
            Value: lowtemp
        }
       
    ],
     UI.FieldGroup #Planets : {
        $Type : 'UI.FieldGroupType',
        Data : [
        {
            Value: name
        },
        {
            Value: place
        },
        {
            Value: diameter
        },
        {
            Value: mass
        },
        {
            Value: distancefromsun
        },
        {
            Value: hightemp
        },
        {
            Value: lowtemp
        }
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'PlanetsFacet',
            Label : 'Planets',
            Target : '@UI.FieldGroup#Planets',
        },
    ],

);