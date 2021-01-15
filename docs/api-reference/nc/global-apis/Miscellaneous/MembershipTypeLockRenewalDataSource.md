# MembershipTypeLockRenewalDataSource class

A data source that retrieves the membership type the current user has a cart for.

---
## Constructors
### `MembershipTypeLockRenewalDataSource()`

Constructs an instance of MembershipTypeLockRenewalDataSource.
---
## Methods
### `getCashBillMembershipTypeIds()` → `Set<Id>`

Grabs the membership type Ids for the current user's outstanding cash membership bill. If none exists, an empty set will be returned.

#### Return

**Type**

Set<Id>

**Description**

A Set<Id> of membership type Ids.

### `getData(DataSource.Request dataRequest)` → `Object`

Grabs the relevant membership type -- only the current membership type if this is a cash renewal. Uses the default MembershipTypeDataSource functionality if this is not a renewal.

#### Parameters
|Param|Description|
|-----|-----------|
|`A` |  data source request (not used). |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any parameter is null. |

### `isMember()` → `Boolean`

Determines if the current user is a member.

#### Return

**Type**

Boolean

**Description**

True if the current user is a member, else false.

---
