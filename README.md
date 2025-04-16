### CQL List
[Link](CQL.md)

### Typical Project Structure (From [AHRQ-CDS/CQL-Testing-Framework](https://github.com/AHRQ-CDS/CQL-Testing-Framework))

The following is a typical file structure for a CQL project.  This documentation will assume this structure, but other structures can be supported via configuration.

```
.
├── cql
│   ├── FHIRHelpers.cql
│   ├── FHIRHelpers.json
│   ├── MyCDSLogic.cql
│   └── MyCDSLogic.json
├── node_modules
│   └── ... // these contents are entirely managed by Node.js/NPM
├── package.json
└── test
    ├── cases
    │   ├── is-included.yaml
    │   ├── is-not-included.yaml
    │   └── another-test-case.yaml
    ├── cqlt.yaml
    ├── pm-test-gen.js
    └── test.js
```

#### ./cql

Your CQL _and ELM JSON_ files should reside somewhere in your project. The easiest configuration is to put them into a single `cql` folder, but other configurations are supported as well.

If your CQL logic uses any other CQL libraries, those must be provided as well. Again, it is easiest to put them in the same `cql` folder along side your own CQL, but this is not strictly necessary.

Each CQL file must have its corresponding ELM JSON file before tests can be run. If you use the [CDS Authoring Tool](https://cds.ahrq.gov/authoring/), the downloaded zip package will already contain ELM JSON and so no further steps are needed in this case.  If you only have the CQL source, you must translate it to ELM JSON using something like the [CQL-to-ELM translator](https://github.com/cqframework/clinical_quality_language/blob/master/Src/java/cql-to-elm/OVERVIEW.md). The CQL Testing Framework includes a copy of this translator which is exposed as an npm executable command; for more information [see below]()

#### ./node_modules

This folder is managed by Node.js and the Node Package Manager (NPM). You do not need to create this folder, nor should you manually modify it. It will be created and updated using the `npm` commandline utility.

#### ./package.json

The `package.json` file contains the Node.js configuration data for your project. Most importantly, this defines the project's dependency on the CQL Testing Framework as well as the commands to execute the tests.  This file is covered in more detail below.

#### ./test

The `test` folder contains the test cases and test configuration used by the CQL Testing Framework.

#### ./test/cases

The `test/cases` folder contains the test cases defined in the YAML format. Descriptions of the YAML test case format are detailed further below.

#### ./test/cqlt.yaml

The `test/cqlt.yaml` file contains configuration data used by the CQL Testing Framework. This configuration file is described in more detail below.

#### ./test/pm-test-gen.js

The `test/pm-test-gen.js` file is _optional_.  If provided, it is used to generate Postman tests for CQL Hooks implementations. This file is described in more detail below.

#### ./test/test.js

The `test/test.js` file is a very simple "bootstrap" file used as an entry point for running the CQL tests using the Mocha test runner. It is covered in more detail below.

## The cqlt.yaml File

The `cqlt.yaml` file provides important configuration data about where your CQL source is, where your test cases are, and other optional parameters. If you have multiple CQL libraries to test, you can either put unique `cqlt.yaml` files in different subfolders, or you can give them unique names, as long as they end with `cqlt.yaml` (for example, `my-cds-cqlt.yaml` and `other-cds.cqlt.yaml`).

The following configuration parameters are currently supported:

* **library**:
    * **name**: The name of the CQL library to test _(required, string)_
    * **version**: The version of the CQL library to test _(optional, string, default: latest version)_'
    * **paths**: The path(s) at which the library and its dependencies can be found _(optional, string array, default: cql)_'
* **hook**:
    * **id**: The hook id corresponding to this library; needed only for exporting Postman collections _(optional)_
    * **pmTestGenSupport**: The path to a Node module that supports Postman test generation _(optional)_
* **tests**:
    * **path**: The file path containing the test case files _(optional, string, default: tests)_
* **options**:
    * **date**: The execution date to use as "Now()" when CQL executes tests _(optional, ISO 8601 formatted date string enclosed in double-quotes (`"`), default: now)_
    * **vsac**:
        * **apikey**: The UMLS API Key to use when connecting to the VSAC _(optional, string)_
        * **cache**: The file path for the value set cache _(optional, string, default: .vscache)_
    * **dumpFiles**:
        * **enabled**: Indicates if test data and actual results should be dumped to files for debugging or testing; supports bundles, CQL Hooks requests, and Postman collections of CQL Hooks requests _(optional, boolean, default: false)_
        * **path**: The file path to dump files to, if enabled _(optional, string, default: dump\_files)_

All file paths are relative to the location of the `cqlt.yaml` configuraton file unless the file path is absolute.

The following is an example `cqlt.yaml` file that corresponds with the file structure indicated above:

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
  date: "2018-12-10T00:00:00.0Z"
```

## The Postman Test Generator Support File

If the artifact under test is configured to run with the [CQL Services](https://github.com/AHRQ-CDS/AHRQ-CDS-Connect-CQL-SERVICES) CQL Hooks feature, the CQL Testing Framework can optionally generate corresponding collections and tests for the popular [Postman](https://www.getpostman.com/) API testing tool.  As long as `dumpFiles` is enabled and a `hook.id` is configured, a Postman collection will be generated.

Since CQL Services allows CQL Hooks to be configured in many ways, additional support is needed to automatically create tests that will exercise the API and validate results.  Developers can optionally add this support by creating a special [Node module](https://nodejs.org/api/modules.html) that exports one or more of the following function signatures:

* `function expectOK(testCase)`: returns `boolean` indicating if the HTTP response should be OK
* `function expectCards(testCase)`: returns `boolean` indicating if cards should be returned
* `function expectCardsContent(testCase)`: returns JSON `object` or `array` of JSON `object`s representing card content that should be returned

The following is a simple example of a `pm-test-gen-support.js` file:

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

## The test/test.js File

Since the CQL Testing Framework leverages the Mocha testing library, it [requires](https://mochajs.org/#getting-started) a `test.js` file as an entrypoint to the test suite.  The following is a very simple `test.js` file:

```js
const cqlt = require('cql-testing');
const path = require('path');

cqlt.test(path.join(__dirname));
```

This assumes that the `cqlt.yaml` config file is in the same folder as the `test.js` file.  If that's not the case, change test argument from `path.join(__dirname)` to the path where the `cqlt.yaml` file is.

## The test/cases/*.yaml Files

CQL Testing Framework tests are written as files in the YAML format.  See the full documentation for creating YAML test cases at [CREATING-TEST-CASES.md](https://github.com/AHRQ-CDS/CQL-Testing-Framework/blob/master/CREATING-TEST-CASES.md).

## Running the CQL Tests

### Setting Up to Run the Tests for the First Time

#### Installing Dependencies

```bash
yarn
```

#### Translating CQL TO ELM

This step is only necessary if the ELM JSON representation is not already available (e.g., it was produced by the CDS Authoring Tool). The CQL Testing Framework includes scripts for running the [CQL-to-ELM translator](https://github.com/cqframework/clinical_quality_language/blob/master/Src/java/cql-to-elm/OVERVIEW.md), however a requirement for using this functionality is that Java SE Development Kit 11 is installed on the system. [The following page](https://github.com/cqframework/clinical_quality_language/blob/master/Src/java/README.md) contains more information on installing Java. Once Java is installed, CQL can be translated to ELM by running the following command from the root directory of your project:

```bash
yarn cql-to-elm
```


### test
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

      -  "MeetsInclusionCriteria": true
      +  "MeetsInclusionCriteria": false

```
