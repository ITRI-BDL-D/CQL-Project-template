library "08111B" version '0.0.1'

using FHIR version '4.0.1'

include "FHIRHelpers" version '4.0.1' called FHIRHelpers
include CDSConnectCommonsForFHIRv401 version '2.1.0' called C3F

// valueset "TWVitalSigns": 'https://twcore.mohw.gov.tw/ig/twcore/ValueSet/vital-signs-tw' 


codesystem "ICD-10-CM": 'http://hl7.org/fhir/sid/icd-10-cm'
codesystem "CONDVERSTATUS": 'http://terminology.hl7.org/CodeSystem/condition-ver-status'

code "Coagulation defect, unspecified code": 'D68.9' from "ICD-10-CM" display 'Coagulation defect, unspecified'
code "Von Willebrand disease code": 'D68.0' from "ICD-10-CM" display 'Von Willebrand disease'
code "Von Willebrand disease, unspecified code": 'D68.00' from "ICD-10-CM" display 'Von Willebrand disease, unspecified'
code "Von Willebrand disease, type 1 code": 'D68.01' from "ICD-10-CM" display 'Von Willebrand disease, type 1'
code "Von Willebrand disease, type 2 code": 'D68.02' from "ICD-10-CM" display 'Von Willebrand disease, type 2'
code "Von Willebrand disease, type 2A code": 'D68.020' from "ICD-10-CM" display 'Von Willebrand disease, type 2A'
code "Von Willebrand disease, type 2B code": 'D68.021' from "ICD-10-CM" display 'Von Willebrand disease, type 2B'
code "Von Willebrand disease, type 2M code": 'D68.022' from "ICD-10-CM" display 'Von Willebrand disease, type 2M'
code "Von Willebrand disease, type 2N code": 'D68.023' from "ICD-10-CM" display 'Von Willebrand disease, type 2N'
code "Von Willebrand disease, type 2, unspecified code": 'D68.029' from "ICD-10-CM" display 'Von Willebrand disease, type 2, unspecified'
code "Von Willebrand disease, type 3 code": 'D68.03' from "ICD-10-CM" display 'Von Willebrand disease, type 3'
code "Acquired von Willebrand disease code": 'D68.04' from "ICD-10-CM" display 'Acquired von Willebrand disease'
code "Other von Willebrand disease code": 'D68.09' from "ICD-10-CM" display 'Other von Willebrand disease'
code "Condition Confirmed code": 'confirmed' from "CONDVERSTATUS" display 'Confirmed'

concept "Condition Confirmed": { "Condition Confirmed code" } display 'Confirmed'

context Patient

define "Coagulation defect, unspecified":
  exists ( Confirmed([Condition: "Coagulation defect, unspecified code"]) )

define "Von Willebrand disease":
  exists ( Confirmed([Condition: "Von Willebrand disease code"]
        union [Condition: "Von Willebrand disease, unspecified code"]
        union [Condition: "Von Willebrand disease, type 1 code"]
        union [Condition: "Von Willebrand disease, type 2 code"]
        union [Condition: "Von Willebrand disease, type 2A code"]
        union [Condition: "Von Willebrand disease, type 2B code"]
        union [Condition: "Von Willebrand disease, type 2M code"]
        union [Condition: "Von Willebrand disease, type 2N code"]
        union [Condition: "Von Willebrand disease, type 2, unspecified code"]
        union [Condition: "Von Willebrand disease, type 3 code"]
        union [Condition: "Acquired von Willebrand disease code"]
        union [Condition: "Other von Willebrand disease code"]
    )
  )

define "MeetsInclusionCriteria":
  "Coagulation defect, unspecified"
    and "Von Willebrand disease"

define "InPopulation":
  "MeetsInclusionCriteria"

define "Recommendation":
  if "InPopulation" then '健保給付800點' 
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