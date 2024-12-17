library "09139C" version '0.0.1'

using FHIR version '4.0.1'

include "FHIRHelpers" version '4.0.1' called FHIRHelpers
include CDSConnectCommonsForFHIRv401 version '2.1.0' called C3F

valueset "09139C 醣化白蛋白(GA) valueset": 'https://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1287.32'

codesystem "ICD-10-CM": 'http://hl7.org/fhir/sid/icd-10-cm'
codesystem "CONDVERSTATUS": 'http://terminology.hl7.org/CodeSystem/condition-ver-status'

// code "Malignant neoplasm of thyroid gland code": 'C73' from "ICD-10-CM" display 'Malignant neoplasm of thyroid gland'
code "Condition Confirmed code": 'confirmed' from "CONDVERSTATUS" display 'Confirmed'

concept "Condition Confirmed": { "Condition Confirmed code" } display 'Confirmed'

context Patient

define "09139C 醣化白蛋白(GA)":
  exists ( Confirmed([Condition: "09139C 醣化白蛋白(GA) valueset"]) )

define "MeetsInclusionCriteria":
  "09139C 醣化白蛋白(GA)"

define "InPopulation":
  "MeetsInclusionCriteria"

define "Recommendation":
  if "InPopulation" then '健保給付200點\n(1)不得同時申報編號09006C。\n(2)一年限申報四次，若為懷孕糖尿病人、妊娠糖尿病人或當年度為糖尿病及初期慢性腎臟病照護整合方案新收案個案，一年限申報六次。' 
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