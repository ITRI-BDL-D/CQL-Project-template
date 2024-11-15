library "12216C" version '0.0.1'

using FHIR version '4.0.1'

include "FHIRHelpers" version '4.0.1' called FHIRHelpers
include CDSConnectCommonsForFHIRv401 version '2.1.0' called C3F

// valueset "TWVitalSigns": 'https://twcore.mohw.gov.tw/ig/twcore/ValueSet/vital-signs-tw' 


codesystem "LOINC": 'http://loinc.org'
codesystem "ICD-10-CM": 'http://hl7.org/fhir/sid/icd-10-cm'
codesystem "CONDVERSTATUS": 'http://terminology.hl7.org/CodeSystem/condition-ver-status'

code "Hepatitis C virus Ab [Presence] in Serum or Plasma by Immunoassay Code": '13955-0' from "LOINC" display 'Hepatitis C virus Ab [Presence] in Serum or Plasma by Immunoassay'

// 靜脈注射藥癮: F11.20 待確認

code "Human immunodeficiency virus [HIV] disease Code": 'B20' from "ICD-10-CM" display 'Human immunodeficiency virus [HIV] disease'
code "Dependence on renal dialysis Code": 'Z99.2' from "ICD-10-CM" display 'Dependence on renal dialysis'
code "Condition Confirmed code": 'confirmed' from "CONDVERSTATUS" display 'Confirmed'

concept "Condition Confirmed": { "Condition Confirmed code" } display 'Confirmed'

context Patient

define "Hepatitis C virus Ab [Presence] in Serum or Plasma by Immunoassay Positive":
  exists ( [Observation: "Hepatitis C virus Ab [Presence] in Serum or Plasma by Immunoassay Code"] O
      where O.value.value = true
  )
define "check":
  [Observation: "Hepatitis C virus Ab [Presence] in Serum or Plasma by Immunoassay Code"] O

define "MeetsInclusionCriteria":
  "Hepatitis C virus Ab [Presence] in Serum or Plasma by Immunoassay Positive"

define "InPopulation":
  "MeetsInclusionCriteria"

define "subpopulation 1":
  if "InPopulation" is not true then null 
    else exists ( Confirmed([Condition: "Human immunodeficiency virus [HIV] disease Code"]) )

define "subpopulation 2":
  if "InPopulation" is not true then null 
    else exists ( Confirmed([Condition: "Dependence on renal dialysis Code"]) )

define "Recommendation":
if "subpopulation 1" then '健保給付900點，每一年限申報一次。'
    else if "subpopulation 2" then '健保給付900點，每四年限申報一次。'
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