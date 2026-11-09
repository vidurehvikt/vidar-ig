Profile:     MalPatient
Id:          mal-patient
Parent:      NoBasisPatient
Title:       "Pasient"
Description: "Informasjon om pasienten, basert på no-basis."
* ^status = #draft
* ^date = "2025-01-22"
* ^publisher = "Vidar Ure"

* identifier MS
* name.family MS

// Eksempel på norsk pasient med fødselsnummer og adresse

Instance: Pasient-1
InstanceOf: MalPatient
Description: "Eksempel på norsk pasient med fødselsnummer, navn og kontaktinformasjon"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><strong>Vidar Hartveit Ure</strong></p><p>Fødselsnummer: 31039453453</p><p>Kjønn: Mann</p><p>Fødselsdato: 31. mars 1994</p><p>Telefon: +47 91 12 13 45 (mobil)</p><p>E-post: vidar.hartveit.ure@helse-vest-ikt.no</p><p>Adresse: Haukedalen 140, 5121 Ulset, Norge</p></div>"
* identifier.system = "urn:oid:2.16.578.1.12.4.1.4.1"
* identifier.value = "31039453453"
* name.family = "Ure"
* name.given[0] = "Vidar"
* name.given[1] = "Hartveit"
* telecom[0].system = #phone
* telecom[0].value = "+47 91 12 13 45"
* telecom[0].use = #mobile
* telecom[1].system = #email
* telecom[1].value = "vidar.hartveit.ure@helse-vest-ikt.no"
* gender = #male
* birthDate = "1994-03-31"
* address.line = "Haukedalen 140"
* address.city = "Ulset"
* address.postalCode = "5121"
* address.country = "NO"
