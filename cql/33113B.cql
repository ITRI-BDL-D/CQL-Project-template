library "33113B" version '0.0.1'

using FHIR version '4.0.1'

include "FHIRHelpers" version '4.0.1' called FHIRHelpers
include CDSConnectCommonsForFHIRv401 version '2.1.0' called C3F

valueset "33113B 經頸靜脈肝內門脈系統靜脈分流術Transjugular Intrahepatic Portosystemic Shunt valueset": 'https://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1287.31'

codesystem "ICD-10-CM": 'http://hl7.org/fhir/sid/icd-10-cm'
codesystem "CONDVERSTATUS": 'http://terminology.hl7.org/CodeSystem/condition-ver-status'

// code "Malignant neoplasm of thyroid gland code": 'C73' from "ICD-10-CM" display 'Malignant neoplasm of thyroid gland'
code "Condition Confirmed code": 'confirmed' from "CONDVERSTATUS" display 'Confirmed'

concept "Condition Confirmed": { "Condition Confirmed code" } display 'Confirmed'

context Patient

define "33113B 經頸靜脈肝內門脈系統靜脈分流術Transjugular Intrahepatic Portosystemic Shunt":
  exists ( Confirmed([Condition: "33113B 經頸靜脈肝內門脈系統靜脈分流術Transjugular Intrahepatic Portosystemic Shunt valueset"]) )

define "MeetsInclusionCriteria":
  "33113B 經頸靜脈肝內門脈系統靜脈分流術Transjugular Intrahepatic Portosystemic Shunt"

define "InPopulation":
  "MeetsInclusionCriteria"

define "Recommendation":
  if "InPopulation" then '健保給付31570點\n1.施行本項之醫院及醫師資格如下：\n  (1)具放射線專科醫師且實際從事介入性放射線治療之主治醫師以上資格。\n  (2)施行醫師應接受二年以上肝膽系統之血管攝影及血管系統之介入性放射線醫療訓練。\n  (3)須報經保險人同意後實施，且醫院及主持醫師資格有變更時應重新報保險人核備。\n2.RTPS/RUPS組另計。\n3.本項治療屬於替代性或選擇性之第二線治療方式。' 
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