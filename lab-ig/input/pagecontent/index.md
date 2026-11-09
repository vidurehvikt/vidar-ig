### Vidar IG

Denne implementasjonsguiden viser et enkelt eksempel pa modellering av blodtrykksmaling i FHIR.

### Mal

Formalet er a beskrive en liten, tydelig informasjonsmodell for:

- pasienten som malingen gjelder
- konsultasjonen der malingen ble gjort
- selve blodtrykksmalingen med systolisk og diastolisk verdi

### Innhold

Guiden inneholder for tiden disse profilene:

- MalPatient
- MalEncounterConsultation
- MalObservationBloodPressure

### Hva blodtrykksprofilen krever

Blodtrykksprofilen er en forenklet Observation-profil med:

- kategori satt til vital signs
- kode satt til LOINC blodtrykkspanel (85354-9)
- to obligatoriske komponenter:
	- systolisk blodtrykk (8480-6)
	- diastolisk blodtrykk (8462-4)
- verdier i enheten mmHg
- kobling til pasient og konsultasjon

### Eksempler

Det finnes eksempelinstanser for alle sentrale ressurser:

- Pasient-1 (pasient)
- Konsultasjon-1 (encounter/konsultasjon)
- Blodtrykk-1 (observation/blodtrykksmaling)

### Bruk

Eksemplene kan brukes som utgangspunkt for egne profiler og instanser i samme domene.


