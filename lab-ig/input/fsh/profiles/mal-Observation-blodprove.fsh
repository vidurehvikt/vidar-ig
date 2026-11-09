Profile:     MalObservationBloodPressure
Id:          mal-observation-blodtrykk
Parent:      Observation
Title:       "Blodtrykksmåling"
Description: "Profil for standardisert registrering og utveksling av blodtrykk"
* ^status = #draft
* ^date = "2026-11-09"
* ^publisher = "Vidar Ure"

* status 1..1 MS
* category 1..* MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains vitalSigns 1..1 MS
* category[vitalSigns] = $observation-category#vital-signs "Vital Signs"

* code 1..1 MS
* code = $loinc#85354-9 "Blood pressure panel with all children optional"

* subject 1..1 MS
* subject only Reference(MalPatient)

* effective[x] only dateTime
* effectiveDateTime 1..1 MS

* component 2..2 MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component contains
	systolicBP 1..1 MS and
	diastolicBP 1..1 MS

* component[systolicBP].code = $loinc#8480-6 "Systolic blood pressure"
* component[systolicBP].value[x] only Quantity
* component[systolicBP].valueQuantity 1..1 MS
* component[systolicBP].valueQuantity.system = $ucum (exactly)
* component[systolicBP].valueQuantity.code = #[mmHg] (exactly)

* component[diastolicBP].code = $loinc#8462-4 "Diastolic blood pressure"
* component[diastolicBP].value[x] only Quantity
* component[diastolicBP].valueQuantity 1..1 MS
* component[diastolicBP].valueQuantity.system = $ucum (exactly)
* component[diastolicBP].valueQuantity.code = #[mmHg] (exactly)

Instance: Observation-BloodPressure-1
InstanceOf: MalObservationBloodPressure
Description: "Eksempel pa blodtrykksmaling registrert hos fastlege"
* status = #final
* category[vitalSigns] = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(Pasient-1)
* effectiveDateTime = "2026-11-09T10:15:00+01:00"
* performer.display = "Fastlegekontor A"
* component[systolicBP].code = $loinc#8480-6 "Systolic blood pressure"
* component[systolicBP].valueQuantity = 128 '[mmHg]' "mm[Hg]"
* component[diastolicBP].code = $loinc#8462-4 "Diastolic blood pressure"
* component[diastolicBP].valueQuantity = 82 '[mmHg]' "mm[Hg]"