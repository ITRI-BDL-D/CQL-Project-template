library "Continuous-glucose-monitoring" version '0.0.2'

using FHIR version '4.0.1'

include "FHIRHelpers" version '4.0.1' called FHIRHelpers
include CDSConnectCommonsForFHIRv401 version '2.1.0' called C3F

codesystem "LOINC": 'http://loinc.org'
codesystem "ICD-10-CM": 'http://hl7.org/fhir/sid/icd-10-cm'
codesystem "SNOMED": 'http://snomed.info/sct'
codesystem "Other": 'http://terminology.hl7.org/CodeSystem/v3-ActCode'
codesystem "CONDVERSTATUS": 'http://terminology.hl7.org/CodeSystem/condition-ver-status'

valueset "Type 1 Diabetes Mellitus SCT VS": 'https://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1078.214'
valueset "Gestational Diabetes VS": 'https://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1032.90'
valueset "Type 2 Diabetes Diagnoses VS": 'https://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1160.27'
valueset "Insulin VS": 'https://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1078.434'

code "Hemoglobin A1c/Hemoglobin.total in Blood code": '4548-4' from "LOINC" display 'Hemoglobin A1c/Hemoglobin.total in Blood'
code "Neonatal diabetes mellitus code": 'P70.2' from "ICD-10-CM" display 'Neonatal diabetes mellitus'
code "Postprocedural hypoinsulinemia code": 'E89.1' from "ICD-10-CM" display 'Postprocedural hypoinsulinemia'
code "Other specified diabetes mellitus code": 'E13' from "ICD-10-CM" display 'Other specified diabetes mellitus'
code "Acquired absence of pancreas code": 'Z90.41' from "ICD-10-CM" display 'Acquired absence of pancreas'
code "Hypoglycemia, unspecified code": 'E16.2' from "ICD-10-CM" display 'Hypoglycemia, unspecified'
code "Pregnant state, incidental code": 'Z33.1' from "ICD-10-CM" display 'Pregnant state, incidental'
code "Glycogen storage disease, type I (disorder) code": '7265005' from "SNOMED" display 'Glycogen storage disease, type I (disorder)'
code "Glycogen storage disease, type III (disorder) code": '66937008' from "SNOMED" display 'Glycogen storage disease, type III (disorder)'
code "Glycogen storage disease, type VI (disorder) code": '29291001' from "SNOMED" display 'Glycogen storage disease, type VI (disorder)'
code "Glycogen storage disease type IX (disorder) code": '235908005' from "SNOMED" display 'Glycogen storage disease type IX (disorder)'
code "Glycogen synthase deficiency (disorder) code": '237964009' from "SNOMED" display 'Glycogen synthase deficiency (disorder)'
code "Cornflour (substance) code": '229936000' from "SNOMED" display 'Cornflour (substance)'
code "emergency code": 'EMER' from "Other" display 'emergency'
code "inpatient encounter code": 'IMP' from "Other" display 'inpatient encounter'
code "ambulatory code": 'AMB' from "Other" display 'ambulatory'
code "Condition Confirmed code": 'confirmed' from "CONDVERSTATUS" display 'Confirmed'
code "Continuous glucose monitoring (procedure)": '97510-2' from "LOINC" display 'Glucose measurements in range out of Total glucose measurements during reporting period'

concept "Condition Confirmed": { "Condition Confirmed code" } display 'Confirmed'

context Patient

define "generic_condition_valuesets":
  [Condition: "Type 1 Diabetes Mellitus SCT VS"]

define "generic_encounter_valuesets":
  [Encounter: "Type 1 Diabetes Mellitus SCT VS"]
    union [Encounter: "Gestational Diabetes VS"]
    union [Encounter: "Type 2 Diabetes Diagnoses VS"]

define "generic_condition_concepts":
  [Condition: "Neonatal diabetes mellitus code"]

