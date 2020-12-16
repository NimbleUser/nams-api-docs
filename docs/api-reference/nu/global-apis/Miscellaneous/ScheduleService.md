# ScheduleService class

A service to handle the updating of ScheduleLine__c records.

---
## Properties

### `Instance` → `ScheduleService`

Returns a ScheduleService instance.

---
## Methods
### `cancel(Id recordId)` → `List<ScheduleLine__c>`

Cancels the specified specified ScheduleLine__c record, or Schedule__c has eligible lines to cancel.

#### Parameters
|Param|Description|
|-----|-----------|
|`recordId` |  The Id of a ScheduleLine__c, or Schedule__c to verify for cancellation. |

#### Return

**Type**

List<ScheduleLine__c>

**Description**

The updated List<ScheduleLine__c> records.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if recordId is null. |
|`AuraHandledException` |  if recordId is not a schedule or schedule line Id. |

### `isEligibleForCancellation(Id recordId)` → `OperationResult`

Verifies if the specified ScheduleLine__c record, or Schedule__c has eligible lines to cancel.

#### Parameters
|Param|Description|
|-----|-----------|
|`cartId` |  The cart Id to find Schedule__c records by. |
|`orderId` |  The order Id to switch the lookup to. |
|`result` |  OperationResult to be updated by reference and returned. |
|`The` |  passed in result with any errors added. |
|`dateToRetrieve` |  The date to retrieve |
|`scheduleSObjects` |  The list of Schedules SObjects to wrap. |
|`wrappers` |  A list of Schedule's that have at least one ScheduleLine with a date of today to mark |
|`processAsync` |  Whether or not schedules should be processed asynchronously. |
|`wrappers` |  A list of Schedule's that have at least one ScheduleLine |
|`recordId` |  The cart of order Id to total. |
|`recordIds` |  Set of either Cart__c Ids or Order__c Ids associated with the Schedules to delete. |
|`recordId` |  The Id of a ScheduleLine__c, or Schedule__c to verify for cancellation. |

#### Return

**Type**

OperationResult

**Description**

An OperationResult indicating if the record is eligible for cancellation.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any argument is null. |
|`ArgumentNullException` |  if dateToRetrieve is null. |
|`ArgumentNullException` |  if records is null. |
|`ArgumentNullException` |  if records is null. |
|`ArgumentException` |  if recordId is not that of a cart or order. |
|`ArgumentNullException` |  if recordIds is null. |
|`ArgumentNullException` |  if recordId is null. |
|`AuraHandledException` |  if recordId is not a schedule or schedule line Id. |

### `isEligibleForSubmission(Id recordId)` → `OperationResult`

Verifies if the specified ScheduleLine__c record, or Schedule__c has eligible lines to submit.

#### Parameters
|Param|Description|
|-----|-----------|
|`recordId` |  The Id of a ScheduleLine__c, or Schedule__c to verify for submission. |

#### Return

**Type**

OperationResult

**Description**

An OperationResult indicating if the record is eligible for submission.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if recordId is null. |
|`AuraHandledException` |  if recordId is not a schedule or schedule line Id. |

### `payNow(Id recordId)` → `OperationResult`

Submits the specified specified Schedule__c or ScheduleLine__c record asynchronously.

#### Parameters
|Param|Description|
|-----|-----------|
|`recordId` |  The Id of a Schedule__c or ScheduleLine__c to submit. |

#### Return

**Type**

OperationResult

**Description**

An OperationResult indicating the success or failure.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if recordId is null. |
|`AuraHandledException` |  if recordId is not a schedule or schedule line Id. |

### `payNowSynchronous(Id recordId)` → `OperationResult`

Submits the specified specified Schedule__c or ScheduleLine__c record synchronously.

#### Parameters
|Param|Description|
|-----|-----------|
|`recordId` |  The Id of a Schedule__c or ScheduleLine__c to submit. |

#### Return

**Type**

OperationResult

**Description**

An OperationResult indicating the success or failure.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if either argument is null. |
|`AuraHandledException` |  if recordId is not a schedule or schedule line Id. |

---
