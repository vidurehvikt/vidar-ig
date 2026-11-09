Profile:     MalObservationBloodPressure
Id:          mal-observation-blodtrykk
Parent:      Observation
Title:       "Blodtrykkmåling"
Description: "Profil for vanlige blodtrykkmålinger"
* ^status = #draft
* ^date = "2025-01-31"
* ^publisher = "Vidar Ure"

* subject only Reference(MalPatient) // Pasienten som blodprøven er tatt av
* effectiveDateTime MS // Dato og tid for blodprøve
* code MS // Kode for blodprøve 
* valueQuantity MS // Resultat av blodprøve - TEST