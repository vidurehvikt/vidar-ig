### Blodtrykk i primarhelsetjenesten

Denne implementasjonsguiden definerer en standardisert måte a registrere og utveksle blodtrykksmalinger mellom to journalsystemer.

### Formal

Nar en pasient kommer til fastlegen for rutinekontroll, skal blodtrykket kunne deles med et annet helsesystem uten tap av mening. Denne guiden svarer pa hvordan begge systemer kan forsta samme måling likt.

### Brukstilfelle

1. Fastlege måler blodtrykk under konsultasjon.
2. Journalsystem A lagrer malingen som en FHIR `Observation` i profilen `MalObservationBloodPressure`.
3. Data sendes til journalsystem B.
4. Journalsystem B validerer meldingen mot samme profil og tolker verdiene likt.

### Hva standardiseres

- Felles kodeverk for observasjonen: LOINC `85354-9` (blodtrykkspanel).
- Felles struktur for komponenter:
	- Systolisk blodtrykk: LOINC `8480-6`
	- Diastolisk blodtrykk: LOINC `8462-4`
- Felles enhet: UCUM `mm[Hg]`
- Felles minimumskrav: status, tidspunkt, pasientreferanse og begge komponenter.

### Hvorfor dette gir interoperabilitet

Når begge systemer bruker samme profil, kodeverk og enheter, reduseres risikoen for:

- Ulike tolkninger av hva som er systolisk og diastolisk verdi
- Feil enhetsforstaelse
- Ufullstendige blodtrykksmeldinger

Resultatet er at samme blodtrykksmaling betyr det samme i avsender- og mottakersystem.

### Eksempel

IG-en inneholder et eksempel (`Observation-BloodPressure-1`) med verdier 128/82 mm[Hg] knyttet til en eksempelpasient. Eksemplet kan brukes som mal ved implementasjon og testing.


