library "80026B" version '0.0.1'

using FHIR version '4.0.1'

include "FHIRHelpers" version '4.0.1' called FHIRHelpers
include CDSConnectCommonsForFHIRv401 version '2.1.0' called C3F

valueset "80026B 經腹腔及陰道合併之骨盆底重建術(含子宮切除術，陰道懸吊術，陰道前後壁修補但不含尿失禁手術) CM valueset": 'https://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1287.21'
valueset "80026B 經腹腔及陰道合併之骨盆底重建術(含子宮切除術，陰道懸吊術，陰道前後壁修補但不含尿失禁手術) PCS valueset": 'https://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1287.22'

codesystem "ICD-10-CM": 'http://hl7.org/fhir/sid/icd-10-cm'
codesystem "CONDVERSTATUS": 'http://terminology.hl7.org/CodeSystem/condition-ver-status'

// code "Submucous leiomyoma of uterus code": 'D25.0' from "ICD-10-CM" display 'Submucous leiomyoma of uterus'
code "Condition Confirmed code": 'confirmed' from "CONDVERSTATUS" display 'Confirmed'

concept "Condition Confirmed": { "Condition Confirmed code" } display 'Confirmed'

context Patient

define "80026B 經腹腔及陰道合併之骨盆底重建術(含子宮切除術，陰道懸吊術，陰道前後壁修補但不含尿失禁手術) Condition":
  exists ( Confirmed([Condition: "80026B 經腹腔及陰道合併之骨盆底重建術(含子宮切除術，陰道懸吊術，陰道前後壁修補但不含尿失禁手術) CM valueset"]) )
  
define "80026B 經腹腔及陰道合併之骨盆底重建術(含子宮切除術，陰道懸吊術，陰道前後壁修補但不含尿失禁手術) Procedure":
  exists ( [Procedure: "80026B 經腹腔及陰道合併之骨盆底重建術(含子宮切除術，陰道懸吊術，陰道前後壁修補但不含尿失禁手術) PCS valueset"]) 

define "MeetsInclusionCriteria":
  "80026B 經腹腔及陰道合併之骨盆底重建術(含子宮切除術，陰道懸吊術，陰道前後壁修補但不含尿失禁手術) Condition" or "80026B 經腹腔及陰道合併之骨盆底重建術(含子宮切除術，陰道懸吊術，陰道前後壁修補但不含尿失禁手術) Procedure"

define "InPopulation":
  "MeetsInclusionCriteria"

define "Recommendation":
  if "InPopulation" then '健保給付27333點' 
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