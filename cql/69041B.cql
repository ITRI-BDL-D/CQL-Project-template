library "69041B" version '0.0.1'

using FHIR version '4.0.1'

include "FHIRHelpers" version '4.0.1' called FHIRHelpers
include CDSConnectCommonsForFHIRv401 version '2.1.0' called C3F

codesystem "ICD-10-CM": 'http://hl7.org/fhir/sid/icd-10-cm'
codesystem "ICD-10-PCS": 'http://www.cms.gov/Medicare/Coding/ICD10'
codesystem "SCT": 'http://snomed.info/sct'
codesystem "CONDVERSTATUS": 'http://terminology.hl7.org/CodeSystem/condition-ver-status'

code "Atherosclerosis of native arteries of the extremities code": 'I70.2' from "ICD-10-CM" display 'Atherosclerosis of native arteries of the extremities'
code "Unspecified atherosclerosis of native arteries of extremities code": 'I70.20' from "ICD-10-CM" display 'Unspecified atherosclerosis of native arteries of extremities'
code "Unspecified atherosclerosis of native arteries of extremities, right leg code": 'I70.201' from "ICD-10-CM" display 'Unspecified atherosclerosis of native arteries of extremities, right leg'
code "Unspecified atherosclerosis of native arteries of extremities, left leg code": 'I70.202' from "ICD-10-CM" display 'Unspecified atherosclerosis of native arteries of extremities, left leg'
code "Unspecified atherosclerosis of native arteries of extremities, bilateral legs code": 'I70.203' from "ICD-10-CM" display 'Unspecified atherosclerosis of native arteries of extremities, bilateral legs'
code "Unspecified atherosclerosis of native arteries of extremities, other extremity code": 'I70.208' from "ICD-10-CM" display 'Unspecified atherosclerosis of native arteries of extremities, other extremity'
code "Unspecified atherosclerosis of native arteries of extremities, unspecified extremity code": 'I70.209' from "ICD-10-CM" display 'Unspecified atherosclerosis of native arteries of extremities, unspecified extremity'
code "Atherosclerosis of native arteries of extremities with intermittent claudication code": 'I70.21' from "ICD-10-CM" display 'Atherosclerosis of native arteries of extremities with intermittent claudication'
code "Atherosclerosis of native arteries of extremities with intermittent claudication, right leg code": 'I70.211' from "ICD-10-CM" display 'Atherosclerosis of native arteries of extremities with intermittent claudication, right leg'
code "Atherosclerosis of native arteries of extremities with intermittent claudication, left leg code": 'I70.212' from "ICD-10-CM" display 'Atherosclerosis of native arteries of extremities with intermittent claudication, left leg'
code "Atherosclerosis of native arteries of extremities with intermittent claudication, bilateral legs code": 'I70.213' from "ICD-10-CM" display 'Atherosclerosis of native arteries of extremities with intermittent claudication, bilateral legs'
code "Atherosclerosis of native arteries of extremities with intermittent claudication, other extremity code": 'I70.218' from "ICD-10-CM" display 'Atherosclerosis of native arteries of extremities with intermittent claudication, other extremity'
code "Atherosclerosis of native arteries of extremities with intermittent claudication, unspecified extremity code": 'I70.219' from "ICD-10-CM" display 'Atherosclerosis of native arteries of extremities with intermittent claudication, unspecified extremity'
code "Atherosclerosis of native arteries of extremities with rest pain code": 'I70.22' from "ICD-10-CM" display 'Atherosclerosis of native arteries of extremities with rest pain'
code "Atherosclerosis of native arteries of extremities with rest pain, right leg code": 'I70.221' from "ICD-10-CM" display 'Atherosclerosis of native arteries of extremities with rest pain, right leg'
code "Atherosclerosis of native arteries of extremities with rest pain, left leg code": 'I70.222' from "ICD-10-CM" display 'Atherosclerosis of native arteries of extremities with rest pain, left leg'
code "Atherosclerosis of native arteries of extremities with rest pain, bilateral legs code": 'I70.223' from "ICD-10-CM" display 'Atherosclerosis of native arteries of extremities with rest pain, bilateral legs'
code "Atherosclerosis of native arteries of extremities with rest pain, other extremity code": 'I70.228' from "ICD-10-CM" display 'Atherosclerosis of native arteries of extremities with rest pain, other extremity'
code "Atherosclerosis of native arteries of extremities with rest pain, unspecified extremity code": 'I70.229' from "ICD-10-CM" display 'Atherosclerosis of native arteries of extremities with rest pain, unspecified extremity'
code "Atherosclerosis of native arteries of right leg with ulceration code": 'I70.23' from "ICD-10-CM" display 'Atherosclerosis of native arteries of right leg with ulceration'
code "Atherosclerosis of native arteries of right leg with ulceration of thigh code": 'I70.231' from "ICD-10-CM" display 'Atherosclerosis of native arteries of right leg with ulceration of thigh'
code "Atherosclerosis of native arteries of right leg with ulceration of calf code": 'I70.232' from "ICD-10-CM" display 'Atherosclerosis of native arteries of right leg with ulceration of calf'
code "Atherosclerosis of native arteries of right leg with ulceration of ankle code": 'I70.233' from "ICD-10-CM" display 'Atherosclerosis of native arteries of right leg with ulceration of ankle'
code "Atherosclerosis of native arteries of right leg with ulceration of heel and midfoot code": 'I70.234' from "ICD-10-CM" display 'Atherosclerosis of native arteries of right leg with ulceration of heel and midfoot'
code "Atherosclerosis of native arteries of right leg with ulceration of other part of foot code": 'I70.235' from "ICD-10-CM" display 'Atherosclerosis of native arteries of right leg with ulceration of other part of foot'
code "Atherosclerosis of native arteries of right leg with ulceration of other part of lower leg code": 'I70.238' from "ICD-10-CM" display 'Atherosclerosis of native arteries of right leg with ulceration of other part of lower leg'
code "Atherosclerosis of native arteries of right leg with ulceration of unspecified site code": 'I70.239' from "ICD-10-CM" display 'Atherosclerosis of native arteries of right leg with ulceration of unspecified site'
code "Atherosclerosis of native arteries of left leg with ulceration code": 'I70.24' from "ICD-10-CM" display 'Atherosclerosis of native arteries of left leg with ulceration'
code "Atherosclerosis of native arteries of left leg with ulceration of thigh code": 'I70.241' from "ICD-10-CM" display 'Atherosclerosis of native arteries of left leg with ulceration of thigh'
code "Atherosclerosis of native arteries of left leg with ulceration of calf code": 'I70.242' from "ICD-10-CM" display 'Atherosclerosis of native arteries of left leg with ulceration of calf'
code "Atherosclerosis of native arteries of left leg with ulceration of ankle code": 'I70.243' from "ICD-10-CM" display 'Atherosclerosis of native arteries of left leg with ulceration of ankle'
code "Atherosclerosis of native arteries of left leg with ulceration of heel and midfoot code": 'I70.244' from "ICD-10-CM" display 'Atherosclerosis of native arteries of left leg with ulceration of heel and midfoot'
code "Atherosclerosis of native arteries of left leg with ulceration of other part of foot code": 'I70.245' from "ICD-10-CM" display 'Atherosclerosis of native arteries of left leg with ulceration of other part of foot'
code "Atherosclerosis of native arteries of left leg with ulceration of other part of lower leg code": 'I70.248' from "ICD-10-CM" display 'Atherosclerosis of native arteries of left leg with ulceration of other part of lower leg'
code "Atherosclerosis of native arteries of left leg with ulceration of unspecified site code": 'I70.249' from "ICD-10-CM" display 'Atherosclerosis of native arteries of left leg with ulceration of unspecified site'
code "Atherosclerosis of native arteries of other extremities with ulceration code": 'I70.25' from "ICD-10-CM" display 'Atherosclerosis of native arteries of other extremities with ulceration'
code "Atherosclerosis of native arteries of extremities with gangrene code": 'I70.26' from "ICD-10-CM" display 'Atherosclerosis of native arteries of extremities with gangrene'
code "Atherosclerosis of native arteries of extremities with gangrene, right leg code": 'I70.261' from "ICD-10-CM" display 'Atherosclerosis of native arteries of extremities with gangrene, right leg'
code "Atherosclerosis of native arteries of extremities with gangrene, left leg code": 'I70.262' from "ICD-10-CM" display 'Atherosclerosis of native arteries of extremities with gangrene, left leg'
code "Atherosclerosis of native arteries of extremities with gangrene, bilateral legs code": 'I70.263' from "ICD-10-CM" display 'Atherosclerosis of native arteries of extremities with gangrene, bilateral legs'
code "Atherosclerosis of native arteries of extremities with gangrene, other extremity code": 'I70.268' from "ICD-10-CM" display 'Atherosclerosis of native arteries of extremities with gangrene, other extremity'
code "Atherosclerosis of native arteries of extremities with gangrene, unspecified extremity code": 'I70.269' from "ICD-10-CM" display 'Atherosclerosis of native arteries of extremities with gangrene, unspecified extremity'
code "Other atherosclerosis of native arteries of extremities code": 'I70.29' from "ICD-10-CM" display 'Other atherosclerosis of native arteries of extremities'
code "Other atherosclerosis of native arteries of extremities, right leg code": 'I70.291' from "ICD-10-CM" display 'Other atherosclerosis of native arteries of extremities, right leg'
code "Other atherosclerosis of native arteries of extremities, left leg code": 'I70.292' from "ICD-10-CM" display 'Other atherosclerosis of native arteries of extremities, left leg'
code "Other atherosclerosis of native arteries of extremities, bilateral legs code": 'I70.293' from "ICD-10-CM" display 'Other atherosclerosis of native arteries of extremities, bilateral legs'
code "Other atherosclerosis of native arteries of extremities, other extremity code": 'I70.298' from "ICD-10-CM" display 'Other atherosclerosis of native arteries of extremities, other extremity'
code "Other atherosclerosis of native arteries of extremities, unspecified extremity code": 'I70.299' from "ICD-10-CM" display 'Other atherosclerosis of native arteries of extremities, unspecified extremity'
code "Atherosclerosis of unspecified type of bypass graft(s) of the extremities code": 'I70.3' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the extremities'
code "Unspecified atherosclerosis of unspecified type of bypass graft(s) of the extremities code": 'I70.30' from "ICD-10-CM" display 'Unspecified atherosclerosis of unspecified type of bypass graft(s) of the extremities'
code "Unspecified atherosclerosis of unspecified type of bypass graft(s) of the extremities, right leg code": 'I70.301' from "ICD-10-CM" display 'Unspecified atherosclerosis of unspecified type of bypass graft(s) of the extremities, right leg'
code "Unspecified atherosclerosis of unspecified type of bypass graft(s) of the extremities, left leg code": 'I70.302' from "ICD-10-CM" display 'Unspecified atherosclerosis of unspecified type of bypass graft(s) of the extremities, left leg'
code "Unspecified atherosclerosis of unspecified type of bypass graft(s) of the extremities, bilateral legs code": 'I70.303' from "ICD-10-CM" display 'Unspecified atherosclerosis of unspecified type of bypass graft(s) of the extremities, bilateral legs'
code "Unspecified atherosclerosis of unspecified type of bypass graft(s) of the extremities, other extremity code": 'I70.308' from "ICD-10-CM" display 'Unspecified atherosclerosis of unspecified type of bypass graft(s) of the extremities, other extremity'
code "Unspecified atherosclerosis of unspecified type of bypass graft(s) of the extremities, unspecified extremity code": 'I70.309' from "ICD-10-CM" display 'Unspecified atherosclerosis of unspecified type of bypass graft(s) of the extremities, unspecified extremity'
code "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with intermittent claudication code": 'I70.31' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the extremities with intermittent claudication'
code "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with intermittent claudication, right leg code": 'I70.311' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the extremities with intermittent claudication, right leg'
code "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with intermittent claudication, left leg code": 'I70.312' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the extremities with intermittent claudication, left leg'
code "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with intermittent claudication, bilateral legs code": 'I70.313' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the extremities with intermittent claudication, bilateral legs'
code "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with intermittent claudication, other extremity code": 'I70.318' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the extremities with intermittent claudication, other extremity'
code "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with intermittent claudication, unspecified extremity code": 'I70.319' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the extremities with intermittent claudication, unspecified extremity'
code "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with rest pain code": 'I70.32' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the extremities with rest pain'
code "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with rest pain, right leg code": 'I70.321' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the extremities with rest pain, right leg'
code "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with rest pain, left leg code": 'I70.322' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the extremities with rest pain, left leg'
code "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with rest pain, bilateral legs code": 'I70.323' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the extremities with rest pain, bilateral legs'
code "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with rest pain, other extremity code": 'I70.328' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the extremities with rest pain, other extremity'
code "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with rest pain, unspecified extremity code": 'I70.329' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the extremities with rest pain, unspecified extremity'
code "Atherosclerosis of unspecified type of bypass graft(s) of the right leg with ulceration code": 'I70.33' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the right leg with ulceration'
code "Atherosclerosis of unspecified type of bypass graft(s) of the right leg with ulceration of thigh code": 'I70.331' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the right leg with ulceration of thigh'
code "Atherosclerosis of unspecified type of bypass graft(s) of the right leg with ulceration of calf code": 'I70.332' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the right leg with ulceration of calf'
code "Atherosclerosis of unspecified type of bypass graft(s) of the right leg with ulceration of ankle code": 'I70.333' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the right leg with ulceration of ankle'
code "Atherosclerosis of unspecified type of bypass graft(s) of the right leg with ulceration of heel and midfoot code": 'I70.334' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the right leg with ulceration of heel and midfoot'
code "Atherosclerosis of unspecified type of bypass graft(s) of the right leg with ulceration of other part of foot code": 'I70.335' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the right leg with ulceration of other part of foot'
code "Atherosclerosis of unspecified type of bypass graft(s) of the right leg with ulceration of other part of lower leg code": 'I70.338' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the right leg with ulceration of other part of lower leg'
code "Atherosclerosis of unspecified type of bypass graft(s) of the right leg with ulceration of unspecified site code": 'I70.339' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the right leg with ulceration of unspecified site'
code "Atherosclerosis of unspecified type of bypass graft(s) of the left leg with ulceration code": 'I70.34' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the left leg with ulceration'
code "Atherosclerosis of unspecified type of bypass graft(s) of the left leg with ulceration of thigh code": 'I70.341' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the left leg with ulceration of thigh'
code "Atherosclerosis of unspecified type of bypass graft(s) of the left leg with ulceration of calf code": 'I70.342' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the left leg with ulceration of calf'
code "Atherosclerosis of unspecified type of bypass graft(s) of the left leg with ulceration of ankle code": 'I70.343' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the left leg with ulceration of ankle'
code "Atherosclerosis of unspecified type of bypass graft(s) of the left leg with ulceration of heel and midfoot code": 'I70.344' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the left leg with ulceration of heel and midfoot'
code "Atherosclerosis of unspecified type of bypass graft(s) of the left leg with ulceration of other part of foot code": 'I70.345' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the left leg with ulceration of other part of foot'
code "Atherosclerosis of unspecified type of bypass graft(s) of the left leg with ulceration of other part of lower leg code": 'I70.348' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the left leg with ulceration of other part of lower leg'
code "Atherosclerosis of unspecified type of bypass graft(s) of the left leg with ulceration of unspecified site code": 'I70.349' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the left leg with ulceration of unspecified site'
code "Atherosclerosis of unspecified type of bypass graft(s) of other extremity with ulceration code": 'I70.35' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of other extremity with ulceration'
code "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with gangrene code": 'I70.36' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the extremities with gangrene'
code "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with gangrene, right leg code": 'I70.361' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the extremities with gangrene, right leg'
code "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with gangrene, left leg code": 'I70.362' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the extremities with gangrene, left leg'
code "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with gangrene, bilateral legs code": 'I70.363' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the extremities with gangrene, bilateral legs'
code "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with gangrene, other extremity code": 'I70.368' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the extremities with gangrene, other extremity'
code "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with gangrene, unspecified extremity code": 'I70.369' from "ICD-10-CM" display 'Atherosclerosis of unspecified type of bypass graft(s) of the extremities with gangrene, unspecified extremity'
code "Other atherosclerosis of unspecified type of bypass graft(s) of the extremities code": 'I70.39' from "ICD-10-CM" display 'Other atherosclerosis of unspecified type of bypass graft(s) of the extremities'
code "Other atherosclerosis of unspecified type of bypass graft(s) of the extremities, right leg code": 'I70.391' from "ICD-10-CM" display 'Other atherosclerosis of unspecified type of bypass graft(s) of the extremities, right leg'
code "Other atherosclerosis of unspecified type of bypass graft(s) of the extremities, left leg code": 'I70.392' from "ICD-10-CM" display 'Other atherosclerosis of unspecified type of bypass graft(s) of the extremities, left leg'
code "Other atherosclerosis of unspecified type of bypass graft(s) of the extremities, bilateral legs code": 'I70.393' from "ICD-10-CM" display 'Other atherosclerosis of unspecified type of bypass graft(s) of the extremities, bilateral legs'
code "Other atherosclerosis of unspecified type of bypass graft(s) of the extremities, other extremity code": 'I70.398' from "ICD-10-CM" display 'Other atherosclerosis of unspecified type of bypass graft(s) of the extremities, other extremity'
code "Other atherosclerosis of unspecified type of bypass graft(s) of the extremities, unspecified extremity code": 'I70.399' from "ICD-10-CM" display 'Other atherosclerosis of unspecified type of bypass graft(s) of the extremities, unspecified extremity'
code "Atherosclerosis of autologous vein bypass graft(s) of the extremities code": 'I70.4' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the extremities'
code "Unspecified atherosclerosis of autologous vein bypass graft(s) of the extremities code": 'I70.40' from "ICD-10-CM" display 'Unspecified atherosclerosis of autologous vein bypass graft(s) of the extremities'
code "Unspecified atherosclerosis of autologous vein bypass graft(s) of the extremities, right leg code": 'I70.401' from "ICD-10-CM" display 'Unspecified atherosclerosis of autologous vein bypass graft(s) of the extremities, right leg'
code "Unspecified atherosclerosis of autologous vein bypass graft(s) of the extremities, left leg code": 'I70.402' from "ICD-10-CM" display 'Unspecified atherosclerosis of autologous vein bypass graft(s) of the extremities, left leg'
code "Unspecified atherosclerosis of autologous vein bypass graft(s) of the extremities, bilateral legs code": 'I70.403' from "ICD-10-CM" display 'Unspecified atherosclerosis of autologous vein bypass graft(s) of the extremities, bilateral legs'
code "Unspecified atherosclerosis of autologous vein bypass graft(s) of the extremities, other extremity code": 'I70.408' from "ICD-10-CM" display 'Unspecified atherosclerosis of autologous vein bypass graft(s) of the extremities, other extremity'
code "Unspecified atherosclerosis of autologous vein bypass graft(s) of the extremities, unspecified extremity code": 'I70.409' from "ICD-10-CM" display 'Unspecified atherosclerosis of autologous vein bypass graft(s) of the extremities, unspecified extremity'
code "Atherosclerosis of autologous vein bypass graft(s) of the extremities with intermittent claudication code": 'I70.41' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the extremities with intermittent claudication'
code "Atherosclerosis of autologous vein bypass graft(s) of the extremities with intermittent claudication, right leg code": 'I70.411' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the extremities with intermittent claudication, right leg'
code "Atherosclerosis of autologous vein bypass graft(s) of the extremities with intermittent claudication, left leg code": 'I70.412' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the extremities with intermittent claudication, left leg'
code "Atherosclerosis of autologous vein bypass graft(s) of the extremities with intermittent claudication, bilateral legs code": 'I70.413' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the extremities with intermittent claudication, bilateral legs'
code "Atherosclerosis of autologous vein bypass graft(s) of the extremities with intermittent claudication, other extremity code": 'I70.418' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the extremities with intermittent claudication, other extremity'
code "Atherosclerosis of autologous vein bypass graft(s) of the extremities with intermittent claudication, unspecified extremity code": 'I70.419' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the extremities with intermittent claudication, unspecified extremity'
code "Atherosclerosis of autologous vein bypass graft(s) of the extremities with rest pain code": 'I70.42' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the extremities with rest pain'
code "Atherosclerosis of autologous vein bypass graft(s) of the extremities with rest pain, right leg code": 'I70.421' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the extremities with rest pain, right leg'
code "Atherosclerosis of autologous vein bypass graft(s) of the extremities with rest pain, left leg code": 'I70.422' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the extremities with rest pain, left leg'
code "Atherosclerosis of autologous vein bypass graft(s) of the extremities with rest pain, bilateral legs code": 'I70.423' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the extremities with rest pain, bilateral legs'
code "Atherosclerosis of autologous vein bypass graft(s) of the extremities with rest pain, other extremity code": 'I70.428' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the extremities with rest pain, other extremity'
code "Atherosclerosis of autologous vein bypass graft(s) of the extremities with rest pain, unspecified extremity code": 'I70.429' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the extremities with rest pain, unspecified extremity'
code "Atherosclerosis of autologous vein bypass graft(s) of the right leg with ulceration code": 'I70.43' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the right leg with ulceration'
code "Atherosclerosis of autologous vein bypass graft(s) of the right leg with ulceration of thigh code": 'I70.431' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the right leg with ulceration of thigh'
code "Atherosclerosis of autologous vein bypass graft(s) of the right leg with ulceration of calf code": 'I70.432' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the right leg with ulceration of calf'
code "Atherosclerosis of autologous vein bypass graft(s) of the right leg with ulceration of ankle code": 'I70.433' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the right leg with ulceration of ankle'
code "Atherosclerosis of autologous vein bypass graft(s) of the right leg with ulceration of heel and midfoot code": 'I70.434' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the right leg with ulceration of heel and midfoot'
code "Atherosclerosis of autologous vein bypass graft(s) of the right leg with ulceration of other part of foot code": 'I70.435' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the right leg with ulceration of other part of foot'
code "Atherosclerosis of autologous vein bypass graft(s) of the right leg with ulceration of other part of lower leg code": 'I70.438' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the right leg with ulceration of other part of lower leg'
code "Atherosclerosis of autologous vein bypass graft(s) of the right leg with ulceration of unspecified site code": 'I70.439' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the right leg with ulceration of unspecified site'
code "Atherosclerosis of autologous vein bypass graft(s) of the left leg with ulceration code": 'I70.44' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the left leg with ulceration'
code "Atherosclerosis of autologous vein bypass graft(s) of the left leg with ulceration of thigh code": 'I70.441' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the left leg with ulceration of thigh'
code "Atherosclerosis of autologous vein bypass graft(s) of the left leg with ulceration of calf code": 'I70.442' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the left leg with ulceration of calf'
code "Atherosclerosis of autologous vein bypass graft(s) of the left leg with ulceration of ankle code": 'I70.443' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the left leg with ulceration of ankle'
code "Atherosclerosis of autologous vein bypass graft(s) of the left leg with ulceration of heel and midfoot code": 'I70.444' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the left leg with ulceration of heel and midfoot'
code "Atherosclerosis of autologous vein bypass graft(s) of the left leg with ulceration of other part of foot code": 'I70.445' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the left leg with ulceration of other part of foot'
code "Atherosclerosis of autologous vein bypass graft(s) of the left leg with ulceration of other part of lower leg code": 'I70.448' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the left leg with ulceration of other part of lower leg'
code "Atherosclerosis of autologous vein bypass graft(s) of the left leg with ulceration of unspecified site code": 'I70.449' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the left leg with ulceration of unspecified site'
code "Atherosclerosis of autologous vein bypass graft(s) of other extremity with ulceration code": 'I70.45' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of other extremity with ulceration'
code "Atherosclerosis of autologous vein bypass graft(s) of the extremities with gangrene code": 'I70.46' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the extremities with gangrene'
code "Atherosclerosis of autologous vein bypass graft(s) of the extremities with gangrene, right leg code": 'I70.461' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the extremities with gangrene, right leg'
code "Atherosclerosis of autologous vein bypass graft(s) of the extremities with gangrene, left leg code": 'I70.462' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the extremities with gangrene, left leg'
code "Atherosclerosis of autologous vein bypass graft(s) of the extremities with gangrene, bilateral legs code": 'I70.463' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the extremities with gangrene, bilateral legs'
code "Atherosclerosis of autologous vein bypass graft(s) of the extremities with gangrene, other extremity code": 'I70.468' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the extremities with gangrene, other extremity'
code "Atherosclerosis of autologous vein bypass graft(s) of the extremities with gangrene, unspecified extremity code": 'I70.469' from "ICD-10-CM" display 'Atherosclerosis of autologous vein bypass graft(s) of the extremities with gangrene, unspecified extremity'
code "Other atherosclerosis of autologous vein bypass graft(s) of the extremities code": 'I70.49' from "ICD-10-CM" display 'Other atherosclerosis of autologous vein bypass graft(s) of the extremities'
code "Other atherosclerosis of autologous vein bypass graft(s) of the extremities, right leg code": 'I70.491' from "ICD-10-CM" display 'Other atherosclerosis of autologous vein bypass graft(s) of the extremities, right leg'
code "Other atherosclerosis of autologous vein bypass graft(s) of the extremities, left leg code": 'I70.492' from "ICD-10-CM" display 'Other atherosclerosis of autologous vein bypass graft(s) of the extremities, left leg'
code "Other atherosclerosis of autologous vein bypass graft(s) of the extremities, bilateral legs code": 'I70.493' from "ICD-10-CM" display 'Other atherosclerosis of autologous vein bypass graft(s) of the extremities, bilateral legs'
code "Other atherosclerosis of autologous vein bypass graft(s) of the extremities, other extremity code": 'I70.498' from "ICD-10-CM" display 'Other atherosclerosis of autologous vein bypass graft(s) of the extremities, other extremity'
code "Other atherosclerosis of autologous vein bypass graft(s) of the extremities, unspecified extremity code": 'I70.499' from "ICD-10-CM" display 'Other atherosclerosis of autologous vein bypass graft(s) of the extremities, unspecified extremity'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities code": 'I70.5' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the extremities'
code "Unspecified atherosclerosis of nonautologous biological bypass graft(s) of the extremities code": 'I70.50' from "ICD-10-CM" display 'Unspecified atherosclerosis of nonautologous biological bypass graft(s) of the extremities'
code "Unspecified atherosclerosis of nonautologous biological bypass graft(s) of the extremities, right leg code": 'I70.501' from "ICD-10-CM" display 'Unspecified atherosclerosis of nonautologous biological bypass graft(s) of the extremities, right leg'
code "Unspecified atherosclerosis of nonautologous biological bypass graft(s) of the extremities, left leg code": 'I70.502' from "ICD-10-CM" display 'Unspecified atherosclerosis of nonautologous biological bypass graft(s) of the extremities, left leg'
code "Unspecified atherosclerosis of nonautologous biological bypass graft(s) of the extremities, bilateral legs code": 'I70.503' from "ICD-10-CM" display 'Unspecified atherosclerosis of nonautologous biological bypass graft(s) of the extremities, bilateral legs'
code "Unspecified atherosclerosis of nonautologous biological bypass graft(s) of the extremities, other extremity code": 'I70.508' from "ICD-10-CM" display 'Unspecified atherosclerosis of nonautologous biological bypass graft(s) of the extremities, other extremity'
code "Unspecified atherosclerosis of nonautologous biological bypass graft(s) of the extremities, unspecified extremity code": 'I70.509' from "ICD-10-CM" display 'Unspecified atherosclerosis of nonautologous biological bypass graft(s) of the extremities, unspecified extremity'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities intermittent claudication code": 'I70.51' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the extremities intermittent claudication'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with intermittent claudication, right leg code": 'I70.511' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with intermittent claudication, right leg'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with intermittent claudication, left leg code": 'I70.512' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with intermittent claudication, left leg'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with intermittent claudication, bilateral legs code": 'I70.513' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with intermittent claudication, bilateral legs'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with intermittent claudication, other extremity code": 'I70.518' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with intermittent claudication, other extremity'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with intermittent claudication, unspecified extremity code": 'I70.519' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with intermittent claudication, unspecified extremity'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with rest pain code": 'I70.52' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with rest pain'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with rest pain, right leg code": 'I70.521' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with rest pain, right leg'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with rest pain, left leg code": 'I70.522' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with rest pain, left leg'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with rest pain, bilateral legs code": 'I70.523' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with rest pain, bilateral legs'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with rest pain, other extremity code": 'I70.528' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with rest pain, other extremity'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with rest pain, unspecified extremity code": 'I70.529' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with rest pain, unspecified extremity'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the right leg with ulceration code": 'I70.53' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the right leg with ulceration'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the right leg with ulceration of thigh code": 'I70.531' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the right leg with ulceration of thigh'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the right leg with ulceration of calf code": 'I70.532' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the right leg with ulceration of calf'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the right leg with ulceration of ankle code": 'I70.533' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the right leg with ulceration of ankle'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the right leg with ulceration of heel and midfoot code": 'I70.534' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the right leg with ulceration of heel and midfoot'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the right leg with ulceration of other part of foot code": 'I70.535' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the right leg with ulceration of other part of foot'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the right leg with ulceration of other part of lower leg code": 'I70.538' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the right leg with ulceration of other part of lower leg'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the right leg with ulceration of unspecified site code": 'I70.539' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the right leg with ulceration of unspecified site'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the left leg with ulceration code": 'I70.54' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the left leg with ulceration'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the left leg with ulceration of thigh code": 'I70.541' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the left leg with ulceration of thigh'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the left leg with ulceration of calf code": 'I70.542' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the left leg with ulceration of calf'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the left leg with ulceration of ankle code": 'I70.543' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the left leg with ulceration of ankle'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the left leg with ulceration of heel and midfoot code": 'I70.544' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the left leg with ulceration of heel and midfoot'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the left leg with ulceration of other part of foot code": 'I70.545' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the left leg with ulceration of other part of foot'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the left leg with ulceration of other part of lower leg code": 'I70.548' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the left leg with ulceration of other part of lower leg'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the left leg with ulceration of unspecified site code": 'I70.549' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the left leg with ulceration of unspecified site'
code "Atherosclerosis of nonautologous biological bypass graft(s) of other extremity with ulceration code": 'I70.55' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of other extremity with ulceration'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with gangrene code": 'I70.56' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with gangrene'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with gangrene, right leg code": 'I70.561' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with gangrene, right leg'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with gangrene, left leg code": 'I70.562' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with gangrene, left leg'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with gangrene, bilateral legs code": 'I70.563' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with gangrene, bilateral legs'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with gangrene, other extremity code": 'I70.568' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with gangrene, other extremity'
code "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with gangrene, unspecified extremity code": 'I70.569' from "ICD-10-CM" display 'Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with gangrene, unspecified extremity'
code "Other atherosclerosis of nonautologous biological bypass graft(s) of the extremities code": 'I70.59' from "ICD-10-CM" display 'Other atherosclerosis of nonautologous biological bypass graft(s) of the extremities'
code "Other atherosclerosis of nonautologous biological bypass graft(s) of the extremities, right leg code": 'I70.591' from "ICD-10-CM" display 'Other atherosclerosis of nonautologous biological bypass graft(s) of the extremities, right leg'
code "Other atherosclerosis of nonautologous biological bypass graft(s) of the extremities, left leg code": 'I70.592' from "ICD-10-CM" display 'Other atherosclerosis of nonautologous biological bypass graft(s) of the extremities, left leg'
code "Other atherosclerosis of nonautologous biological bypass graft(s) of the extremities, bilateral legs code": 'I70.593' from "ICD-10-CM" display 'Other atherosclerosis of nonautologous biological bypass graft(s) of the extremities, bilateral legs'
code "Other atherosclerosis of nonautologous biological bypass graft(s) of the extremities, other extremity code": 'I70.598' from "ICD-10-CM" display 'Other atherosclerosis of nonautologous biological bypass graft(s) of the extremities, other extremity'
code "Other atherosclerosis of nonautologous biological bypass graft(s) of the extremities, unspecified extremity code": 'I70.599' from "ICD-10-CM" display 'Other atherosclerosis of nonautologous biological bypass graft(s) of the extremities, unspecified extremity'
code "Atherosclerosis of nonbiological bypass graft(s) of the extremities code": 'I70.6' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the extremities'
code "Unspecified atherosclerosis of nonbiological bypass graft(s) of the extremities code": 'I70.60' from "ICD-10-CM" display 'Unspecified atherosclerosis of nonbiological bypass graft(s) of the extremities'
code "Unspecified atherosclerosis of nonbiological bypass graft(s) of the extremities, right leg code": 'I70.601' from "ICD-10-CM" display 'Unspecified atherosclerosis of nonbiological bypass graft(s) of the extremities, right leg'
code "Unspecified atherosclerosis of nonbiological bypass graft(s) of the extremities, left leg code": 'I70.602' from "ICD-10-CM" display 'Unspecified atherosclerosis of nonbiological bypass graft(s) of the extremities, left leg'
code "Unspecified atherosclerosis of nonbiological bypass graft(s) of the extremities, bilateral legs code": 'I70.603' from "ICD-10-CM" display 'Unspecified atherosclerosis of nonbiological bypass graft(s) of the extremities, bilateral legs'
code "Unspecified atherosclerosis of nonbiological bypass graft(s) of the extremities, other extremity code": 'I70.608' from "ICD-10-CM" display 'Unspecified atherosclerosis of nonbiological bypass graft(s) of the extremities, other extremity'
code "Unspecified atherosclerosis of nonbiological bypass graft(s) of the extremities, unspecified extremity code": 'I70.609' from "ICD-10-CM" display 'Unspecified atherosclerosis of nonbiological bypass graft(s) of the extremities, unspecified extremity'
code "Atherosclerosis of nonbiological bypass graft(s) of the extremities with intermittent claudication code": 'I70.61' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the extremities with intermittent claudication'
code "Atherosclerosis of nonbiological bypass graft(s) of the extremities with intermittent claudication, right leg code": 'I70.611' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the extremities with intermittent claudication, right leg'
code "Atherosclerosis of nonbiological bypass graft(s) of the extremities with intermittent claudication, left leg code": 'I70.612' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the extremities with intermittent claudication, left leg'
code "Atherosclerosis of nonbiological bypass graft(s) of the extremities with intermittent claudication, bilateral legs code": 'I70.613' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the extremities with intermittent claudication, bilateral legs'
code "Atherosclerosis of nonbiological bypass graft(s) of the extremities with intermittent claudication, other extremity code": 'I70.618' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the extremities with intermittent claudication, other extremity'
code "Atherosclerosis of nonbiological bypass graft(s) of the extremities with intermittent claudication, unspecified extremity code": 'I70.619' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the extremities with intermittent claudication, unspecified extremity'
code "Atherosclerosis of nonbiological bypass graft(s) of the extremities with rest pain code": 'I70.62' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the extremities with rest pain'
code "Atherosclerosis of nonbiological bypass graft(s) of the extremities with rest pain, right leg code": 'I70.621' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the extremities with rest pain, right leg'
code "Atherosclerosis of nonbiological bypass graft(s) of the extremities with rest pain, left leg code": 'I70.622' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the extremities with rest pain, left leg'
code "Atherosclerosis of nonbiological bypass graft(s) of the extremities with rest pain, bilateral legs code": 'I70.623' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the extremities with rest pain, bilateral legs'
code "Atherosclerosis of nonbiological bypass graft(s) of the extremities with rest pain, other extremity code": 'I70.628' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the extremities with rest pain, other extremity'
code "Atherosclerosis of nonbiological bypass graft(s) of the extremities with rest pain, unspecified extremity code": 'I70.629' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the extremities with rest pain, unspecified extremity'
code "Atherosclerosis of nonbiological bypass graft(s) of the right leg with ulceration code": 'I70.63' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the right leg with ulceration'
code "Atherosclerosis of nonbiological bypass graft(s) of the right leg with ulceration of thigh code": 'I70.631' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the right leg with ulceration of thigh'
code "Atherosclerosis of nonbiological bypass graft(s) of the right leg with ulceration of calf code": 'I70.632' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the right leg with ulceration of calf'
code "Atherosclerosis of nonbiological bypass graft(s) of the right leg with ulceration of ankle code": 'I70.633' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the right leg with ulceration of ankle'
code "Atherosclerosis of nonbiological bypass graft(s) of the right leg with ulceration of heel and midfoot code": 'I70.634' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the right leg with ulceration of heel and midfoot'
code "Atherosclerosis of nonbiological bypass graft(s) of the right leg with ulceration of other part of foot code": 'I70.635' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the right leg with ulceration of other part of foot'
code "Atherosclerosis of nonbiological bypass graft(s) of the right leg with ulceration of other part of lower leg code": 'I70.638' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the right leg with ulceration of other part of lower leg'
code "Atherosclerosis of nonbiological bypass graft(s) of the right leg with ulceration of unspecified site code": 'I70.639' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the right leg with ulceration of unspecified site'
code "Atherosclerosis of nonbiological bypass graft(s) of the left leg with ulceration code": 'I70.64' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the left leg with ulceration'
code "Atherosclerosis of nonbiological bypass graft(s) of the left leg with ulceration of thigh code": 'I70.641' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the left leg with ulceration of thigh'
code "Atherosclerosis of nonbiological bypass graft(s) of the left leg with ulceration of calf code": 'I70.642' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the left leg with ulceration of calf'
code "Atherosclerosis of nonbiological bypass graft(s) of the left leg with ulceration of ankle code": 'I70.643' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the left leg with ulceration of ankle'
code "Atherosclerosis of nonbiological bypass graft(s) of the left leg with ulceration of heel and midfoot code": 'I70.644' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the left leg with ulceration of heel and midfoot'
code "Atherosclerosis of nonbiological bypass graft(s) of the left leg with ulceration of other part of foot code": 'I70.645' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the left leg with ulceration of other part of foot'
code "Atherosclerosis of nonbiological bypass graft(s) of the left leg with ulceration of other part of lower leg code": 'I70.648' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the left leg with ulceration of other part of lower leg'
code "Atherosclerosis of nonbiological bypass graft(s) of the left leg with ulceration of unspecified site code": 'I70.649' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the left leg with ulceration of unspecified site'
code "Atherosclerosis of nonbiological bypass graft(s) of other extremity with ulceration code": 'I70.65' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of other extremity with ulceration'
code "Atherosclerosis of nonbiological bypass graft(s) of the extremities with gangrene code": 'I70.66' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the extremities with gangrene'
code "Atherosclerosis of nonbiological bypass graft(s) of the extremities with gangrene, right leg code": 'I70.661' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the extremities with gangrene, right leg'
code "Atherosclerosis of nonbiological bypass graft(s) of the extremities with gangrene, left leg code": 'I70.662' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the extremities with gangrene, left leg'
code "Atherosclerosis of nonbiological bypass graft(s) of the extremities with gangrene, bilateral legs code": 'I70.663' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the extremities with gangrene, bilateral legs'
code "Atherosclerosis of nonbiological bypass graft(s) of the extremities with gangrene, other extremity code": 'I70.668' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the extremities with gangrene, other extremity'
code "Atherosclerosis of nonbiological bypass graft(s) of the extremities with gangrene, unspecified extremity code": 'I70.669' from "ICD-10-CM" display 'Atherosclerosis of nonbiological bypass graft(s) of the extremities with gangrene, unspecified extremity'
code "Other atherosclerosis of nonbiological bypass graft(s) of the extremities code": 'I70.69' from "ICD-10-CM" display 'Other atherosclerosis of nonbiological bypass graft(s) of the extremities'
code "Other atherosclerosis of nonbiological bypass graft(s) of the extremities, right leg code": 'I70.691' from "ICD-10-CM" display 'Other atherosclerosis of nonbiological bypass graft(s) of the extremities, right leg'
code "Other atherosclerosis of nonbiological bypass graft(s) of the extremities, left leg code": 'I70.692' from "ICD-10-CM" display 'Other atherosclerosis of nonbiological bypass graft(s) of the extremities, left leg'
code "Other atherosclerosis of nonbiological bypass graft(s) of the extremities, bilateral legs code": 'I70.693' from "ICD-10-CM" display 'Other atherosclerosis of nonbiological bypass graft(s) of the extremities, bilateral legs'
code "Other atherosclerosis of nonbiological bypass graft(s) of the extremities, other extremity code": 'I70.698' from "ICD-10-CM" display 'Other atherosclerosis of nonbiological bypass graft(s) of the extremities, other extremity'
code "Other atherosclerosis of nonbiological bypass graft(s) of the extremities, unspecified extremity code": 'I70.699' from "ICD-10-CM" display 'Other atherosclerosis of nonbiological bypass graft(s) of the extremities, unspecified extremity'
code "Atherosclerosis of other type of bypass graft(s) of the extremities code": 'I70.7' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the extremities'
code "Unspecified atherosclerosis of other type of bypass graft(s) of the extremities code": 'I70.70' from "ICD-10-CM" display 'Unspecified atherosclerosis of other type of bypass graft(s) of the extremities'
code "Unspecified atherosclerosis of other type of bypass graft(s) of the extremities, right leg code": 'I70.701' from "ICD-10-CM" display 'Unspecified atherosclerosis of other type of bypass graft(s) of the extremities, right leg'
code "Unspecified atherosclerosis of other type of bypass graft(s) of the extremities, left leg code": 'I70.702' from "ICD-10-CM" display 'Unspecified atherosclerosis of other type of bypass graft(s) of the extremities, left leg'
code "Unspecified atherosclerosis of other type of bypass graft(s) of the extremities, bilateral legs code": 'I70.703' from "ICD-10-CM" display 'Unspecified atherosclerosis of other type of bypass graft(s) of the extremities, bilateral legs'
code "Unspecified atherosclerosis of other type of bypass graft(s) of the extremities, other extremity code": 'I70.708' from "ICD-10-CM" display 'Unspecified atherosclerosis of other type of bypass graft(s) of the extremities, other extremity'
code "Unspecified atherosclerosis of other type of bypass graft(s) of the extremities, unspecified extremity code": 'I70.709' from "ICD-10-CM" display 'Unspecified atherosclerosis of other type of bypass graft(s) of the extremities, unspecified extremity'
code "Atherosclerosis of other type of bypass graft(s) of the extremities with intermittent claudication code": 'I70.71' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the extremities with intermittent claudication'
code "Atherosclerosis of other type of bypass graft(s) of the extremities with intermittent claudication, right leg code": 'I70.711' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the extremities with intermittent claudication, right leg'
code "Atherosclerosis of other type of bypass graft(s) of the extremities with intermittent claudication, left leg code": 'I70.712' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the extremities with intermittent claudication, left leg'
code "Atherosclerosis of other type of bypass graft(s) of the extremities with intermittent claudication, bilateral legs code": 'I70.713' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the extremities with intermittent claudication, bilateral legs'
code "Atherosclerosis of other type of bypass graft(s) of the extremities with intermittent claudication, other extremity code": 'I70.718' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the extremities with intermittent claudication, other extremity'
code "Atherosclerosis of other type of bypass graft(s) of the extremities with intermittent claudication, unspecified extremity code": 'I70.719' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the extremities with intermittent claudication, unspecified extremity'
code "Atherosclerosis of other type of bypass graft(s) of the extremities with rest pain code": 'I70.72' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the extremities with rest pain'
code "Atherosclerosis of other type of bypass graft(s) of the extremities with rest pain, right leg code": 'I70.721' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the extremities with rest pain, right leg'
code "Atherosclerosis of other type of bypass graft(s) of the extremities with rest pain, left leg code": 'I70.722' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the extremities with rest pain, left leg'
code "Atherosclerosis of other type of bypass graft(s) of the extremities with rest pain, bilateral legs code": 'I70.723' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the extremities with rest pain, bilateral legs'
code "Atherosclerosis of other type of bypass graft(s) of the extremities with rest pain, other extremity code": 'I70.728' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the extremities with rest pain, other extremity'
code "Atherosclerosis of other type of bypass graft(s) of the extremities with rest pain, unspecified extremity code": 'I70.729' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the extremities with rest pain, unspecified extremity'
code "Atherosclerosis of other type of bypass graft(s) of the right leg with ulceration code": 'I70.73' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the right leg with ulceration'
code "Atherosclerosis of other type of bypass graft(s) of the right leg with ulceration of thigh code": 'I70.731' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the right leg with ulceration of thigh'
code "Atherosclerosis of other type of bypass graft(s) of the right leg with ulceration of calf code": 'I70.732' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the right leg with ulceration of calf'
code "Atherosclerosis of other type of bypass graft(s) of the right leg with ulceration of ankle code": 'I70.733' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the right leg with ulceration of ankle'
code "Atherosclerosis of other type of bypass graft(s) of the right leg with ulceration of heel and midfoot code": 'I70.734' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the right leg with ulceration of heel and midfoot'
code "Atherosclerosis of other type of bypass graft(s) of the right leg with ulceration of other part of foot code": 'I70.735' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the right leg with ulceration of other part of foot'
code "Atherosclerosis of other type of bypass graft(s) of the right leg with ulceration of other part of lower leg code": 'I70.738' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the right leg with ulceration of other part of lower leg'
code "Atherosclerosis of other type of bypass graft(s) of the right leg with ulceration of unspecified site code": 'I70.739' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the right leg with ulceration of unspecified site'
code "Atherosclerosis of other type of bypass graft(s) of the left leg with ulceration code": 'I70.74' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the left leg with ulceration'
code "Atherosclerosis of other type of bypass graft(s) of the left leg with ulceration of thigh code": 'I70.741' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the left leg with ulceration of thigh'
code "Atherosclerosis of other type of bypass graft(s) of the left leg with ulceration of calf code": 'I70.742' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the left leg with ulceration of calf'
code "Atherosclerosis of other type of bypass graft(s) of the left leg with ulceration of ankle code": 'I70.743' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the left leg with ulceration of ankle'
code "Atherosclerosis of other type of bypass graft(s) of the left leg with ulceration of heel and midfoot code": 'I70.744' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the left leg with ulceration of heel and midfoot'
code "Atherosclerosis of other type of bypass graft(s) of the left leg with ulceration of other part of foot code": 'I70.745' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the left leg with ulceration of other part of foot'
code "Atherosclerosis of other type of bypass graft(s) of the left leg with ulceration of other part of lower leg code": 'I70.748' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the left leg with ulceration of other part of lower leg'
code "Atherosclerosis of other type of bypass graft(s) of the left leg with ulceration of unspecified site code": 'I70.749' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the left leg with ulceration of unspecified site'
code "Atherosclerosis of other type of bypass graft(s) of other extremity with ulceration code": 'I70.75' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of other extremity with ulceration'
code "Atherosclerosis of other type of bypass graft(s) of the extremities with gangrene code": 'I70.76' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the extremities with gangrene'
code "Atherosclerosis of other type of bypass graft(s) of the extremities with gangrene, right leg code": 'I70.761' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the extremities with gangrene, right leg'
code "Atherosclerosis of other type of bypass graft(s) of the extremities with gangrene, left leg code": 'I70.762' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the extremities with gangrene, left leg'
code "Atherosclerosis of other type of bypass graft(s) of the extremities with gangrene, bilateral legs code": 'I70.763' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the extremities with gangrene, bilateral legs'
code "Atherosclerosis of other type of bypass graft(s) of the extremities with gangrene, other extremity code": 'I70.768' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the extremities with gangrene, other extremity'
code "Atherosclerosis of other type of bypass graft(s) of the extremities with gangrene, unspecified extremity code": 'I70.769' from "ICD-10-CM" display 'Atherosclerosis of other type of bypass graft(s) of the extremities with gangrene, unspecified extremity'
code "Other atherosclerosis of other type of bypass graft(s) of the extremities code": 'I70.79' from "ICD-10-CM" display 'Other atherosclerosis of other type of bypass graft(s) of the extremities'
code "Other atherosclerosis of other type of bypass graft(s) of the extremities, right leg code": 'I70.791' from "ICD-10-CM" display 'Other atherosclerosis of other type of bypass graft(s) of the extremities, right leg'
code "Other atherosclerosis of other type of bypass graft(s) of the extremities, left leg code": 'I70.792' from "ICD-10-CM" display 'Other atherosclerosis of other type of bypass graft(s) of the extremities, left leg'
code "Other atherosclerosis of other type of bypass graft(s) of the extremities, bilateral legs code": 'I70.793' from "ICD-10-CM" display 'Other atherosclerosis of other type of bypass graft(s) of the extremities, bilateral legs'
code "Other atherosclerosis of other type of bypass graft(s) of the extremities, other extremity code": 'I70.798' from "ICD-10-CM" display 'Other atherosclerosis of other type of bypass graft(s) of the extremities, other extremity'
code "Other atherosclerosis of other type of bypass graft(s) of the extremities, unspecified extremity code": 'I70.799' from "ICD-10-CM" display 'Other atherosclerosis of other type of bypass graft(s) of the extremities, unspecified extremity'
code "Bypass Right Axillary Artery to Right Upper Leg Artery, Open Approach code": '03150Z6' from "ICD-10-PCS" display 'Bypass Right Axillary Artery to Right Upper Leg Artery, Open Approach'
code "Bypass Right Axillary Artery to Left Upper Leg Artery, Open Approach code": '03150Z7' from "ICD-10-PCS" display 'Bypass Right Axillary Artery to Left Upper Leg Artery, Open Approach'
code "Bypass Right Axillary Artery to Bilateral Upper Leg Artery, Open Approach code": '03150Z8' from "ICD-10-PCS" display 'Bypass Right Axillary Artery to Bilateral Upper Leg Artery, Open Approach'
code "Bypass Left Axillary Artery to Right Upper Leg Artery, Open Approach code": '03160Z6' from "ICD-10-PCS" display 'Bypass Left Axillary Artery to Right Upper Leg Artery, Open Approach'
code "Bypass Left Axillary Artery to Left Upper Leg Artery, Open Approach code": '03160Z7' from "ICD-10-PCS" display 'Bypass Left Axillary Artery to Left Upper Leg Artery, Open Approach'
code "Bypass Left Axillary Artery to Bilateral Upper Leg Artery, Open Approach code": '03160Z8' from "ICD-10-PCS" display 'Bypass Left Axillary Artery to Bilateral Upper Leg Artery, Open Approach'
code "Bypass Right Femoral Artery to Right Femoral Artery, Open Approach code": '041K0ZH' from "ICD-10-PCS" display 'Bypass Right Femoral Artery to Right Femoral Artery, Open Approach'
code "Bypass Right Femoral Artery to Left Femoral Artery, Open Approach code": '041K0ZJ' from "ICD-10-PCS" display 'Bypass Right Femoral Artery to Left Femoral Artery, Open Approach'
code "Bypass Right Femoral Artery to Bilateral Femoral Arteries, Open Approach code": '041K0ZK' from "ICD-10-PCS" display 'Bypass Right Femoral Artery to Bilateral Femoral Arteries, Open Approach'
code "Bypass Right Femoral Artery to Popliteal Artery, Open Approach code": '041K0ZL' from "ICD-10-PCS" display 'Bypass Right Femoral Artery to Popliteal Artery, Open Approach'
code "Specialised surgeon code": '1421009' from "SCT" display 'Specialised surgeon'
code "Condition Confirmed code": 'confirmed' from "CONDVERSTATUS" display 'Confirmed'

