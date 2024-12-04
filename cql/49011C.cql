library "49011C" version '0.0.1'

using FHIR version '4.0.1'

include "FHIRHelpers" version '4.0.1' called FHIRHelpers
include CDSConnectCommonsForFHIRv401 version '2.1.0' called C3F

valueset "49011C 痔冷凍治療 inclusion valueset": 'https://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1287.11'
valueset "49011C 痔冷凍治療 exclusion valueset": 'https://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1287.12'

codesystem "ICD-10-CM": 'http://hl7.org/fhir/sid/icd-10-cm'
codesystem "CONDVERSTATUS": 'http://terminology.hl7.org/CodeSystem/condition-ver-status'

// code "First degree hemorrhoids code": 'K64.0' from "ICD-10-CM" display 'First degree hemorrhoids'
// code "Third degree hemorrhoids code": 'K64.2' from "ICD-10-CM" display 'Third degree hemorrhoids'



code "Condition Confirmed code": 'confirmed' from "CONDVERSTATUS" display 'Confirmed'

concept "Condition Confirmed": { "Condition Confirmed code" } display 'Confirmed'

context Patient

define "49011C 痔冷凍治療 inclusion":
  exists ( Confirmed([Condition: "49011C 痔冷凍治療 inclusion valueset"]) )

define "49011C 痔冷凍治療 exclusion":
  exists ( Confirmed([Condition: "49011C 痔冷凍治療 exclusion valueset"]) )

define "MeetsInclusionCriteria":
  "49011C 痔冷凍治療 inclusion"

define "MeetsExclusionCriteria":
  "49011C 痔冷凍治療 exclusion"

define "InPopulation":
  "MeetsInclusionCriteria"
    and not "MeetsExclusionCriteria"

define "Recommendation":
if "InPopulation" then '健保給付810點' 
    else if "MeetsExclusionCriteria" then '第三級和第四級及栓塞痔不適用' 
    else null


define "Rationale":
  null

define "Links":
  null

define "Suggestions":
  null

define "Errors":
  null

define function ObservationLookBack(ObsList List<Observation>, LookBack System.Quantity):
  ObsList O
    let LookBackInterval: Interval[Now() - LookBack, Now()]
    where ( O.effective as FHIR.dateTime ).value in LookBackInterval
      or ( O.effective as FHIR.instant ).value in LookBackInterval
      or PeriodToInterval(O.effective as FHIR.Period) overlaps LookBackInterval
      or O.issued.value in LookBackInterval

define function Confirmed(CondList List<Condition>):
  CondList C
    where C.verificationStatus ~ "Condition Confirmed"

define function InProgress(EncList List<Encounter>):
  EncList E
    where E.status.value = 'in-progress'

define function EncounterLookBack(EncList List<Encounter>, LookBack System.Quantity):
  EncList E
    let LookBackInterval: Interval[Now() - LookBack, Now()]
    where PeriodToInterval(E.period) overlaps LookBackInterval

define function PeriodToInterval(period FHIR.Period):
  if period is null then null 
    else Interval[period."start".value, period."end".value]