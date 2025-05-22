**重要說明:**  
本模板部分內容來源於以下開源專案，並依各自授權條款使用與調整：  
- AHRQ‑CDS/CQL‑Testing‑Framework (Apache License 2.0)：測試結構、test.js、cqlt.yaml 模板  
- AHRQ‑CDS/AHRQ‑CDS‑Connect‑PAIN‑MANAGEMENT‑SUMMARY (Apache License 2.0)：build.gradle 設定範例  
- CDS Authoring Tool (使用條款)：CDSConnectCommonsForFHIRv401.cql、FHIRHelpers.cql 及對應 ELM JSON  
- Gradle Wrapper (Apache License 2.0)  

Modified from:  
- https://github.com/AHRQ-CDS/CQL-Testing-Framework  
- https://github.com/AHRQ-CDS/AHRQ-CDS-Connect-PAIN-MANAGEMENT-SUMMARY  
- https://cds.ahrq.gov/authoring  
- https://docs.gradle.org/current/userguide/gradle_wrapper.html  

請注意，核心 CQL 規則（如 26074C.cql）及專案建置設定為本模板原創內容。  
Please note that the core CQL rules (e.g. 26074C.cql) and project build configurations are original content.

# CQL 專案模板 (CQL Project Template)

本模板透過臨床品質語言將健保給付規則結構化、標準化，使各醫療機構與系統廠商能一致性地實作判斷邏輯。本模板整合了`cql-to-elm`轉換工具與`cql-testing-framework`測試框架，建立健保給付規則判斷的解決方案。

## ✨ 功能特色 (Features)

*   **整合 CQL 轉換**: 內建 `cql-to-elm` 工具，可將 `.cql` 檔案轉換為 ELM JSON 格式。
*   **整合 CQL 測試**: 整合 `cql-testing-framework`，方便撰寫與執行 CQL 邏輯的單元測試。
*   **標準化專案結構**: 提供清晰的目錄結構，方便管理 CQL 規則與測試案例。

## 📁 專案結構 (Project Structure)

此專案結構依據 npm 套件 cql-testing 官方文件「Typical Project Structure」整理。
```
.
├── cql/                      # 存放 CQL 檔案及其編譯後的 ELM JSON 檔案
│   ├── *.cql                 # 您的 CQL 邏輯檔案
│   ├── *.json                # 編譯後的 ELM JSON 檔案
│   ├── FHIRHelpers.cql       # FHIR 標準輔助函式庫
│   └── ...                   # 其他依賴的 CQL 函式庫
├── test/                     # 存放測試相關檔案
│   ├── cases/                # 存放 YAML 格式的測試案例
│   │   └── *.yml
│   ├── cqlt.yaml             # CQL 測試框架設定檔
│   └── test.js               # 測試執行進入點 (Mocha)
├── local tool/               # (可選) 放置本地開發輔助工具，例如 Jupyter Notebook
│   └── code cvt.ipynb
├── build.gradle              # Gradle 建置設定檔 (若使用 Gradle)
├── gradlew                   # Gradle Wrapper (Linux/macOS)
├── gradlew.bat               # Gradle Wrapper (Windows)
├── package.json              # Node.js 專案設定檔 (管理測試框架依賴)
├── CQL.md                    # (可選) 集中列出或說明專案中的 CQL 規則
├── README.md                 # 專案說明文件
└── LICENSE                   # 授權條款
```

### 主要目錄說明

*   **`cql/`**: 存放所有 CQL 邏輯檔案 (`.cql`) 及其對應的 ELM JSON 檔案 (`.json`)。包含您自行開發的 CQL 邏輯以及所需依賴的函式庫 (如 `FHIRHelpers.cql`)。
*   **`test/`**: 包含所有測試相關的檔案。
    *   **`test/cases/`**: 存放使用 YAML 格式 (`.yml`) 撰寫的測試案例。
    *   **`test/cqlt.yaml`**: `cql-testing-framework` 的主要設定檔，定義測試目標函式庫、檔案路徑等。
    *   **`test/test.js`**: 使用 Mocha 測試框架執行測試的進入點腳本。
*   **`local tool/`**: (非必要) 可放置開發過程中使用的輔助工具或腳本。

## 📖 CQL 規則列表 (CQL List)

專案中包含的或開發的 CQL 規則列表。詳細說明可參考 [CQL.md](CQL.md)。
*(您可以編輯此處或 `CQL.md` 來列出您的 CQL 規則)*

