# Konsultasjon-1 - Lab IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Konsultasjon-1**

## Example Encounter: Konsultasjon-1

**Konsultasjon**

Pasient: Pasient-1

Status: Avsluttet

Tidspunkt: 09.11.2026 08:20 - 08:40

Arsak: Blodtrykksmaling



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "Konsultasjon-1",
  "meta" : {
    "profile" : ["https://example.org/fhir/vidarure/lab-ig/StructureDefinition/mal-encounter-konsultasjon"]
  },
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "subject" : {
    "reference" : "Patient/Pasient-1"
  },
  "period" : {
    "start" : "2026-11-09T08:20:00+01:00",
    "end" : "2026-11-09T08:40:00+01:00"
  },
  "reasonCode" : [{
    "text" : "Blodtrykksmaling"
  }]
}

```