define "generic_condition_concepts_1":
  [Condition: "Glycogen storage disease, type I (disorder) code"]
    union [Condition: "Glycogen storage disease, type III (disorder) code"]
    union [Condition: "Glycogen storage disease, type VI (disorder) code"]
    union [Condition: "Glycogen storage disease type IX (disorder) code"]
    union [Condition: "Glycogen synthase deficiency (disorder) code"]

define "generic_encounter_concepts":
  [Encounter: "Neonatal diabetes mellitus code"]
    union [Encounter: "Glycogen storage disease, type I (disorder) code"]
    union [Encounter: "Glycogen storage disease, type III (disorder) code"]
    union [Encounter: "Glycogen storage disease, type VI (disorder) code"]
    union [Encounter: "Glycogen storage disease type IX (disorder) code"]
    union [Encounter: "Glycogen synthase deficiency (disorder) code"]

define "generic_condition_union":
  "generic_condition_valuesets"
    union "generic_condition_concepts"

define "generic_encounter_union":
  "generic_encounter_valuesets"
    union "generic_encounter_concepts"

// 血糖過度起伏且最近六個月二次醣化血紅素(HbA1c)值都大於(含)8%。

// 血糖過度起伏且最近六個月二次醣化血紅素(HbA1c)值都大於(含)8%。

// 血糖過度起伏且最近六個月二次醣化血紅素(HbA1c)值都大於(含)8%。




define

// 血糖過度起伏且最近六個月二次醣化血紅素(HbA1c)值都大於(含)8%。

// 血糖過度起伏且最近六個月二次醣化血紅素(HbA1c)值都大於(含)8%。

"Hemoglobin A1c/Hemoglobin.total in Blood eqgt 8 percent in past 6m eqgt 2"

// 血糖過度起伏且最近六個月二次醣化血紅素(HbA1c)值都大於(含)8%。

// 血糖過度起伏且最近六個月二次醣化血紅素(HbA1c)值都大於(含)8%。

:

// 血糖過度起伏且最近六個月二次醣化血紅素(HbA1c)值都大於(含)8%。

// 血糖過度起伏且最近六個月二次醣化血紅素(HbA1c)值都大於(含)8%。
  
  
  Count

// 血糖過度起伏且最近六個月二次醣化血紅素(HbA1c)值都大於(含)8%。
  (

// 血糖過度起伏且最近六個月二次醣化血紅素(HbA1c)值都大於(含)8%。
    ObservationLookBack

// 血糖過度起伏且最近六個月二次醣化血紅素(HbA1c)值都大於(含)8%。
    (

// 血糖過度起伏且最近六個月二次醣化血紅素(HbA1c)值都大於(含)8%。
      [

// 血糖過度起伏且最近六個月二次醣化血紅素(HbA1c)值都大於(含)8%。
      Observation

// 血糖過度起伏且最近六個月二次醣化血紅素(HbA1c)值都大於(含)8%。
      :

// 血糖過度起伏且最近六個月二次醣化血紅素(HbA1c)值都大於(含)8%。
      "Hemoglobin A1c/Hemoglobin.total in Blood code"

// 血糖過度起伏且最近六個月二次醣化血紅素(HbA1c)值都大於(含)8%。
      ] Ob
        where(Ob.value as FHIR.Quantity >= 8 '%'), 6 months
    )
  ) >= 2


// 第一型糖尿病、新生兒糖尿病


define "Type 1 diabetes mellitus or Neonatal diabetes mellitus":
  exists ( Confirmed("generic_condition_union") )

define "Postprocedural hypoinsulinemia":
  exists ( Confirmed([Condition: "Postprocedural hypoinsulinemia code"]) )

define "Other specified diabetes mellitus":
  exists ( Confirmed([Condition: "Other specified diabetes mellitus code"]) )

define "Acquired absence of pancreas":
  exists ( Confirmed([Condition: "Acquired absence of pancreas code"]) )

define "Postprocedural hypoinsulinemia_1":
  "Postprocedural hypoinsulinemia"

define "Other specified diabetes mellitus_1":
  "Other specified diabetes mellitus"

