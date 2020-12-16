# FlowDataSource class

Allows gathering of Data Source from use of a Flow.

---
## Methods
### `getData(DataSource.Request request)` → `Object`

Gets the input for the flow, instantiates the flow, starts the flow and passes in data.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The Request to send to this data source. |

#### Return

**Type**

Object

**Description**

An object representing the data provided by this data source.

### `getFlowInput()` → `Object>`

Gets the current Account Id of the logged in Community User.

#### Return

**Type**

Object>

**Description**

A Map of the current Account Id.

### `getSObjectType()` → `Schema.SObjectType`

Gets the configured SObjectType on the data source instance.

#### Return

**Type**

Schema.SObjectType

**Description**

The SObjectType.

---
