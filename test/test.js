/*
 * CQL 測試啟動腳本
 *
 * 此檔案來源於AHRQ-CDS/CQL-Testing-Framework
 * Copyright: © 2018-2023 Agency for Healthcare Research and Quality
 * License: Apache License, Version 2.0
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

const cqlt = require('cql-testing');
const path = require('path');

cqlt.test(path.join(__dirname));