define "Acquired absence of pancreas_1":
  "Acquired absence of pancreas"

// 低血糖無感症


define "Hypoglycemia, unspecified":
  exists ( Confirmed([Condition: "Hypoglycemia, unspecified code"]) )

// 常有嚴重低血糖，須他人協助治療，最近三個月有因低血糖曾至急診診治或住院。


define "In the past three months, you have been to the emergency department or been hospitalized due to hypoglycemia.":
  exists ( EncounterLookBack([Encounter: "Hypoglycemia, unspecified code"] En
        where(exists(({ "emergency code", "inpatient encounter code" }) CODE
              where En.class ~ CODE
          )
        ), 3 months
    )
  )

// 懷孕


define "Pregnant state, incidental":
  exists ( Confirmed([Condition: "Pregnant state, incidental code"]) )

define "Gestational Diabetes":
  exists ( Confirmed([Condition: "Gestational Diabetes VS"]) )

define "Type 2 Diabetes Diagnoses":
  exists ( Confirmed([Condition: "Type 2 Diabetes Diagnoses VS"]) )

define "Insulin":
  exists ( [Procedure: "Insulin VS"] )

define "Glycogen storage disease":
  exists ( Confirmed("generic_condition_concepts_1") )

define "Cornflour (substance)":
  exists ( [Procedure: "Cornflour (substance) code"] )

define "inclusion 1a_1":
  "inclusion 1a"

define "inclusion 1b_1":
  "inclusion 1b"

define "Type 2 Diabetes Diagnoses_1":
  "Type 2 Diabetes Diagnoses"

define "Gestational Diabetes_1":
  "Gestational Diabetes"

define "inclusion 2a1_1":
  "inclusion 2a1"

define "Insulin_1":
  "Insulin"

define "inclusion 2a_1":
  "inclusion 2a"

define "Cornflour (substance)_1":
  "Cornflour (substance)"

define "Gestational Diabetes_2":
  "Gestational Diabetes"

define "inclusion 3b_1":
  "inclusion 3b"

define "Most Resent Encounter 1":
  "generic_encounter_union"

define "Postprocedural hypoinsulinemia Encounter":
  [Encounter: "Postprocedural hypoinsulinemia code"]

define "Other specified diabetes mellitus Encounter":
  [Encounter: "Other specified diabetes mellitus code"]

define "Acquired absence of pancreas Encounter":
  [Encounter: "Acquired absence of pancreas code"]

define "Most Resent Encounter 1_1":
  "Most Resent Encounter 1"

define "Most Resent Encounter 2_1":
  "Most Resent Encounter 2"

define "Most Resent Encounters 0":
  exists ( InProgress("Most Resent Encounters" En
        where(En.class ~ "ambulatory code")
    )
  )

define "Most Resent Encounters 1":
  exists ( InProgress("Most Resent Encounters" En
        where(En.class !~ "ambulatory code")
    )
  )

define "CGM Procedure":
  SortbyPerformedProcedure(C3F.ProcedureLookBack([Procedure: "Continuous glucose monitoring (procedure)"], 1 years))

define "CGM Procedure checked":
  if Count("CGM Procedure") > 1 then false 
    else if Count("CGM Procedure") > 0 then if duration in months between Last("CGM Procedure").performed and Now() > 1 then true 
    else false 
    else true

define "secondProcedureIndex":
  Count("CGM Procedure") - 2

define function "SortbyPerformedProcedure"(Procedures List<"Procedure">):
  Procedures Procedure
    sort by Coalesce((performed as FHIR."dateTime").value,(performed as FHIR."Period")."end".value,(performed as FHIR."Period")."start".value)

define "inclusion 1_1":
  "inclusion 1"

// 因Near-total pancreatectomy所致糖尿病


define "Diabetes due to near-total pancreatectomy":
  "Postprocedural hypoinsulinemia_1"
    and "Other specified diabetes mellitus_1"
    and "Acquired absence of pancreas_1"

