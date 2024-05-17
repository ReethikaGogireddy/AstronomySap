using { com.astronomy.things as db } from '../db/schema';

service AstronomyThings {
    entity Planets as projection on db.Planets;
    entity ArtificialSatellites as projection on db.ArtificialSatellites;
    entity NaturalSatellites as projection on db.NaturalSatellites;
}

annotate AstronomyThings.Planets with @odata.draft.enabled;
annotate AstronomyThings.ArtificialSatellites with @odata.draft.enabled;
annotate AstronomyThings.NaturalSatellites with @odata.draft.enabled;
