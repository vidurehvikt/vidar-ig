# Pasient-1 - Lab IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pasient-1**

## Example Patient: Pasient-1

**Vidar Hartveit Ure**

Fødselsnummer: 31039453453

Kjønn: Mann

Fødselsdato: 31. mars 1994

Telefon: +47 91 12 13 45 (mobil)

E-post: vidar.hartveit.ure@helse-vest-ikt.no

Adresse: Haukedalen 140, 5121 Ulset, Norge



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "Pasient-1",
  "meta" : {
    "profile" : ["https://example.org/fhir/vidarure/lab-ig/StructureDefinition/mal-patient"]
  },
  "identifier" : [{
    "system" : "urn:oid:2.16.578.1.12.4.1.4.1",
    "value" : "31039453453"
  }],
  "name" : [{
    "family" : "Ure",
    "given" : ["Vidar", "Hartveit"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+47 91 12 13 45",
    "use" : "mobile"
  },
  {
    "system" : "email",
    "value" : "vidar.hartveit.ure@helse-vest-ikt.no"
  }],
  "gender" : "male",
  "birthDate" : "1994-03-31",
  "address" : [{
    "line" : ["Haukedalen 140"],
    "city" : "Ulset",
    "postalCode" : "5121",
    "country" : "NO"
  }]
}

```