define "inclusion 1a":
  "Type 1 diabetes mellitus or Neonatal diabetes mellitus"
    or "Diabetes due to near-total pancreatectomy"

define "inclusion 1b":
  "Hemoglobin A1c/Hemoglobin.total in Blood eqgt 8 percent in past 6m eqgt 2"
    or "Hypoglycemia, unspecified"
    or "In the past three months, you have been to the emergency department or been hospitalized due to hypoglycemia."
    or "Pregnant state, incidental"

define "inclusion 1":
  "inclusion 1a_1"
    and "inclusion 1b_1"

define "inclusion 2a1":
  "Type 2 Diabetes Diagnoses_1"
    and "Pregnant state, incidental"

define "inclusion 2a":
  "Gestational Diabetes_1"
    or "inclusion 2a1_1"

// 懷孕之第二型糖尿病或妊娠糖尿病，且接受胰島素注射者。


define "inclusion 2":
  "Insulin_1"
    and "inclusion 2a_1"

define "inclusion 3b":
  "Cornflour (substance)_1"
    or "Hypoglycemia, unspecified"

// 肝醣儲積症第零型、第一型、第三型、第六型、第九型，有嚴重低血糖病史或仍持續使用玉米粉治療者。


define "inclusion 3":
  "Gestational Diabetes_2"
    and "inclusion 3b_1"

define "Most Resent Encounter 2":
  "Postprocedural hypoinsulinemia Encounter"
    intersect "Other specified diabetes mellitus Encounter"
    intersect "Acquired absence of pancreas Encounter"

define "Most Resent Encounters":
  "Most Resent Encounter 1_1"
    union "Most Resent Encounter 2_1"

define "MeetsInclusionCriteria":
  "inclusion 1_1"
    or "inclusion 2"
    or "inclusion 3"

define "Subpopulation 1":
  if "InPopulation" is not true then null 
    else "Most Resent Encounters 0"
    and "CGM Procedure checked"

define "Subpopulation 2":
  if "InPopulation" is not true then null 
    else if "CGM Procedure checked" is not true then "Most Resent Encounters 0" 
    else null

define "Subpopulation 3":
  if "InPopulation" is not true then null 
    else "Most Resent Encounters 1"

define "InPopulation":
  "MeetsInclusionCriteria"

define "Recommendation":
  if "Subpopulation 1" then '1. 門診使用，無須事前審查。\n2. 限糖尿病共同照護網醫療機構申報，執行檢查人員和判讀醫師、營養師、衛教師必須參加過有關連續血糖監測之訓練課程。' 
    else if "Subpopulation 2" then '1. 門診使用，因與上次間隔小於一個月或過去一年已執行兩次以上，應事前審查。\n2. 限糖尿病共同照護網醫療機構申報，執行檢查人員和判讀醫師、營養師、衛教師必須參加過有關連續血糖監測之訓練課程。' 
    else if "Subpopulation 3" then '1. 住院使用應事前審查。一年至多執行二次，且間隔一個月以上。\n2. 限糖尿病共同照護網醫療機構申報，執行檢查人員和判讀醫師、營養師、衛教師必須參加過有關連續血糖監測之訓練課程。' 
    else if "InPopulation" then '1. 門診使用，一年至多執行二次，且間隔一個月以上。如一年執行超過二次者，應事前審查。\n2. 住院使用應事前審查。一年至多執行二次，且間隔一個月以上。\n3. 限糖尿病共同照護網醫療機構申報，執行檢查人員和判讀醫師、營養師、衛教師必須參加過有關連續血糖監測之訓練課程。' 
    else null

define "Rationale":
  if "Subpopulation 1" then null 
    else if "Subpopulation 2" then null 
    else if "InPopulation" then null 
    else null

define "Links":
  if "Subpopulation 1" then null 
    else if "Subpopulation 2" then null 
    else if "InPopulation" then null 
    else null

define "Suggestions":
  if "Subpopulation 1" then null 
    else if "Subpopulation 2" then null 
    else if "InPopulation" then null 
    else null

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