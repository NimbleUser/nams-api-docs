# RecordsMessage class

Message that contains a set of Ids as well as the SObjectType of those Ids.

---
## Constructors
### `RecordsMessage(SObjectType sObjectTypeParam, Set<Id> recordIdsParam)`

Constructs a RecordsMessage with an SObjectType and a set of record Ids.
#### Parameters
|Param|Description|
|-----|-----------|
|`sObjectTypeParam` |  SObjectType of the records being passed. |
|`recordIdsParam` |  Set of Id being passed in this message. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the parameters are null. |

### `RecordsMessage(SObjectType sObjectTypeParam, Set<Id> recordIdsParam, Integer recordLimitParam)`

Constructs a RecordsMessage with an SObjectType and a set of record Ids.
#### Parameters
|Param|Description|
|-----|-----------|
|`sObjectTypeParam` |  SObjectType of the records being passed. |
|`recordIdsParam` |  Set of Id being passed in this message. |
|`recordLimitParam` |  Integer that was used to limit the number of records returned. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the parameters are null. |

---
## Methods
### `getRecordIds()` → `Set<Id>`

Returns a Set of Ids for the records being passed in this message.

#### Return

**Type**

Set<Id>

**Description**

Set of Ids.

### `getRecordLimit()` → `Integer`

Returns an Integer representing the limit to the number of records returned.

#### Return

**Type**

Integer

**Description**

Integer of the record limit, if it was set. Null otherwise.

### `getSObjectType()` → `SObjectType`

Returns the SObjectType of the records being passed in this message.

#### Return

**Type**

SObjectType

**Description**

SObjectType of the records being passed.

### `getType()` → `Type`

Returns the Type of this message.

#### Return

**Type**

Type

**Description**

RecordsMessage class type.

### `setParameter(Object objectToAssign)` → `void`

Sets the Parameter property for an instance of Message. Uses the default behavior. Overridden to prevent packaging issues.

#### Parameters
|Param|Description|
|-----|-----------|
|`objectToAssign` |  The object to assign to Parameter. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if objectToAssign is null. |

---
