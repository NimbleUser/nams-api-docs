# SObjectInstallData class

A fluent interface for creating and inserting SObject records. Intended for use in install scripts. This is a data factory, but please use sparingly and NOT in tests (TestData classes exist for that purpose).

---
## Methods
### `getSObjectType()` → `Schema.SObjectType`

Returns the SObject type for this InstallData builder.

#### Return

**Type**

Schema.SObjectType

**Description**

A Schema.SObjectType.

### `insertData(List<IData> dataList)` → `void`

Inserts a list of IData objects.

#### Parameters
|Param|Description|
|-----|-----------|
|`dataList` |  The list of IData objects to insert. |

---
