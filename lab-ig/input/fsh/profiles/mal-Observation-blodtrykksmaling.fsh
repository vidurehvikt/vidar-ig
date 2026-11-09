Profile:     MalObservationBloodPressure
Id:          mal-observation-blodtrykk
Parent:      Observation
Title:       "Blodtrykkmåling"
Description: "Enkel profil for blodtrykksmåling"
* ^status = #draft
* ^date = "2025-01-31"
* ^publisher = "Vidar Ure"

* subject 1..1
* subject only Reference(MalPatient) // Pasienten som blodtrykket er målt på
* encounter 1..1 MS
* encounter only Reference(MalEncounterConsultation) // Konsultasjonen der malingen ble gjort
* effectiveDateTime 1..1 MS // Dato og tid for målingen
* category 1..1 MS
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 // Blood pressure panel with all children optional
* value[x] 0..0

// Define slicing
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

// Define components
* component 2..* MS
* component contains
    systolisk 1..1 MS and
    diastolisk 1..1 MS

// Systolic
* component[systolisk].code = $loinc#8480-6
* component[systolisk].valueQuantity 1..1 MS
* component[systolisk].valueQuantity.value 1..1 MS
* component[systolisk].valueQuantity.unit 1..1 MS
* component[systolisk].valueQuantity.system = $ucum
* component[systolisk].valueQuantity.code = #mm[Hg]
* component[systolisk].valueQuantity.unit = "mmHg"

// Diastolic
* component[diastolisk].code = $loinc#8462-4
* component[diastolisk].valueQuantity 1..1 MS
* component[diastolisk].valueQuantity.value 1..1 MS
* component[diastolisk].valueQuantity.unit 1..1 MS
* component[diastolisk].valueQuantity.system = $ucum
* component[diastolisk].valueQuantity.code = #mm[Hg]
* component[diastolisk].valueQuantity.unit = "mmHg"

// Eksempel på blodtrykksmåling med systolisk/diastolisk verdi

Instance: Blodtrykk-1
InstanceOf: MalObservationBloodPressure
Description: "Eksempel på blodtrykksmåling"
* status = #final
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><strong>Blodtrykk</strong></p><p>Pasient: Pasient-1</p><p>Tidspunkt: 09.11.2026 08:30</p><p>Systolisk: 120 mmHg</p><p>Diastolisk: 78 mmHg</p></div>"
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9
* subject = Reference(Pasient-1)
* encounter = Reference(Konsultasjon-1)
* effectiveDateTime = "2026-11-09T08:30:00+01:00"
* component[systolisk].code = $loinc#8480-6
* component[systolisk].valueQuantity.value = 120
* component[systolisk].valueQuantity.unit = "mmHg"
* component[systolisk].valueQuantity.system = $ucum
* component[systolisk].valueQuantity.code = #mm[Hg]
* component[diastolisk].code = $loinc#8462-4
* component[diastolisk].valueQuantity.value = 78
* component[diastolisk].valueQuantity.unit = "mmHg"
* component[diastolisk].valueQuantity.system = $ucum
* component[diastolisk].valueQuantity.code = #mm[Hg]