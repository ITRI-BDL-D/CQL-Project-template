library "33143B" version '0.0.1'

using FHIR version '4.0.1'

include "FHIRHelpers" version '4.0.1' called FHIRHelpers
include CDSConnectCommonsForFHIRv401 version '2.1.0' called C3F

valueset "33143B 急性缺血性腦中風機械取栓術Fee for neurovascular mechanical endovascular thrombectomy in acute ischemic CM valueset": 'https://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1287.39'

codesystem "ICD-10-CM": 'http://hl7.org/fhir/sid/icd-10-cm'
codesystem "CONDVERSTATUS": 'http://terminology.hl7.org/CodeSystem/condition-ver-status'

// code "Malignant neoplasm of thyroid gland code": 'C73' from "ICD-10-CM" display 'Malignant neoplasm of thyroid gland'
code "Condition Confirmed code": 'confirmed' from "CONDVERSTATUS" display 'Confirmed'

concept "Condition Confirmed": { "Condition Confirmed code" } display 'Confirmed'

context Patient

define "急性缺血性腦中風機械取栓術 Condition":
  exists ( Confirmed([Condition: "33143B 急性缺血性腦中風機械取栓術Fee for neurovascular mechanical endovascular thrombectomy in acute ischemic CM valueset"]) )

define "MeetsInclusionCriteria":
  "急性缺血性腦中風機械取栓術 Condition"

define "InPopulation":
  "MeetsInclusionCriteria"

define "Recommendation":
  if "InPopulation" then '健保給付45059點\n(1)限接受並通過下列任一學會之相關腦神經血管內介入治療專長訓練與認證之醫師施行：\nA.中華民國放射線醫學會授權之中華民國神經放射線醫學會\nB.台灣神經外科醫學會授權之台灣神經血管外科與介入治療醫學會\nC.台灣神經學會授權之台灣腦中風學會\n(2)不得同時申報69001B、69002B、69003B。\n(3)前循環若於發作後八小時至二十四小時執行，申報時須於病歷檢附影像報告(CTP、MR或CTA collaterals)備查。' 
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