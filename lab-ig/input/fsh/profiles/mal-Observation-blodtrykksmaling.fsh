Profile:     MalObservationBloodPressure
Id:          mal-observation-blodtrykk
Parent:      Observation
Title:       "Blodtrykkmåling"
Description: "Enkel profil for blodtrykksmåling"
* ^status = #draft
* ^date = "2025-01-31"
* ^publisher = "Vidar Ure"

* subject only Reference(MalPatient) // Pasienten som blodtrykket er målt på
* effectiveDateTime 1..1 MS // Dato og tid for målingen
* status 1..1
* code = $LNC#85354-9 // Blood pressure panel with all children optional
* value[x] 0..0
* component 2..2 MS
* component contains
	systolisk 1..1 and
	diastolisk 1..1

* component[systolisk].code = $LNC#8480-6 // Systolisk blodtrykk
* component[systolisk].valueQuantity 1..1 MS
* component[systolisk].valueQuantity.code = $UCUM#mm[Hg]

* component[diastolisk].code = $LNC#8462-4 // Diastolisk blodtrykk
* component[diastolisk].valueQuantity 1..1 MS
* component[diastolisk].valueQuantity.code = $UCUM#mm[Hg]