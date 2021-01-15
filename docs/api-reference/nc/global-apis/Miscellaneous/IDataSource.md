# IDataSource interface

An interface for classes that provide data from a particular source, with the specified fields queried. @deprecated DEPRECATED! DO NOT USE! Please extend DataSource.cls instead.

---
## Methods
### `getRecords(Set<String> fields)` → `List<SObject>`

Fetches the records with the specified fields queried.

#### Parameters
|Param|Description|
|-----|-----------|
|`fields` |  The fields to query. |

#### Return

**Type**

List<SObject>

**Description**

The records with the specified fields queried.

### `getSObjectType()` → `Schema.SObjectType`

Gets the type of sobjects returned by the data source.

#### Return

**Type**

Schema.SObjectType

**Description**

The sobject type.

---