concept "Condition Confirmed": { "Condition Confirmed code" } display 'Confirmed'

context Patient

define "Atherosclerosis of native arteries of the extremities":
  exists ( Confirmed([Condition: "Atherosclerosis of native arteries of the extremities code"]
        union [Condition: "Unspecified atherosclerosis of native arteries of extremities code"]
        union [Condition: "Unspecified atherosclerosis of native arteries of extremities, right leg code"]
        union [Condition: "Unspecified atherosclerosis of native arteries of extremities, left leg code"]
        union [Condition: "Unspecified atherosclerosis of native arteries of extremities, bilateral legs code"]
        union [Condition: "Unspecified atherosclerosis of native arteries of extremities, other extremity code"]
        union [Condition: "Unspecified atherosclerosis of native arteries of extremities, unspecified extremity code"]
        union [Condition: "Atherosclerosis of native arteries of extremities with intermittent claudication code"]
        union [Condition: "Atherosclerosis of native arteries of extremities with intermittent claudication, right leg code"]
        union [Condition: "Atherosclerosis of native arteries of extremities with intermittent claudication, left leg code"]
        union [Condition: "Atherosclerosis of native arteries of extremities with intermittent claudication, bilateral legs code"]
        union [Condition: "Atherosclerosis of native arteries of extremities with intermittent claudication, other extremity code"]
        union [Condition: "Atherosclerosis of native arteries of extremities with intermittent claudication, unspecified extremity code"]
        union [Condition: "Atherosclerosis of native arteries of extremities with rest pain code"]
        union [Condition: "Atherosclerosis of native arteries of extremities with rest pain, right leg code"]
        union [Condition: "Atherosclerosis of native arteries of extremities with rest pain, left leg code"]
        union [Condition: "Atherosclerosis of native arteries of extremities with rest pain, bilateral legs code"]
        union [Condition: "Atherosclerosis of native arteries of extremities with rest pain, other extremity code"]
        union [Condition: "Atherosclerosis of native arteries of extremities with rest pain, unspecified extremity code"]
        union [Condition: "Atherosclerosis of native arteries of right leg with ulceration code"]
        union [Condition: "Atherosclerosis of native arteries of right leg with ulceration of thigh code"]
        union [Condition: "Atherosclerosis of native arteries of right leg with ulceration of calf code"]
        union [Condition: "Atherosclerosis of native arteries of right leg with ulceration of ankle code"]
        union [Condition: "Atherosclerosis of native arteries of right leg with ulceration of heel and midfoot code"]
        union [Condition: "Atherosclerosis of native arteries of right leg with ulceration of other part of foot code"]
        union [Condition: "Atherosclerosis of native arteries of right leg with ulceration of other part of lower leg code"]
        union [Condition: "Atherosclerosis of native arteries of right leg with ulceration of unspecified site code"]
        union [Condition: "Atherosclerosis of native arteries of left leg with ulceration code"]
        union [Condition: "Atherosclerosis of native arteries of left leg with ulceration of thigh code"]
        union [Condition: "Atherosclerosis of native arteries of left leg with ulceration of calf code"]
        union [Condition: "Atherosclerosis of native arteries of left leg with ulceration of ankle code"]
        union [Condition: "Atherosclerosis of native arteries of left leg with ulceration of heel and midfoot code"]
        union [Condition: "Atherosclerosis of native arteries of left leg with ulceration of other part of foot code"]
        union [Condition: "Atherosclerosis of native arteries of left leg with ulceration of other part of lower leg code"]
        union [Condition: "Atherosclerosis of native arteries of left leg with ulceration of unspecified site code"]
        union [Condition: "Atherosclerosis of native arteries of other extremities with ulceration code"]
        union [Condition: "Atherosclerosis of native arteries of extremities with gangrene code"]
        union [Condition: "Atherosclerosis of native arteries of extremities with gangrene, right leg code"]
        union [Condition: "Atherosclerosis of native arteries of extremities with gangrene, left leg code"]
        union [Condition: "Atherosclerosis of native arteries of extremities with gangrene, bilateral legs code"]
        union [Condition: "Atherosclerosis of native arteries of extremities with gangrene, other extremity code"]
        union [Condition: "Atherosclerosis of native arteries of extremities with gangrene, unspecified extremity code"]
        union [Condition: "Other atherosclerosis of native arteries of extremities code"]
        union [Condition: "Other atherosclerosis of native arteries of extremities, right leg code"]
        union [Condition: "Other atherosclerosis of native arteries of extremities, left leg code"]
        union [Condition: "Other atherosclerosis of native arteries of extremities, bilateral legs code"]
        union [Condition: "Other atherosclerosis of native arteries of extremities, other extremity code"]
        union [Condition: "Other atherosclerosis of native arteries of extremities, unspecified extremity code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the extremities code"]
        union [Condition: "Unspecified atherosclerosis of unspecified type of bypass graft(s) of the extremities code"]
        union [Condition: "Unspecified atherosclerosis of unspecified type of bypass graft(s) of the extremities, right leg code"]
        union [Condition: "Unspecified atherosclerosis of unspecified type of bypass graft(s) of the extremities, left leg code"]
        union [Condition: "Unspecified atherosclerosis of unspecified type of bypass graft(s) of the extremities, bilateral legs code"]
        union [Condition: "Unspecified atherosclerosis of unspecified type of bypass graft(s) of the extremities, other extremity code"]
        union [Condition: "Unspecified atherosclerosis of unspecified type of bypass graft(s) of the extremities, unspecified extremity code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with intermittent claudication code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with intermittent claudication, right leg code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with intermittent claudication, left leg code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with intermittent claudication, bilateral legs code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with intermittent claudication, other extremity code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with intermittent claudication, unspecified extremity code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with rest pain code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with rest pain, right leg code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with rest pain, left leg code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with rest pain, bilateral legs code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with rest pain, other extremity code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with rest pain, unspecified extremity code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the right leg with ulceration code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the right leg with ulceration of thigh code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the right leg with ulceration of calf code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the right leg with ulceration of ankle code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the right leg with ulceration of heel and midfoot code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the right leg with ulceration of other part of foot code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the right leg with ulceration of other part of lower leg code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the right leg with ulceration of unspecified site code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the left leg with ulceration code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the left leg with ulceration of thigh code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the left leg with ulceration of calf code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the left leg with ulceration of ankle code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the left leg with ulceration of heel and midfoot code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the left leg with ulceration of other part of foot code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the left leg with ulceration of other part of lower leg code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the left leg with ulceration of unspecified site code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of other extremity with ulceration code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with gangrene code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with gangrene, right leg code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with gangrene, left leg code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with gangrene, bilateral legs code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with gangrene, other extremity code"]
        union [Condition: "Atherosclerosis of unspecified type of bypass graft(s) of the extremities with gangrene, unspecified extremity code"]
        union [Condition: "Other atherosclerosis of unspecified type of bypass graft(s) of the extremities code"]
        union [Condition: "Other atherosclerosis of unspecified type of bypass graft(s) of the extremities, right leg code"]
        union [Condition: "Other atherosclerosis of unspecified type of bypass graft(s) of the extremities, left leg code"]
        union [Condition: "Other atherosclerosis of unspecified type of bypass graft(s) of the extremities, bilateral legs code"]
        union [Condition: "Other atherosclerosis of unspecified type of bypass graft(s) of the extremities, other extremity code"]
        union [Condition: "Other atherosclerosis of unspecified type of bypass graft(s) of the extremities, unspecified extremity code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the extremities code"]
        union [Condition: "Unspecified atherosclerosis of autologous vein bypass graft(s) of the extremities code"]
        union [Condition: "Unspecified atherosclerosis of autologous vein bypass graft(s) of the extremities, right leg code"]
        union [Condition: "Unspecified atherosclerosis of autologous vein bypass graft(s) of the extremities, left leg code"]
        union [Condition: "Unspecified atherosclerosis of autologous vein bypass graft(s) of the extremities, bilateral legs code"]
        union [Condition: "Unspecified atherosclerosis of autologous vein bypass graft(s) of the extremities, other extremity code"]
        union [Condition: "Unspecified atherosclerosis of autologous vein bypass graft(s) of the extremities, unspecified extremity code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the extremities with intermittent claudication code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the extremities with intermittent claudication, right leg code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the extremities with intermittent claudication, left leg code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the extremities with intermittent claudication, bilateral legs code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the extremities with intermittent claudication, other extremity code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the extremities with intermittent claudication, unspecified extremity code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the extremities with rest pain code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the extremities with rest pain, right leg code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the extremities with rest pain, left leg code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the extremities with rest pain, bilateral legs code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the extremities with rest pain, other extremity code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the extremities with rest pain, unspecified extremity code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the right leg with ulceration code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the right leg with ulceration of thigh code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the right leg with ulceration of calf code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the right leg with ulceration of ankle code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the right leg with ulceration of heel and midfoot code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the right leg with ulceration of other part of foot code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the right leg with ulceration of other part of lower leg code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the right leg with ulceration of unspecified site code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the left leg with ulceration code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the left leg with ulceration of thigh code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the left leg with ulceration of calf code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the left leg with ulceration of ankle code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the left leg with ulceration of heel and midfoot code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the left leg with ulceration of other part of foot code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the left leg with ulceration of other part of lower leg code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the left leg with ulceration of unspecified site code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of other extremity with ulceration code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the extremities with gangrene code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the extremities with gangrene, right leg code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the extremities with gangrene, left leg code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the extremities with gangrene, bilateral legs code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the extremities with gangrene, other extremity code"]
        union [Condition: "Atherosclerosis of autologous vein bypass graft(s) of the extremities with gangrene, unspecified extremity code"]
        union [Condition: "Other atherosclerosis of autologous vein bypass graft(s) of the extremities code"]
        union [Condition: "Other atherosclerosis of autologous vein bypass graft(s) of the extremities, right leg code"]
        union [Condition: "Other atherosclerosis of autologous vein bypass graft(s) of the extremities, left leg code"]
        union [Condition: "Other atherosclerosis of autologous vein bypass graft(s) of the extremities, bilateral legs code"]
        union [Condition: "Other atherosclerosis of autologous vein bypass graft(s) of the extremities, other extremity code"]
        union [Condition: "Other atherosclerosis of autologous vein bypass graft(s) of the extremities, unspecified extremity code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities code"]
        union [Condition: "Unspecified atherosclerosis of nonautologous biological bypass graft(s) of the extremities code"]
        union [Condition: "Unspecified atherosclerosis of nonautologous biological bypass graft(s) of the extremities, right leg code"]
        union [Condition: "Unspecified atherosclerosis of nonautologous biological bypass graft(s) of the extremities, left leg code"]
        union [Condition: "Unspecified atherosclerosis of nonautologous biological bypass graft(s) of the extremities, bilateral legs code"]
        union [Condition: "Unspecified atherosclerosis of nonautologous biological bypass graft(s) of the extremities, other extremity code"]
        union [Condition: "Unspecified atherosclerosis of nonautologous biological bypass graft(s) of the extremities, unspecified extremity code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities intermittent claudication code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with intermittent claudication, right leg code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with intermittent claudication, left leg code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with intermittent claudication, bilateral legs code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with intermittent claudication, other extremity code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with intermittent claudication, unspecified extremity code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with rest pain code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with rest pain, right leg code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with rest pain, left leg code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with rest pain, bilateral legs code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with rest pain, other extremity code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with rest pain, unspecified extremity code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the right leg with ulceration code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the right leg with ulceration of thigh code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the right leg with ulceration of calf code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the right leg with ulceration of ankle code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the right leg with ulceration of heel and midfoot code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the right leg with ulceration of other part of foot code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the right leg with ulceration of other part of lower leg code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the right leg with ulceration of unspecified site code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the left leg with ulceration code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the left leg with ulceration of thigh code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the left leg with ulceration of calf code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the left leg with ulceration of ankle code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the left leg with ulceration of heel and midfoot code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the left leg with ulceration of other part of foot code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the left leg with ulceration of other part of lower leg code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the left leg with ulceration of unspecified site code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of other extremity with ulceration code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with gangrene code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with gangrene, right leg code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with gangrene, left leg code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with gangrene, bilateral legs code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with gangrene, other extremity code"]
        union [Condition: "Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with gangrene, unspecified extremity code"]
        union [Condition: "Other atherosclerosis of nonautologous biological bypass graft(s) of the extremities code"]
        union [Condition: "Other atherosclerosis of nonautologous biological bypass graft(s) of the extremities, right leg code"]
        union [Condition: "Other atherosclerosis of nonautologous biological bypass graft(s) of the extremities, left leg code"]
        union [Condition: "Other atherosclerosis of nonautologous biological bypass graft(s) of the extremities, bilateral legs code"]
        union [Condition: "Other atherosclerosis of nonautologous biological bypass graft(s) of the extremities, other extremity code"]
        union [Condition: "Other atherosclerosis of nonautologous biological bypass graft(s) of the extremities, unspecified extremity code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the extremities code"]
        union [Condition: "Unspecified atherosclerosis of nonbiological bypass graft(s) of the extremities code"]
        union [Condition: "Unspecified atherosclerosis of nonbiological bypass graft(s) of the extremities, right leg code"]
        union [Condition: "Unspecified atherosclerosis of nonbiological bypass graft(s) of the extremities, left leg code"]
        union [Condition: "Unspecified atherosclerosis of nonbiological bypass graft(s) of the extremities, bilateral legs code"]
        union [Condition: "Unspecified atherosclerosis of nonbiological bypass graft(s) of the extremities, other extremity code"]
        union [Condition: "Unspecified atherosclerosis of nonbiological bypass graft(s) of the extremities, unspecified extremity code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the extremities with intermittent claudication code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the extremities with intermittent claudication, right leg code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the extremities with intermittent claudication, left leg code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the extremities with intermittent claudication, bilateral legs code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the extremities with intermittent claudication, other extremity code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the extremities with intermittent claudication, unspecified extremity code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the extremities with rest pain code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the extremities with rest pain, right leg code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the extremities with rest pain, left leg code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the extremities with rest pain, bilateral legs code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the extremities with rest pain, other extremity code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the extremities with rest pain, unspecified extremity code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the right leg with ulceration code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the right leg with ulceration of thigh code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the right leg with ulceration of calf code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the right leg with ulceration of ankle code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the right leg with ulceration of heel and midfoot code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the right leg with ulceration of other part of foot code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the right leg with ulceration of other part of lower leg code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the right leg with ulceration of unspecified site code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the left leg with ulceration code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the left leg with ulceration of thigh code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the left leg with ulceration of calf code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the left leg with ulceration of ankle code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the left leg with ulceration of heel and midfoot code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the left leg with ulceration of other part of foot code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the left leg with ulceration of other part of lower leg code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the left leg with ulceration of unspecified site code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of other extremity with ulceration code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the extremities with gangrene code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the extremities with gangrene, right leg code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the extremities with gangrene, left leg code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the extremities with gangrene, bilateral legs code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the extremities with gangrene, other extremity code"]
        union [Condition: "Atherosclerosis of nonbiological bypass graft(s) of the extremities with gangrene, unspecified extremity code"]
        union [Condition: "Other atherosclerosis of nonbiological bypass graft(s) of the extremities code"]
        union [Condition: "Other atherosclerosis of nonbiological bypass graft(s) of the extremities, right leg code"]
        union [Condition: "Other atherosclerosis of nonbiological bypass graft(s) of the extremities, left leg code"]
        union [Condition: "Other atherosclerosis of nonbiological bypass graft(s) of the extremities, bilateral legs code"]
        union [Condition: "Other atherosclerosis of nonbiological bypass graft(s) of the extremities, other extremity code"]
        union [Condition: "Other atherosclerosis of nonbiological bypass graft(s) of the extremities, unspecified extremity code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the extremities code"]
        union [Condition: "Unspecified atherosclerosis of other type of bypass graft(s) of the extremities code"]
        union [Condition: "Unspecified atherosclerosis of other type of bypass graft(s) of the extremities, right leg code"]
        union [Condition: "Unspecified atherosclerosis of other type of bypass graft(s) of the extremities, left leg code"]
        union [Condition: "Unspecified atherosclerosis of other type of bypass graft(s) of the extremities, bilateral legs code"]
        union [Condition: "Unspecified atherosclerosis of other type of bypass graft(s) of the extremities, other extremity code"]
        union [Condition: "Unspecified atherosclerosis of other type of bypass graft(s) of the extremities, unspecified extremity code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the extremities with intermittent claudication code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the extremities with intermittent claudication, right leg code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the extremities with intermittent claudication, left leg code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the extremities with intermittent claudication, bilateral legs code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the extremities with intermittent claudication, other extremity code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the extremities with intermittent claudication, unspecified extremity code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the extremities with rest pain code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the extremities with rest pain, right leg code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the extremities with rest pain, left leg code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the extremities with rest pain, bilateral legs code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the extremities with rest pain, other extremity code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the extremities with rest pain, unspecified extremity code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the right leg with ulceration code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the right leg with ulceration of thigh code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the right leg with ulceration of calf code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the right leg with ulceration of ankle code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the right leg with ulceration of heel and midfoot code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the right leg with ulceration of other part of foot code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the right leg with ulceration of other part of lower leg code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the right leg with ulceration of unspecified site code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the left leg with ulceration code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the left leg with ulceration of thigh code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the left leg with ulceration of calf code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the left leg with ulceration of ankle code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the left leg with ulceration of heel and midfoot code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the left leg with ulceration of other part of foot code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the left leg with ulceration of other part of lower leg code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the left leg with ulceration of unspecified site code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of other extremity with ulceration code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the extremities with gangrene code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the extremities with gangrene, right leg code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the extremities with gangrene, left leg code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the extremities with gangrene, bilateral legs code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the extremities with gangrene, other extremity code"]
        union [Condition: "Atherosclerosis of other type of bypass graft(s) of the extremities with gangrene, unspecified extremity code"]
        union [Condition: "Other atherosclerosis of other type of bypass graft(s) of the extremities code"]
        union [Condition: "Other atherosclerosis of other type of bypass graft(s) of the extremities, right leg code"]
        union [Condition: "Other atherosclerosis of other type of bypass graft(s) of the extremities, left leg code"]
        union [Condition: "Other atherosclerosis of other type of bypass graft(s) of the extremities, bilateral legs code"]
        union [Condition: "Other atherosclerosis of other type of bypass graft(s) of the extremities, other extremity code"]
        union [Condition: "Other atherosclerosis of other type of bypass graft(s) of the extremities, unspecified extremity code"]
    )
  )

