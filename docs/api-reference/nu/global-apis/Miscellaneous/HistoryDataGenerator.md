# HistoryDataGenerator class

Represents configuration settings that control whether History records should be created or not for a particular OrderLine.

---
## Methods
### `doNotGenerate()` → `HistoryDataGenerator`

Sets this HistoryDataGenerator to not generate Histories automatically.

#### Return

**Type**

HistoryDataGenerator

**Description**

Updated instance.

### `generate()` → `HistoryDataGenerator`

Sets this HistoryDataGenerator to generate Histories automatically.

#### Return

**Type**

HistoryDataGenerator

**Description**

Updated instance.

### `getValueByField()` → `Object>`

The map of value by field that will be used when building history datas.

#### Return

**Type**

Object>

**Description**

Map of value by field that will be used when building history datas.

### `newInstance()` → `HistoryDataGenerator`

Returns a new HistoryDataGenerator instance.

#### Return

**Type**

HistoryDataGenerator

**Description**

New HistoryDataGenerator instance.

### `shouldAutoGenerateHistoryData()` → `Boolean`

Whether history datas should be auto generated or not.

#### Return

**Type**

Boolean

**Description**

True if history datas should be auto generated, false otherwise.

### `withFieldValue(SObjectField field, Object value)` → `HistoryDataGenerator`

Adds a value that should be added to a field during the history creation process.

#### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The SObjectField to set the value to. |
|`value` |  The value to set. |

#### Return

**Type**

HistoryDataGenerator

**Description**

Updated instance.

---
