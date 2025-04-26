# HISTORY

## 背景說明
- 為何要做 CQL?  
原本由各家廠商自行實作效率低，衛福部期望建立統一標準供各方使用。
- 因為要做 CQL 我們研讀了以下資源：
  - CQF：https://www.cqframework.org/
  - CQL IG：https://build.fhir.org/ig/HL7/cql/
  - CQL Testing Framework：https://www.npmjs.com/package/cql-testing  
  （我們曾於「臺灣醫療資訊標準大平台」啟動會議揭露過）
  - AHRQ-CDS-Connect-PAIN-MANAGEMENT-SUMMARY：https://github.com/AHRQ-CDS/AHRQ-CDS-Connect-PAIN-MANAGEMENT-SUMMARY  
  （我們曾於「臺灣醫療資訊標準大平台」啟動會議揭露過）
  - VSAC：https://vsac.nlm.nih.gov/  
  （我們曾於「臺灣醫療資訊標準大平台」啟動會議揭露過）
  - CDS Authoring Tool：https://cds.ahrq.gov/authoring  
  （我們曾在「臺灣醫療資訊標準大平台」的「CQL 開發環境與工具」揭露過），連結：https://medstandard.mohw.gov.tw/courses/rule-library

## CQL 專案執行流程

### 1. 建立專案結構
- 建立符合 cql-testing 套件於「Typical Project Structure」要求的專案結構，包含 cql/、valuesets/、test/cases/ 等必要資料夾
- 建立 package.json 和 build.gradle 等配置檔案，設定專案依賴及腳本
  - 此處參考cql-testing 官方文件「The package.json File」範例下載，並依專案需求修改
  - 此處參考 AHRQ CDS Connect 範例指南 (https://github.com/AHRQ-CDS/AHRQ-CDS-Connect-PAIN-MANAGEMENT-SUMMARY?tab=readme-ov-file#to-update-the-cql-andor-elm-json-files) 來將 `cql-to-elm` CLI 加入專案

### 2. 開發 CQL 規則
- 分析健保給付代碼規則內容，確定條件、適應症與支付規範
- 編寫 CQL 檔案 (*.cql)，實作規則邏輯，包含：
  - 定義 library 名稱和版本
  - 引入必要的 FHIRHelpers 和其他共用函式庫
  - 定義 valueset 和 codesystem
  - 撰寫符合健保給付條件的邏輯判斷式

### 3. 建立測試案例
- 在 test/cases/ 目錄下建立 YAML 格式的測試案例
- 建立符合條件 (include) 和不符合條件 (not_include) 的測試案例
- 配置 test/cqlt.yaml 測試環境設定，包含 library 名稱、路徑與 VSAC API Key
  - 此處參考cql-testing 官方文件「The cqlt.yaml File」範例下載，並依專案需求修改。

### 4. CQL 轉譯為 ELM
- 執行 CQL 轉 ELM JSON 的轉譯指令：
  ```
  yarn cql-to-elm
  ```
  或
  ```
  ./gradlew cql2elm
  ```
- 轉譯過程使用 cql-to-elm-cli 套件，產生符合 ELM JSON 格式的輸出檔案
- 依據 build.gradle 中配置，轉譯時採用特定參數確保正確性：
  - 輸出 JSON 格式
  - 啟用簽名重載
  - 關閉列表降級和提升，避免類型轉換錯誤

### 5. 執行測試驗證
- 執行測試命令：
  ```
  yarn test
  ```
- 測試程式會載入 CQL/ELM 檔案及測試案例
- 使用 cql-testing 框架驗證 CQL 邏輯是否符合預期
- 測試報告會顯示通過和失敗的案例

此流程確保 CQL 規則開發的完整性、正確性及可維護性，有效減少人為錯誤，提高健保規則應用的一致性和效率。

## 📁 專案結構 (Project Structure)
此專案結構依據 npm 套件 cql-testing 官方文件「Typical Project Structure」整理。
```plaintext
.
├── .gitignore                                     [OURS]
├── build.gradle                                   [MODIFY]
├── CQL.md                                         [OURS]
├── gradlew                                        [COPY]
├── gradlew.bat                                    [COPY]
├── package.json                                   [MODIFY]
├── README.md                                      [MODIFY]
├── cql/
│   ├── 26074C.cql                                 [OURS]
│   ├── 26074C.json                                [OURS]
│   ├── CDSConnectCommonsForFHIRv401.cql           [COPY]
│   ├── CDSConnectCommonsForFHIRv401.json          [COPY]
│   ├── FHIRHelpers.cql                            [COPY]
│   └── FHIRHelpers.json                           [COPY]
├── gradle/
│   └── wrapper/
│       ├── gradle-wrapper.jar                     [COPY]
│       └── gradle-wrapper.properties              [COPY]
├── local tool/
│   └── code cvt.ipynb                             [OURS]
├── test/
│   ├── cqlt.yaml                                  [MODIFY]
│   ├── test.js                                    [COPY]
│   └── cases/
│       ├── include_1.yml                          [OURS]
│       └── not_include_1.yml                      [OURS]
└── valuesets/
    └── 2.16.840.1.113762.1.4.1287.7.xml          [MODIFY]
```

### 根目錄檔案來源
- README.md [MODIFY]：參考 npm 套件 cql-testing 官方文件「The README File」範例，並結合專案團隊撰寫之專案說明內容，手動編寫。
- CQL.md [OURS]：說明本專案中 CQL 使用方式與語法範例，由專案團隊根據 CQL 官方文件與實際需求手動撰寫。
- .gitignore [OURS]：手動編寫，用於排除不需版本控制之檔案。

### 參考開源資源法律文件
- CQL Testing Framework LICENSE：https://github.com/AHRQ-CDS/CQL-Testing-Framework/blob/master/LICENSE

## 📁 cql 資料夾內容
最初因不瞭解 CQL 撰寫，使用 CDS Authoring Tool 試針對「Continuous glucose monitoring」產生 CQL 與 ELM JSON。
以下內容位於 `cql/` 目錄，分為三大類：

### CQL 檔案 (.cql)
- 26074C.cql [OURS]：根據健保給付代碼「26074C」規則全新撰寫之 CQL 檔案，為本專案團隊自行撰寫，非 CDS Authoring Tool 產物。
- CDSConnectCommonsForFHIRv401.cql [COPY]：FHIR R4 (4.0.1) 版共用 CQL 函式庫，為 Authoring Tool 遺留之 CQL 檔案。
- FHIRHelpers.cql [COPY]：FHIR 資源輔助函式庫，為 Authoring Tool 遺留之 CQL 檔案。
- 產生方式：26074C.cql 由專案團隊手動撰寫；CDSConnectCommonsForFHIRv401.cql 與 FHIRHelpers.cql 由 CDS Authoring Tool 自動產生。

### ELM JSON 檔案 (.json)
- 26074C.json [OURS]：使用 `cql-to-elm` CLI（透過 Gradle 或 Yarn 腳本）轉譯 `26074C.cql` 生成。 
- CDSConnectCommonsForFHIRv401.json [COPY]：使用 `cql-to-elm` CLI 由 `CDSConnectCommonsForFHIRv401.cql` 轉譯生成。
- FHIRHelpers.json [COPY]：使用 `cql-to-elm` CLI 由 `FHIRHelpers.cql` 轉譯生成.
- 產生方式：執行 `./gradlew cql2elm`（或 Yarn 腳本）時，自動將對應 .cql 檔案轉譯生成 ELM JSON。

### 建置設定檔 (專案根目錄)
- 根目錄 build.gradle [MODIFY]：參考 AHRQ CDS Connect 範例指南 (https://github.com/AHRQ-CDS/AHRQ-CDS-Connect-PAIN-MANAGEMENT-SUMMARY?tab=readme-ov-file#to-update-the-cql-andor-elm-json-files) 來將 `cql-to-elm` CLI 加入專案，並定義 `cql2elm` Gradle 任務，用以自動將 `cql/` 目錄下的 `.cql` 檔案轉譯成 ELM JSON。
- 來源：根目錄的 build.gradle 為手動新增，透過參考 AHRQ CDS Connect 範例，配置 CQL to ELM 轉譯插件與任務。

### 參考開源資源法律文件
- CDS Authoring Tool 條款：https://cds.ahrq.gov/authoring/documentation/terms
- AHRQ-CDS/AHRQ-CDS-Connect-PAIN-MANAGEMENT-SUMMARY LICENSE：https://github.com/AHRQ-CDS/AHRQ-CDS-Connect-PAIN-MANAGEMENT-SUMMARY/blob/master/LICENSE

## 📁 Gradle Wrapper
- gradlew [COPY]：Unix 系統下執行 Gradle Wrapper 的 Shell 腳本，會自動下載並執行指定版本的 Gradle。
- gradlew.bat [COPY]：Windows 系統下執行 Gradle Wrapper 的批次檔。
- gradle/wrapper/ [COPY]：包含 Gradle Wrapper 所需的 Jar 與配置文件（gradle-wrapper.properties），用以定義下載的 Gradle 版本及其來源。
- 產生方式：執行 `gradle wrapper` 後，自動生成 gradlew、gradlew.bat 以及 gradle/wrapper 目錄下文件。

這些檔案是透過執行 `gradle wrapper` （或在 build.gradle 中使用 Gradle Wrapper Plugin 後執行 `./gradlew wrapper`）自動生成的。Wrapper 能夠鎖定專案使用的 Gradle 版本，並在不同環境中自動下載指定版本的執行檔，確保團隊成員都能以相同的 Gradle 版本進行構建。

### 參考開源資源法律文件
- Gradle LICENSE：https://gradle.com/legal/gradle-software-license-agreement/

## 📁 local tool 資料夾內容
此資料夾包含團隊自行撰寫的本地工具檔案，不應包含於版本控制或上傳至 GitHub。
- code cvt.ipynb [OURS]：團隊手動撰寫，用於本地開發流程，非自動生成。

## 📁 test 資料夾內容
test/ 資料夾包含用於 CQL 測試的設定與案例：

- cqlt.yaml [MODIFY]：依據 npm 套件 cql-testing 官方文件「The cqlt.yaml File」範例下載，並依專案需求修改。
- test.js [COPY]：依據官方文件「The test/test.js File」下載，無額外修改。
- cases/ [OURS]：測試案例目錄，包含 include_1.yml、not_include_1.yml 等 YAML 檔案，完全由團隊手動撰寫，用於驗證 CQL 執行結果。

### 參考開源資源法律文件
- CQL Testing Framework LICENSE：https://github.com/AHRQ-CDS/CQL-Testing-Framework/blob/master/LICENSE

## 📁 valuesets
valuesets 資料夾包含測試所需的 ValueSet 定義檔案。  

- 2.16.840.1.113762.1.4.1287.7.xml [MODIFY]：ValueSet 是由我們於 VSAC (Value Set Authority Center) 建立並管理；首次執行測試時，依據 cqlt.yaml 中 VSAC 設定自動下載對應 ValueSet 定義至 .vscache，並匯出至 valuesets 資料夾。

### 參考開源資源法律文件
- UMLS Metathesaurus License: https://uts.nlm.nih.gov/uts/assets/LicenseAgreement.pdf

## package.json 來源
- ./package.json [MODIFY]：參考 npm 套件 cql-testing 官方文件「The package.json File」範例下載，並依專案需求修改，定義了測試與 CQL-to-ELM 腳本及必要相依套件。

### 參考開源資源法律文件
- CQL Testing Framework LICENSE：https://github.com/AHRQ-CDS/CQL-Testing-Framework/blob/master/LICENSE

