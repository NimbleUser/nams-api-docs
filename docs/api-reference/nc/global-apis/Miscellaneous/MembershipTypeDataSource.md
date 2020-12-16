# MembershipTypeDataSource class

Data source for querying the membership types that should be available in the Join/Renew process.

---
## Constructors
### `MembershipTypeDataSource()`

Constructs an instance of MembershipTypeDataSource.
---
## Methods
### `getData(DataSource.Request dataRequest)` → `Object`

Gets a list of znu__MembershipType__c records for the current cart by query string Id.

#### Parameters
|Param|Description|
|-----|-----------|
|`dataRequest` |  The DataSource.Request that contains the information necessary to query the records. |

#### Return

**Type**

Object

**Description**

A List<znu__MembershipType__c>.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any parameter is null. |

---
