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
* effectiveDateTime 1..1 MS // Dato og tid for målingen
* code = $loinc#85354-9 // Blood pressure panel with all children optional
* value[x] 0..0

// Component slicing
* component 2..* MS
* component contains
    systolisk 1..1 MS and
    diastolisk 1..1 MS

// Slicing discriminators
* component ^slicing.discriminator[0].type = #value
* component ^slicing.discriminator[0].path = "code.coding.code"
* component ^slicing.discriminator[1].type = #value
* component ^slicing.discriminator[1].path = "code.coding.system"
* component ^slicing.ordered = false
* component ^slicing.rules = #open

// Systolic blood pressure
* component[systolisk].code = $loinc#8480-6
* component[systolisk].valueQuantity 1..1 MS
* component[systolisk].valueQuantity.value 1..1 MS
* component[systolisk].valueQuantity.system = $ucum
* component[systolisk].valueQuantity.code = #mm[Hg]

// Diastolic blood pressure
* component[diastolisk].code = $loinc#8462-4
* component[diastolisk].valueQuantity 1..1 MS
* component[diastolisk].valueQuantity.value 1..1 MS
* component[diastolisk].valueQuantity.system = $ucum
* component[diastolisk].valueQuantity.code = #mm[Hg]