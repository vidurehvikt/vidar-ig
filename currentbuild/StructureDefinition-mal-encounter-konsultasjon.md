# Konsultasjon - Lab IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Konsultasjon**

## Resource Profile: Konsultasjon 

| | |
| :--- | :--- |
| *Official URL*:https://example.org/fhir/vidarure/lab-ig/StructureDefinition/mal-encounter-konsultasjon | *Version*:0.1.0 |
| Draft as of 2025-01-31 | *Computable Name*:MalEncounterConsultation |

 
Enkel profil for konsultasjon der målinger gjennomfores 

**Usages:**

* Refer to this Profile: [Blodtrykkmåling](StructureDefinition-mal-observation-blodtrykk.md)
* Examples for this Profile: [Encounter/Konsultasjon-1](Encounter-Konsultasjon-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/no.vidarure.fhir.lab-ig|current/StructureDefinition/StructureDefinition-mal-encounter-konsultasjon.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mal-encounter-konsultasjon.csv), [Excel](StructureDefinition-mal-encounter-konsultasjon.xlsx), [Schematron](StructureDefinition-mal-encounter-konsultasjon.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mal-encounter-konsultasjon",
  "url" : "https://example.org/fhir/vidarure/lab-ig/StructureDefinition/mal-encounter-konsultasjon",
  "version" : "0.1.0",
  "name" : "MalEncounterConsultation",
  "title" : "Konsultasjon",
  "status" : "draft",
  "date" : "2025-01-31",
  "publisher" : "Vidar Ure",
  "contact" : [{
    "name" : "Vidar Ure",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/vidurehvikt"
    }]
  }],
  "description" : "Enkel profil for konsultasjon der målinger gjennomfores",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter"
    },
    {
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.class",
      "path" : "Encounter.class",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.subject",
      "path" : "Encounter.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://example.org/fhir/vidarure/lab-ig/StructureDefinition/mal-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.period",
      "path" : "Encounter.period",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