define "Sugery":
  C3F.MostRecentProcedure ( [Procedure: "Bypass Right Axillary Artery to Right Upper Leg Artery, Open Approach code"]
    union [Procedure: "Bypass Right Axillary Artery to Left Upper Leg Artery, Open Approach code"]
    union [Procedure: "Bypass Right Axillary Artery to Bilateral Upper Leg Artery, Open Approach code"]
    union [Procedure: "Bypass Left Axillary Artery to Right Upper Leg Artery, Open Approach code"]
    union [Procedure: "Bypass Left Axillary Artery to Left Upper Leg Artery, Open Approach code"]
    union [Procedure: "Bypass Left Axillary Artery to Bilateral Upper Leg Artery, Open Approach code"]
    union [Procedure: "Bypass Right Femoral Artery to Right Femoral Artery, Open Approach code"]
    union [Procedure: "Bypass Right Femoral Artery to Left Femoral Artery, Open Approach code"]
    union [Procedure: "Bypass Right Femoral Artery to Bilateral Femoral Arteries, Open Approach code"]
    union [Procedure: "Bypass Right Femoral Artery to Popliteal Artery, Open Approach code"] )

define "surgeon_id":
  Last(Split(First("Sugery".performer).actor.reference, '/'))

define "Surgeon_ref":
  [Practitioner] P
    where P.id = "surgeon_id"
    
  // where P.id = Last(Split(First("Sugery".performer).actor.reference, '/'))
  // First("Sugery".performer).actor.reference.value



define "Surgeon_tmp":
  "Surgeon_ref".qualification q
    where q.code ~ "Specialised surgeon code"

define "Surgeon":
  exists ( "Surgeon_tmp" )

define "MeetsInclusionCriteria":
  "Atherosclerosis of native arteries of the extremities"
    and "Surgeon"

define "InPopulation":
  "MeetsInclusionCriteria"

define "Recommendation":
  if "InPopulation" then '健保給付23272點，一般材料費得另加計百分之五十。' 
    else null

define "Rationale":
  null

define "Links":
  null

define "Suggestions":
  null

define "Errors":
  null

define function Confirmed(CondList List<Condition>):
  CondList C
    where C.verificationStatus ~ "Condition Confirmed"