Profile:     MalEncounterConsultation
Id:          mal-encounter-konsultasjon
Parent:      Encounter
Title:       "Konsultasjon"
Description: "Enkel profil for konsultasjon der målinger gjennomfores"
* ^status = #draft
* ^date = "2025-01-31"
* ^publisher = "Vidar Ure"

* status 1..1 MS
* class 1..1 MS
* subject 1..1 MS
* subject only Reference(MalPatient)
* period 1..1 MS

// Eksempel på konsultasjon knyttet til blodtrykksmaling

Instance: Konsultasjon-1
InstanceOf: MalEncounterConsultation
Description: "Eksempel pa konsultasjon med blodtrykksmaling"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><strong>Konsultasjon</strong></p><p>Pasient: Pasient-1</p><p>Status: Avsluttet</p><p>Tidspunkt: 09.11.2026 08:20 - 08:40</p><p>Arsak: Blodtrykksmaling</p></div>"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(Pasient-1)
* period.start = "2026-11-09T08:20:00+01:00"
* period.end = "2026-11-09T08:40:00+01:00"
* reasonCode.text = "Blodtrykksmaling"