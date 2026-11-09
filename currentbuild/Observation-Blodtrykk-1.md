# Blodtrykk-1 - Lab IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Blodtrykk-1**

## Example Observation: Blodtrykk-1

Profile: [Blodtrykkmåling](StructureDefinition-mal-observation-blodtrykk.md)

**status**: Final

**code**: Blood pressure panel with all children optional

**subject**: [Vidar Hartveit Ure Male, DoB: 1994-03-31 ( urn:oid:2.16.578.1.12.4.1.4.1#Foedselsnummer#31039453453)](Patient-Pasient-1.md)

**effective**: 2026-11-09 08:30:00+0100

> **component****code**: Systolic blood pressure**value**: 120(unit mm[Hg] from http://unitsofmeasure.org.) (Details: unitsofmeasure.org. codemm[Hg] = 'mm[Hg]')

> **component****code**: Diastolic blood pressure**value**: 78(unit mm[Hg] from http://unitsofmeasure.org.) (Details: unitsofmeasure.org. codemm[Hg] = 'mm[Hg]')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Blodtrykk-1",
  "meta" : {
    "profile" : ["https://example.org/fhir/vidarure/lab-ig/StructureDefinition/mal-observation-blodtrykk"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "85354-9"
    }]
  },
  "subject" : {
    "reference" : "Patient/Pasient-1"
  },
  "effectiveDateTime" : "2026-11-09T08:30:00+01:00",
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "8480-6"
      }]
    },
    "valueQuantity" : {
      "value" : 120,
      "system" : "http://unitsofmeasure.org.",
      "code" : "mm[Hg]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "8462-4"
      }]
    },
    "valueQuantity" : {
      "value" : 78,
      "system" : "http://unitsofmeasure.org.",
      "code" : "mm[Hg]"
    }
  }]
}

```
