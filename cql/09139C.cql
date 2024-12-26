library "09139C" version '0.0.1'

using FHIR version '4.0.1'

include "FHIRHelpers" version '4.0.1' called FHIRHelpers
include CDSConnectCommonsForFHIRv401 version '2.1.0' called C3F

valueset "糖尿病合併慢性腎病變 valueset": 'https://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1287.46'
valueset "懷孕糖尿病人及妊娠糖尿病人 valueset": 'https://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1287.45'

codesystem "ICD-10-CM": 'http://hl7.org/fhir/sid/icd-10-cm'
codesystem "LOINC": 'http://loinc.org'
codesystem "TWMedicalServicePayment": 'https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medical-service-payment-tw'
codesystem "CONDVERSTATUS": 'http://terminology.hl7.org/CodeSystem/condition-ver-status'

code "Diabetes mellitus due to underlying condition with diabetic chronic kidney disease code": 'E08.22' from "ICD-10-CM" display 'Diabetes mellitus due to underlying condition with diabetic chronic kidney disease'
code "Pre-existing type 1 diabetes mellitus, in pregnancy, childbirth and the puerperium code": 'O24.0' from "ICD-10-CM" display 'Pre-existing type 1 diabetes mellitus, in pregnancy, childbirth and the puerperium'
code "Albumin [Mass/volume] in Serum or Plasma code": '1751-7' from "LOINC" display 'Albumin [Mass/volume] in Serum or Plasma'
code "醣化白蛋白(GA) code": '09139C' from "TWMedicalServicePayment" display '醣化白蛋白(GA)'
code "醣化血紅素 code": '09006C' from "TWMedicalServicePayment" display '醣化血紅素'
code "Condition Confirmed code": 'confirmed' from "CONDVERSTATUS" display 'Confirmed'

concept "Condition Confirmed": { "Condition Confirmed code" } display 'Confirmed'

context Patient

define "09139C 醣化白蛋白(GA)":
  exists ( Confirmed([Condition: "糖尿病合併慢性腎病變 valueset"])
      union Confirmed([Condition: "懷孕糖尿病人及妊娠糖尿病人 valueset"])
  )

define "懷孕糖尿病人、妊娠糖尿病人":
  exists ( Confirmed([Condition: "懷孕糖尿病人及妊娠糖尿病人 valueset"]) )

define "血中白蛋白濃度 checked":
  C3F.QuantityValue ( C3F.MostRecent ( [Observation: "Albumin [Mass/volume] in Serum or Plasma code"] ) ) > 3 'g/dL'

define "醣化血紅素 checked":
  exists ( [Observation: "醣化血紅素 code"] )

define "過去一年已申報次數":
  Count(ObservationLookBack([Observation: "醣化白蛋白(GA) code"], 1 year))

define "MeetsInclusionCriteria":
  "09139C 醣化白蛋白(GA)"

define "InPopulation":
  "MeetsInclusionCriteria"
    and not "血中白蛋白濃度 checked"

define "Recommendation":
  if "醣化血紅素 checked" then '不得同時申報編號09006C。' 
    else if "InPopulation" then if "懷孕糖尿病人、妊娠糖尿病人" then if "過去一年已申報次數" > 5 then '為懷孕糖尿病人、妊娠糖尿病人或當年度為糖尿病及初期慢性腎臟病照護整合方案新收案個案，今年已申報六次以上。' 
    else '健保給付200點' 
    else if "過去一年已申報次數" > 3 then '今年已申報四次以上。' 
    else '健保給付200點' 
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