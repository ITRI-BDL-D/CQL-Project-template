library "54044C" version '0.0.1'

using FHIR version '4.0.1'

include "FHIRHelpers" version '4.0.1' called FHIRHelpers
include CDSConnectCommonsForFHIRv401 version '2.1.0' called C3F

valueset "良性陣發性姿勢性眩暈(Benign paroxysmal positional vertigo) valueset": 'https://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1287.13'

codesystem "ICD-10-CM": 'http://hl7.org/fhir/sid/icd-10-cm'
codesystem "TWMedicalServicePayment": 'https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medical-service-payment-tw'
codesystem "SCT": 'http://snomed.info/sct'
codesystem "CONDVERSTATUS": 'http://terminology.hl7.org/CodeSystem/condition-ver-status'

// code "Benign paroxysmal vertigo, unspecified ear code": 'H18.10' from "ICD-10-CM" display 'Benign paroxysmal vertigo, unspecified ear'

code "耳石復位術 code": '54044C' from "TWMedicalServicePayment" display '耳石復位術'

code "Otorhinolaryngologist code": '61345009' from "SCT" display 'Otorhinolaryngologist'
code "Neurologist code": '56397003' from "SCT" display 'Neurologist'

code "Condition Confirmed code": 'confirmed' from "CONDVERSTATUS" display 'Confirmed'

concept "Condition Confirmed": { "Condition Confirmed code" } display 'Confirmed'

context Patient

define "良性陣發性姿勢性眩暈":
  exists ( Confirmed([Condition: "良性陣發性姿勢性眩暈(Benign paroxysmal positional vertigo) valueset"]) )


define "Sugery":
  C3F.MostRecentProcedure ( [Procedure: "耳石復位術 code"] )

define "surgeon_id":
  Last(Split(First("Sugery".performer).actor.reference, '/'))

define "Surgeon_ref":
  [Practitioner] P
    where P.id = "surgeon_id"

define "Surgeon_tmp":
  "Surgeon_ref".qualification q
    where q.code ~ "Otorhinolaryngologist code" or q.code ~ "Neurologist code"

define "Surgeon":
  exists ( "Surgeon_tmp" )


define "MeetsInclusionCriteria":
  "良性陣發性姿勢性眩暈"

define "InPopulation":
  "MeetsInclusionCriteria"

define "Recommendation":
  if "InPopulation" and "Surgeon" then '健保給付432點，費用申報須附治療紀錄。\n屬西醫基層總額部門院所，除山地離島地區外，限由專任醫師開立處方及執行始可申報。'
    else if "InPopulation" then '非由耳鼻喉科或神經內科醫師執行，不給付'
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