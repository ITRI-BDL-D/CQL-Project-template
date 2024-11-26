library "17022B" version '0.0.1'

using FHIR version '4.0.1'

include "FHIRHelpers" version '4.0.1' called FHIRHelpers
include CDSConnectCommonsForFHIRv401 version '2.1.0' called C3F

valueset "17022B 呼氣一氧化氮監測(FeNO) valueset": 'https://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1287.6' 


codesystem "ICD-10-CM": 'http://hl7.org/fhir/sid/icd-10-cm'
codesystem "SCT": 'http://snomed.info/sct'
codesystem "CONDVERSTATUS": 'http://terminology.hl7.org/CodeSystem/condition-ver-status'

// code "Mild intermittent asthma code": 'J45.2' from "ICD-10-CM" display 'Mild intermittent asthma'
code "General pediatric specialty code": '24251000087109' from "SCT" display 'General pediatric specialty'
code "Condition Confirmed code": 'confirmed' from "CONDVERSTATUS" display 'Confirmed'

concept "Condition Confirmed": { "Condition Confirmed code" } display 'Confirmed'

context Patient

define "氣喘":
  exists ( Confirmed([Condition: "17022B 呼氣一氧化氮監測(FeNO) valueset"]) )

define "age check":
  AgeInYears() >= 6
    and AgeInYears() < 13

define "encounter":
  [Encounter: "17022B 呼氣一氧化氮監測(FeNO) valueset"] E
    where ( E.serviceType ~ "General pediatric specialty code" )

define "encounter check":
  exists("encounter")

define "MeetsInclusionCriteria":
  "氣喘"
    and "age check"

define "InPopulation":
  "MeetsInclusionCriteria"

define "Recommendation":
  if "InPopulation" is not true then null 
    else if "encounter check" then '健保給付748點:\n(1)申報次數：一年最多申報三次。\n(2)執行限制：限受過操作訓練之醫療人員。\n(3)費用申報時必要之附件：檢測報告。'
    else '非兒科申報，不予給付'

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