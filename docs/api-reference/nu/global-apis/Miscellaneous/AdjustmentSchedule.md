# AdjustmentSchedule class

Represents an previously inserted Schedule now being adjusted.

---
## Methods
### `newInstances(Set<Id> idSet)` → `List<AdjustmentSchedule>`

Constructs a list of AdjustmentSchedule wrappers based upon a list of Ids of an existing Schedule's to wrap in each instance.

#### Parameters
|Param|Description|
|-----|-----------|
|`scheduleToWrap` |  The Schedule__c record that will be represented by this instance. |
|`idSet` |  Set of ids containing an Schedule Id to retrieve and wrap. |

#### Return

**Type**

List<AdjustmentSchedule>

**Description**

A List<AdjustmentSchedule> wrappers.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if idSet is null. |

### `register(UnitOfWork saveWork)` → `void`

Register the SObject this AdjustmentSchedule represents in the passed in UnitOfWork as dirty.

#### Parameters
|Param|Description|
|-----|-----------|
|`saveWork` |  The UnitOfWork the SObject will be registered into. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if saveWork is null. |

---
