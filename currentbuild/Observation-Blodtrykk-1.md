# Blodtrykk-1 - Lab IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Blodtrykk-1**

## Example Observation: Blodtrykk-1

**Blodtrykk**

Pasient: Pasient-1

Tidspunkt: 09.11.2026 08:30

Systolisk: 120 mmHg

Diastolisk: 78 mmHg



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Blodtrykk-1",
  "meta" : {
    "profile" : ["https://example.org/fhir/vidarure/lab-ig/StructureDefinition/mal-observation-blodtrykk"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs",
      "display" : "Vital Signs"
    }]
  }],
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
      "unit" : "mmHg",
      "system" : "http://unitsofmeasure.org",
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
      "unit" : "mmHg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mm[Hg]"
    }
  }]
}

```
