# Blodtrykkmåling - Lab IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Blodtrykkmåling**

## Resource Profile: Blodtrykkmåling 

| | |
| :--- | :--- |
| *Official URL*:https://example.org/fhir/vidarure/lab-ig/StructureDefinition/mal-observation-blodtrykk | *Version*:0.1.0 |
| Draft as of 2025-01-31 | *Computable Name*:MalObservationBloodPressure |

 
Enkel profil for blodtrykksmåling 

**Usages:**

* Examples for this Profile: [Observation/Blodtrykk-1](Observation-Blodtrykk-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/no.vidarure.fhir.lab-ig|current/StructureDefinition/StructureDefinition-mal-observation-blodtrykk.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mal-observation-blodtrykk.csv), [Excel](StructureDefinition-mal-observation-blodtrykk.xlsx), [Schematron](StructureDefinition-mal-observation-blodtrykk.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mal-observation-blodtrykk",
  "url" : "https://example.org/fhir/vidarure/lab-ig/StructureDefinition/mal-observation-blodtrykk",
  "version" : "0.1.0",
  "name" : "MalObservationBloodPressure",
  "title" : "Blodtrykkmåling",
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
  "description" : "Enkel profil for blodtrykksmåling",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
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
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs",
          "display" : "Vital Signs"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "85354-9"
        }]
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://example.org/fhir/vidarure/lab-ig/StructureDefinition/mal-patient"]
      }]
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Observation.effective[x]:effectiveDateTime",
      "path" : "Observation.effective[x]",
      "sliceName" : "effectiveDateTime",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "max" : "0"
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "rules" : "open"
      },
      "min" : 2,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:systolisk",
      "path" : "Observation.component",
      "sliceName" : "systolisk",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:systolisk.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "8480-6"
        }]
      }
    },
    {
      "id" : "Observation.component:systolisk.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Observation.component:systolisk.value[x]:valueQuantity",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueQuantity",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:systolisk.value[x]:valueQuantity.value",
      "path" : "Observation.component.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:systolisk.value[x]:valueQuantity.unit",
      "path" : "Observation.component.value[x].unit",
      "min" : 1,
      "patternString" : "mmHg",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:systolisk.value[x]:valueQuantity.system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:systolisk.value[x]:valueQuantity.code",
      "path" : "Observation.component.value[x].code",
      "patternCode" : "mm[Hg]"
    },
    {
      "id" : "Observation.component:diastolisk",
      "path" : "Observation.component",
      "sliceName" : "diastolisk",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:diastolisk.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "8462-4"
        }]
      }
    },
    {
      "id" : "Observation.component:diastolisk.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Observation.component:diastolisk.value[x]:valueQuantity",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueQuantity",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:diastolisk.value[x]:valueQuantity.value",
      "path" : "Observation.component.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:diastolisk.value[x]:valueQuantity.unit",
      "path" : "Observation.component.value[x].unit",
      "min" : 1,
      "patternString" : "mmHg",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:diastolisk.value[x]:valueQuantity.system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:diastolisk.value[x]:valueQuantity.code",
      "path" : "Observation.component.value[x].code",
      "patternCode" : "mm[Hg]"
    }]
  }
}

```