## 🚀 開始使用 (Getting Started)

### 先決條件 (Prerequisites)

*   [Node.js](https://nodejs.org/) (建議使用 LTS 版本)
*   [Yarn](https://yarnpkg.com/) (或 npm)
*   [Java SE Development Kit (JDK) 11](https://adoptium.net/) 或更高版本 (若需要使用內建的 `cql-to-elm` 轉換功能)

### 安裝依賴 (Installation)

在專案根目錄執行以下命令，安裝測試框架等 Node.js 依賴：

```bash
yarn install
# 或使用 npm
# npm install
```

### 撰寫 CQL 規則 (Adding Your CQL Rules)

1.  將您的 `.cql` 檔案放置於 `cql/` 目錄下。
2.  如果您的 CQL 規則有依賴其他的 CQL 函式庫，也請一併放入 `cql/` 目錄。

### 轉換 CQL 至 ELM (Translating CQL to ELM)

如果您只有 `.cql` 原始檔，需要先將其轉換為 ELM JSON 格式 (`.json`) 才能執行測試。

在專案根目錄執行：

```bash
yarn cql-to-elm
# 或使用 npm
# npm run cql-to-elm
```

此命令會掃描 `cql/` 目錄下的 `.cql` 檔案，並在同目錄下產生對應的 `.json` 檔案。

**注意:** 如果您是使用 [CDS Authoring Tool](https://cds.ahrq.gov/authoring/) 下載的套件，通常已包含 `.json` 檔案，則無需執行此步驟。

### 撰寫測試案例 (Writing Tests)

1.  在 `test/cases/` 目錄下建立 YAML 格式 (`.yml`) 的測試案例檔案。
2.  每個檔案可以包含一或多個測試情境。
3.  關於 YAML 測試案例的詳細格式與語法，請參考 [`AHRQ-CDS/CQL-Testing-Framework` 的官方文件](https://github.com/AHRQ-CDS/CQL-Testing-Framework/blob/master/CREATING-TEST-CASES.md)。

### 設定測試框架 (Configuring Tests)

依據 npm 套件 cql-testing 官方文件「The cqlt.yaml File」範例下載，並依專案需求修改。

編輯 `test/cqlt.yaml` 檔案，至少需要設定 `library.name` 指向您要測試的主要 CQL 函式庫名稱 (不含副檔名)。

```yaml
---
library:
  name: YourMainCQLLibraryName # <--- 修改為您的主要 CQL 檔案名稱
  # version: 1.0.0 # (可選) 指定版本
  paths: ../cql # 指定 CQL/ELM 檔案的路徑 (相對於 cqlt.yaml)
tests:
  path: cases # 指定測試案例檔案的路徑 (相對於 cqlt.yaml)
# options: # (可選) 其他測試選項
#   date: "2023-10-27T00:00:00.0Z" # 指定測試執行的時間
```

### 執行測試 (Running Tests)

在專案根目錄執行：

```bash
yarn test
# 或使用 npm
# npm test
```

測試框架會讀取 `test/cqlt.yaml` 設定，載入對應的 ELM 檔案，並執行 `test/cases/` 目錄下的所有測試案例。測試結果會顯示在終端機上。

### 如何取得 ValueSet?
使用者可以前往 CQL 中所示 ValueSet 的網址，依相關授權條款取得授權，並輸入 API Key 以取得 ValueSet。
> [!WARNING] 
> 謹提醒使用者取得並使用ValueSet，應符合相關授權條款之規定，並留意使用限制。

## 📚 CQL 測試框架參考 (CQL Testing Framework Reference)

本模板使用的測試功能基於 [`AHRQ-CDS/CQL-Testing-Framework`](https://github.com/AHRQ-CDS/CQL-Testing-Framework)。

**注意 (Note):** 以下關於 `CQL-Testing-Framework` 的詳細說明內容，包含其典型的專案結構、設定檔 (`cqlt.yaml`) 細節、Postman 產生器、測試執行方式等，皆直接引用自 [`AHRQ-CDS/CQL-Testing-Framework` 官方文件](https://github.com/AHRQ-CDS/CQL-Testing-Framework)，以確保資訊的準確性與一致性。若需深入了解，建議直接查閱原始文件。

<details>
<summary>點擊展開/收合 AHRQ CQL Testing Framework 詳細說明 (Click to expand/collapse AHRQ CQL Testing Framework details)</summary>

### Typical Project Structure (from AHRQ)
The following is a typical file structure for a CQL project. This documentation will assume this structure, but other structures can be supported via configuration.
```
.
├── cql
│   ├── FHIRHelpers.cql
│   ├── FHIRHelpers.json
│   ├── MyCDSLogic.cql
│   └── MyCDSLogic.json
├── node_modules
│   └── ... // these contents are entirely managed by Node.js/NPM
├── package.json
└── test
    ├── cases
    │   ├── is-included.yaml
    │   ├── is-not-included.yaml
    │   └── another-test-case.yaml
    ├── cqlt.yaml
    ├── pm-test-gen.js
    └── test.js
```
#### ./cql (from AHRQ)
Your CQL _and ELM JSON_ files should reside somewhere in your project. The easiest configuration is to put them into a single \`cql\` folder, but other configurations are supported as well.

If your CQL logic uses any other CQL libraries, those must be provided as well. Again, it is easiest to put them in the same \`cql\` folder along side your own CQL, but this is not strictly necessary.

Each CQL file must have its corresponding ELM JSON file before tests can be run. If you use the [CDS Authoring Tool](https://cds.ahrq.gov/authoring/), the downloaded zip package will already contain ELM JSON and so no further steps are needed in this case.  If you only have the CQL source, you must translate it to ELM JSON using something like the [CQL-to-ELM translator](https://github.com/cqframework/clinical_quality_language/blob/master/Src/java/cql-to-elm/OVERVIEW.md). The CQL Testing Framework includes a copy of this translator which is exposed as an npm executable command; for more information [see below]()

#### ./node_modules (from AHRQ)
This folder is managed by Node.js and the Node Package Manager (NPM). You do not need to create this folder, nor should you manually modify it. It will be created and updated using the \`npm\` commandline utility.

#### ./package.json (from AHRQ)
The \`package.json\` file contains the Node.js configuration data for your project. Most importantly, this defines the project's dependency on the CQL Testing Framework as well as the commands to execute the tests.  This file is covered in more detail below.

#### ./test (from AHRQ)
The \`test\` folder contains the test cases and test configuration used by the CQL Testing Framework.

#### ./test/cases (from AHRQ)
The \`test/cases\` folder contains the test cases defined in the YAML format. Descriptions of the YAML test case format are detailed further below.

#### ./test/cqlt.yaml (from AHRQ)
The \`test/cqlt.yaml\` file contains configuration data used by the CQL Testing Framework. This configuration file is described in more detail below.

#### ./test/pm-test-gen.js (from AHRQ)
The \`test/pm-test-gen.js\` file is _optional_.  If provided, it is used to generate Postman tests for CQL Hooks implementations. This file is described in more detail below.

#### ./test/test.js (from AHRQ)
The \`test/test.js\` file is a very simple \"bootstrap\" file used as an entry point for running the CQL tests using the Mocha test runner. It is covered in more detail below.

### The cqlt.yaml File (from AHRQ)
The \`cqlt.yaml\` file provides important configuration data about where your CQL source is, where your test cases are, and other optional parameters. If you have multiple CQL libraries to test, you can either put unique \`cqlt.yaml\` files in different subfolders, or you can give them unique names, as long as they end with \`cqlt.yaml\` (for example, \`my-cds-cqlt.yaml\` and \`other-cds.cqlt.yaml\`).

The following configuration parameters are currently supported:

* **library**:
    * **name**: The name of the CQL library to test _(required, string)_
    * **version**: The version of the CQL library to test _(optional, string, default: latest version)_
    * **paths**: The path(s) at which the library and its dependencies can be found _(optional, string array, default: cql)_
* **hook**:
    * **id**: The hook id corresponding to this library; needed only for exporting Postman collections _(optional)_
    * **pmTestGenSupport**: The path to a Node module that supports Postman test generation _(optional)_
* **tests**:
    * **path**: The file path containing the test case files _(optional, string, default: tests)_
* **options**:
    * **date**: The execution date to use as \"Now()\" when CQL executes tests _(optional, ISO 8601 formatted date string enclosed in double-quotes (\`\"\`), default: now)_
    * **vsac**:
        * **apikey**: The UMLS API Key to use when connecting to the VSAC _(optional, string)_
        * **cache**: The file path for the value set cache _(optional, string, default: .vscache)_
    * **dumpFiles**:
        * **enabled**: Indicates if test data and actual results should be dumped to files for debugging or testing; supports bundles, CQL Hooks requests, and Postman collections of CQL Hooks requests _(optional, boolean, default: false)_
        * **path**: The file path to dump files to, if enabled _(optional, string, default: dump_files)_

All file paths are relative to the location of the \`cqlt.yaml\` configuraton file unless the file path is absolute.

The following is an example \`cqlt.yaml\` file that corresponds with the file structure indicated above:

```yaml
---
library:
  name: My_CDS_Artifact
  paths: ../cql
hook:
  id: my-cds-hook
  pmTestGenSupport: pm-test-gen.js
tests:
  path: cases
options:
  date: \"2018-12-10T00:00:00.0Z\"
```

### The Postman Test Generator Support File (from AHRQ)
If the artifact under test is configured to run with the [CQL Services](https://github.com/AHRQ-CDS/AHRQ-CDS-Connect-CQL-SERVICES) CQL Hooks feature, the CQL Testing Framework can optionally generate corresponding collections and tests for the popular [Postman](https://www.getpostman.com/) API testing tool.  As long as \`dumpFiles\` is enabled and a \`hook.id\` is configured, a Postman collection will be generated.

Since CQL Services allows CQL Hooks to be configured in many ways, additional support is needed to automatically create tests that will exercise the API and validate results.  Developers can optionally add this support by creating a special [Node module](https://nodejs.org/api/modules.html) that exports one or more of the following function signatures:

* \`function expectOK(testCase)\`: returns \`boolean\` indicating if the HTTP response should be OK
* \`function expectCards(testCase)\`: returns \`boolean\` indicating if cards should be returned
* \`function expectCardsContent(testCase)\`: returns JSON \`object\` or \`array\` of JSON \`object\`s representing card content that should be returned

The following is a simple example of a \`pm-test-gen-support.js\` file:

```js
function expectOK(testCase) {
  return true;
}

function expectCards(testCase) {
  if (testCase.expected != null) {
    return testCase.expected.Recommendation != null;
  }
}

function expectCardsContent(testCase) {
  if (expectCards(testCase)) {
    return {
      summary: 'My CDS Hook Summary',
      indicator: 'info',
      detail: testCase.expected.Recommendation,
      source: {
        label: 'My CDS Source',
        url: 'https://www.example.org/my-cds-source'
      }
    };
  }
}

module.exports = { expectOK, expectCards, expectCardsContent };
```

### The test/test.js File (from AHRQ)
Since the CQL Testing Framework leverages the Mocha testing library, it [requires](https://mochajs.org/#getting-started) a \`test.js\` file as an entrypoint to the test suite.  The following is a very simple \`test.js\` file:

```js
const cqlt = require('cql-testing');
const path = require('path');

cqlt.test(path.join(__dirname));
```

This assumes that the \`cqlt.yaml\` config file is in the same folder as the \`test.js\` file.  If that's not the case, change test argument from \`path.join(__dirname)\` to the path where the \`cqlt.yaml\` file is.

### The test/cases/*.yaml Files (from AHRQ)
CQL Testing Framework tests are written as files in the YAML format.  See the full documentation for creating YAML test cases at [CREATING-TEST-CASES.md](https://github.com/AHRQ-CDS/CQL-Testing-Framework/blob/master/CREATING-TEST-CASES.md).

### Running the CQL Tests (from AHRQ)

#### Setting Up to Run the Tests for the First Time (from AHRQ)

##### Installing Dependencies (from AHRQ)
```bash
yarn
```

##### Translating CQL TO ELM (from AHRQ)
This step is only necessary if the ELM JSON representation is not already available (e.g., it was produced by the CDS Authoring Tool). The CQL Testing Framework includes scripts for running the [CQL-to-ELM translator](https://github.com/cqframework/clinical_quality_language/blob/master/Src/java/cql-to-elm/OVERVIEW.md), however a requirement for using this functionality is that Java SE Development Kit 11 is installed on the system. [The following page](https://github.com/cqframework/clinical_quality_language/blob/master/Src/java/README.md) contains more information on installing Java. Once Java is installed, CQL can be translated to ELM by running the following command from the root directory of your project:

```bash
yarn cql-to-elm
```

#### test (from AHRQ)
```bash
yarn test
```

If the tests succeed, you'll see a report indicating such:

```
CQLT Config: /path/to/my/cql/project/test/cqlt.yaml


  My_CDS_Artifact_v1.0.0
    ✓ Meets Inclusion Criteria (40 y.o. male w/ Oxycodone)
    ✓ Doesn't Meet Incusion Criteria (40 y.o. male w/out Oxycodone)


  2 passing (26ms)
```

If they fail, you'll see a report indicating the failure along with the different actual and expected values:

```
CQLT Config: /path/to/my/cql/project/test/cqlt.yaml


  My_CDS_Artifact_v1.0.0
    1) Meets Inclusion Criteria (40 y.o. male w/ Oxycodone)
    ✓ Doesn't Meet Incusion Criteria (40 y.o. male w/out Oxycodone)


  1 passing (26ms)
  1 failing

  1) My_CDS_Artifact_v1.0.0
       Meets Inclusion Criteria (40 y.o. male w/ Oxycodone)

      Summary=<[object Object]>
      + expected - actual

      -  \"MeetsInclusionCriteria\": true
      +  \"MeetsInclusionCriteria\": false

```

</details>

## 🧩 第三方元件授權 (Third-Party Licenses)

| 元件名稱 (Component) | 授權類型 (License) | 檔案路徑 (Files) | 說明 (Description) |
|-------------------|-----------------|-------------|----------------|
| **AHRQ‑CDS/CQL‑Testing‑Framework** | Apache License 2.0 | `/test/test.js`<br>`/test/cqlt.yaml`<br>`/test/cases/*.yml`<br>`package.json` | 測試框架結構、設定檔及測試案例格式<br>包含 cql-to-elm 轉換功能和測試執行機制 |
| **AHRQ‑CDS/AHRQ‑CDS‑Connect‑PAIN‑MANAGEMENT‑SUMMARY** | Apache License 2.0 | `/build.gradle` | Gradle 建置設定範例 |
| **CDS Authoring Tool** | [Terms of Use](https://cds.ahrq.gov/authoring/documentation/terms) | `/cql/CDSConnectCommonsForFHIRv401.cql`<br>`/cql/CDSConnectCommonsForFHIRv401.json`<br>`/cql/FHIRHelpers.cql`<br>`/cql/FHIRHelpers.json` | CQL 通用函式庫及其 ELM JSON |
| **Gradle Wrapper** | Apache License 2.0 | `/gradle/wrapper/`<br>`/gradlew`<br>`/gradlew.bat` | Gradle 建置工具包裝器 |


### 授權連結 (License Links)
- AHRQ‑CDS/CQL‑Testing‑Framework：https://github.com/AHRQ‑CDS/CQL‑Testing‑Framework/blob/master/LICENSE
- AHRQ‑CDS/AHRQ‑CDS‑Connect‑PAIN‑MANAGEMENT‑SUMMARY：https://github.com/AHRQ‑CDS/AHRQ‑CDS-Connect-PAIN-MANAGEMENT-SUMMARY/blob/master/LICENSE
- Gradle Wrapper：https://github.com/gradle/gradle/blob/master/LICENSE
- CDS Authoring Tool：https://cds.ahrq.gov/authoring/documentation/terms

### 原創內容說明 (Original Content)
本模板中，以下內容為原創，由 © 2025 Ministry of Health and Welfare (MOHW) 擁有著作權：
- `/cql/26074C.cql` 和 `/cql/26074C.json`：核心 CQL 規則及其 ELM JSON
- 測試案例內容：`/test/cases/*.yml` 中的具體測試資料與預期結果
- 專案文件：`README.md`, `CQL.md`, `HISTORY.md` 等

## 📜 授權條款 (License)

© 2018-2023 Agency for Healthcare Research and Quality  
© 2025 Ministry of Health and Welfare (MOHW)

本模板依據 Apache License, Version 2.0 授權，詳見 [LICENSE](./LICENSE)。

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License.  
You may obtain a copy of the License at: http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the License for the specific language governing permissions and limitations under the License.

說明:
- 部分內容基於 AHRQ‑CDS/CQL‑Testing‑Framework (Apache License 2.0)，版權 © 2018-2023 Agency for Healthcare Research and Quality
- 本模板核心規則及建置設定為原創，版權 © 2025 Ministry of Health and Welfare (MOHW)
