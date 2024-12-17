library "37048B" version '0.0.1'

using FHIR version '4.0.1'

include "FHIRHelpers" version '4.0.1' called FHIRHelpers
include CDSConnectCommonsForFHIRv401 version '2.1.0' called C3F

valueset "37048B 內視鏡射頻消融術（RFA）Endoscopic Radiofrequency Ablation valueset": 'https://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1287.27'

codesystem "ICD-10-CM": 'http://hl7.org/fhir/sid/icd-10-cm'
codesystem "TWMedicalServicePayment": 'https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medical-service-payment-tw'
codesystem "CONDVERSTATUS": 'http://terminology.hl7.org/CodeSystem/condition-ver-status'

// code "Malignant neoplasm of thyroid gland code": 'C73' from "ICD-10-CM" display 'Malignant neoplasm of thyroid gland'
code "內視鏡射頻消融術（RFA）Endoscopic Radiofrequency Ablation code": '37048B' from "TWMedicalServicePayment" display '內視鏡射頻消融術（RFA）Endoscopic Radiofrequency Ablation'
code "Condition Confirmed code": 'confirmed' from "CONDVERSTATUS" display 'Confirmed'

concept "Condition Confirmed": { "Condition Confirmed code" } display 'Confirmed'

context Patient

define "37048B 內視鏡射頻消融術（RFA）Endoscopic Radiofrequency Ablation":
  exists ( Confirmed([Condition: "37048B 內視鏡射頻消融術（RFA）Endoscopic Radiofrequency Ablation valueset"]) )

define "RFA Procedure":
  C3F.ProcedureLookBack([Procedure: "內視鏡射頻消融術（RFA）Endoscopic Radiofrequency Ablation code"], 6 months)

// 觸發六個月內再次執行RFA
define "RFA Procedure checked":
  if Count("RFA Procedure") > 0 then true 
    else false

define "MeetsInclusionCriteria":
  "37048B 內視鏡射頻消融術（RFA）Endoscopic Radiofrequency Ablation"

define "InPopulation":
  "MeetsInclusionCriteria"

define "Recommendation":
  if "InPopulation" then if "RFA Procedure checked" then '六個月內再次執行RFA者，應同時符合以下三項條件，並經事前審查同意：\nA.須符合原始內視鏡射頻消融術治療之適應症。\nB.須檢附內視鏡影像及病理組織學切片報告，確認有腫瘤殘存或復發。\nC.須進行腫瘤重新臨床分期，且與第一次治療前分期比較，不能有惡化現象。'
    else '健保給付17350點\n(1)內含一般材料費及單一使用拋棄式之guidewire及spray catheter、內視鏡透明套。\n(2)不得同時申報72050B、28016C、47074C、47043B、47077B、71209B。\n(3)執行本項之麻醉費用另計。' 
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