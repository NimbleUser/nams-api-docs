# ScheduleLine class

Wraps a ScheduleLine__c record.

---
## Enums
### Status


Represents the  processing status of the line.

---
## Properties

### `Amount` → `Decimal`

The Amount to be paid.

### `HasWarningMessage` → `Boolean`

The indicates if the schedule line has a warning to present in the UI.

### `NumberOfRetries` → `Integer`

The current number of retries on a failed scheduled payment.

### `ProcessingStatus` → `Status`

The status of the line.

### `ProcessingStatusDetail` → `String`

The status of the line.

### `RecordId` → `Id`

The Id of the record.

### `RecordName` → `String`

The name of the record if the record has been inserted.

### `ScheduleId` → `Id`

The Id of the related schedule.

### `ScheduledDate` → `Date`

The scheduled date.

### `WarningMessage` → `String`

A UI-friendly warning message related to this line.

---
## Methods
### `getCurrencyIsoCode()` → `String`

Returns the CurrencyIsoCode of the SObject if salesforce multi-currency is turned on.

### `getFormattedDate()` → `String`

Human readable representation of the Date.

#### Return

**Type**

String

**Description**

The human readable representation of the Date.

### `getIdentifier()` → `String`

Gets the identifier for this wrapper. If there is a Record Id, that will be returned. Otherwise it will be a combination of the Schedule Id and the Line Index.

#### Return

**Type**

String

**Description**

The identifier for this wrapper.

### `getIsCanceled()` → `Boolean`

Whether or not the schedule line is canceled.

#### Return

**Type**

Boolean

**Description**

True if is canceled, else false.

### `getIsDeletable()` → `Boolean`

Whether or not the schedule line can be deleted. In this case, if it is pending.

#### Return

**Type**

Boolean

**Description**

True if is deletable, else false.

### `getIsEditable()` → `Boolean`

Whether or not the schedule line can be edited. In this case, if it is pending.

#### Return

**Type**

Boolean

**Description**

True if is editable, else false.

### `getIsFailed()` → `Boolean`

Whether or not the ScheduleLine is FAILED.

#### Return

**Type**

Boolean

**Description**

Boolean representing whether the ProcessingStatus is set to FAILED.

### `getIsPending()` → `Boolean`

Whether or not the ScheduleLine is PENDING.

#### Return

**Type**

Boolean

**Description**

Boolean representing whether the ProcessingStatus is set to PENDING.

### `getIsProcessed()` → `Boolean`

Whether or not the ScheduleLine is PROCESSED.

#### Return

**Type**

Boolean

**Description**

Boolean representing whether the ProcessingStatus is set to PROCESSED.

### `getScheduleLookup()` → `Schedule__c`

Gets the schedule lookup reference record from the wrapped record.

#### Parameters
|Param|Description|
|-----|-----------|
|`statusName` |  The status to set. |

#### Return

**Type**

Schedule__c

**Description**

The Schedule__c or null depending on if the reference is present.

### `isScheduledForToday()` → `Boolean`

Whether or not the ScheduleLine has a ScheduledDate of today.

#### Return

**Type**

Boolean

**Description**

Boolean representing whether the ScheduleLine is scheduled to be processed today.

### `newInstance()` → `ScheduleLine`

Returns a new ScheduleLine instance.

#### Parameters
|Param|Description|
|-----|-----------|
|`recordToSet` |  The ScheduleLine__c record to wrap. |

#### Return

**Type**

ScheduleLine

**Description**

New ScheduleLine instance.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if recordToSet is null. |

### `newInstance(ScheduleLine__c recordToSet)` → `ScheduleLine`

Returns a ScheduleLine wrapping the specified SObject record.

#### Parameters
|Param|Description|
|-----|-----------|
|`recordToSet` |  The SObject record to wrap. |

### `newInstances(Set<Id> idSet)` → `List<ScheduleLine>`

Returns a list of new ScheduleLine instances. Bulkified.

#### Parameters
|Param|Description|
|-----|-----------|
|`idSet` |  The Id(s) of the record(s) to wrap. |

#### Return

**Type**

List<ScheduleLine>

**Description**

New ScheduleLine instance.

#### Throws
|Exception|Description|
|---------|-----------|
|`An` |  ArgumentNullException if idSet is null. |

### `newInstances(List<ScheduleLine__c> records)` → `List<ScheduleLine>`

Returns a list of new ScheduleLine instances. Bulkified.

#### Parameters
|Param|Description|
|-----|-----------|
|`records` |  The records to wrap. |

#### Return

**Type**

List<ScheduleLine>

**Description**

New ScheduleLine instance.

#### Throws
|Exception|Description|
|---------|-----------|
|`An` |  ArgumentNullException if records is null. |

### `register(UnitOfWork saveWork)` → `void`

Register the SObject this ScheduleLine represents in the passed in UnitOfWork as dirty.

#### Parameters
|Param|Description|
|-----|-----------|
|`saveWork` |  The UnitOfWork the SObject will be registered into. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if saveWork is null. |

### `setStatusToCanceled()` → `void`

Set the ProcessingStatus of this ScheduleLine to Canceled.

### `setStatusToCanceled(String statusDetail)` → `void`

Set the ProcessingStatus of this ScheduleLine to Canceled.

#### Parameters
|Param|Description|
|-----|-----------|
|`statusDetail` |  The detail to put into the status detail field. |

### `setStatusToFailed()` → `void`

Set the ProcessingStatus of this ScheduleLine to Failed.

### `setStatusToFailed(String errorMessage)` → `void`

Set the ProcessingStatus of this ScheduleLine to Failed with a detailed error message.

#### Parameters
|Param|Description|
|-----|-----------|
|`errorMessage` |  The error message to put into the status detail field. |

### `setStatusToPending()` → `void`

Set the ProcessingStatus of this ScheduleLine to Pending.

### `setStatusToProcessed()` → `void`

Set the ProcessingStatus of this ScheduleLine to Processed.

---
