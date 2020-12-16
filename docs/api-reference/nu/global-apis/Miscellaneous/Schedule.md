# Schedule class

Wrapper for Schedule__c.

---
## Enums
### PaymentStrategy


When dealing with a recurring Schedule, this defines the payment strategy of how the recurring order that gets generated will be paid.

### ScheduleStage


Enum that represents the different Schedule stages.

### ScheduleType


Enum that represents the different Schedule types.

---
## Properties

### `AccountId` → `Id`

The Id of the Account that will be billed.

### `CartId` → `Id`

The Id of the Cart tied to this schedule.

### `EndDate` → `Date`

Date in which payments will stop occurring. This value can remain empty and, if set, will be used to calculate the TotalOccurrences.

### `ExternalPaymentProfileId` → `Id`

The Id of the ExternalPaymentProfile__c that will be used to process the payments.

### `FrequencyId` → `Id`

The Id of the Frequency__c that should be used to determine when payments should occur.

### `HasBeenUpdated` → `Boolean`

Flag for setting whether or not the record has been updated.

### `OrderId` → `Id`

The Id of the Order tied to this schedule.

### `OrderItemId` → `Id`

The Id of the Order Item tied to this schedule.

### `ProcessingStatusDetail` → `String`

The status of the line.

### `RecordId` → `Id`

The Id of the schedule being wrapped.

### `RecordTypeId` → `Id`

The RecordType Id for the record to be inserted. Defaults to the 'Payment' record type, since that is the only one that exists for now.

### `RoundOverflow` → `Boolean`

Boolean that determines if any balance overflow from the calculation should be paid in the first payment (if true) or if that money can be discarded (if false). Only valid for Installment payments as One Time and Recurring payments are paid in full during each iteration.

### `ScheduleLines` → `List<ScheduleLine>`

List of ScheduleLines that represent the payment dates and amounts that will be processed.

### `ShouldRecurOnTransactionDate` → `Boolean`

When a new recurring Schedule is created on the basis of this recurring Schedule, this Boolean indicates whether the start date of the new Schedule has been set to be the same as a) the transaction date of this Schedule's OrderItem (this property will be set to true), or b) this Schedule's start date (this property will be set to false).

### `Stage` → `Schedule`

The Stage of the schedule.

### `StartDate` → `Date`

Date in which payments will start occurring.

### `TotalOccurrences` → `Integer`

The total number of times this schedule will occur. 0 represents that it will occur forever (can only be used for Recurring payments).

### `Type` → `Schedule`

Type of Flexible Payment this payment schedule represents.

---
## Methods
### `addLines(List<ScheduleLine> linesToAdd)` → `void`

Adds the passed in line to the list of children Payment Schedule Lines.

#### Parameters
|Param|Description|
|-----|-----------|
|`saveWork` |  The UnitOfWork the SObject will be registered into. |
|`relatedObject` |  An SObjectWrapper object that relates to the Schedule__c that will be created. |
|`linesToAdd` |  List of children Payment Schedule Lines to add. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the params is null. |
|`ArgumentNullException` |  if linesToAdd is null. |

### `areAllLinesSameStatus(ScheduleLine.Status lineStatus)` → `Boolean`

Checks to see if all ScheduleLines share the same status.

#### Parameters
|Param|Description|
|-----|-----------|
|`lineStatus` |  The ScheduleLine.Status to check for. |

#### Return

**Type**

Boolean

**Description**

True if all ScheduleLines share the same status. False otherwise.

### `fail()` → `void`

Sets all children lines' status to failed.

### `fail(String failureMessage)` → `void`

Sets all children lines' status to failed.

#### Parameters
|Param|Description|
|-----|-----------|
|`failureMessage` |  The failure message to set on each schedule line. |

### `getCurrencyIsoCode()` → `String`

Returns the CurrencyIsoCode of the SObject if salesforce multi-currency is turned on.

### `getEarliestLine()` → `ScheduleLine`

Gets the Schedule Line with the earliest date.

#### Return

**Type**

ScheduleLine

**Description**

The earliest Schedule Line date.

### `getGroupIdentifier()` → `String`

Identifier that distinguishes this Schedule for grouping. Used for grouping all Schedules that are associated with the same Cart/Order.

#### Return

**Type**

String

**Description**

Cart or Order Id this Schedule is associated with.

### `getIsFailed()` → `Boolean`

Whether this schedule failed or not.

#### Return

**Type**

Boolean

**Description**

Whether this schedule failed or not.

### `getIsOngoing()` → `Boolean`

Whether this schedule ongoing or not.

#### Return

**Type**

Boolean

**Description**

Whether this schedule ongoing or not.

### `getIsRecurring()` → `Boolean`

Whether this schedule recurring or not.

#### Return

**Type**

Boolean

**Description**

Whether this recurring failed or not.

### `getOldestLine()` → `ScheduleLine`

Gets the Schedule Line with the oldest date.

#### Return

**Type**

ScheduleLine

**Description**

The oldest Schedule Line date.

### `newInstance()` → `Schedule`

Returns a new Schedule instance.

#### Parameters
|Param|Description|
|-----|-----------|
|`scheduleRecord` |  Schedule__c record to wrap. |

#### Return

**Type**

Schedule

**Description**

New Schedule instance.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if scheduleRecord is null. |

### `newInstance(Schedule__c scheduleRecord)` → `Schedule`

Returns a new Schedule instance with the passed in record wrapped.

#### Return

**Type**

Schedule

**Description**

New Schedule instance.

### `newInstance(List<ScheduleLine> lineWrappers)` → `Schedule`

Returns a new Schedule instance with the passed in line wrappers. The Schedule wrapper will be based upon the first line sent in.

#### Parameters
|Param|Description|
|-----|-----------|
|`lineWrappers` |  A List<ScheduleLine> to instantiate the Schedule from. |

#### Return

**Type**

Schedule

**Description**

New Schedule instance.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if lineWrappers is null. |
|`ArgumentNullException` |  if no lookup schedule is present on the wrapper. |
|`ArgumentException` |  if lineWrappers is empty. |

### `newInstance(ScheduleRequest request)` → `Schedule`

Generates a schedule and lines.

#### Parameters
|Param|Description|
|-----|-----------|
|`scheduleRecords` |  The schedule records to wrap. |
|`request` |  The ScheduleRequest to generate based upon. |

#### Return

**Type**

Schedule

**Description**

A Schedule generated based upon the specified parameters.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if if scheduleRecords is null. |
|`ArgumentNullException` |  if request is null. |
|`ArgumentException` |  if request is invalid. |

### `newInstances(Set<Id> idSet)` → `List<Schedule>`

Constructs a list of Schedule wrappers based upon a list of Ids of existing Schedule's to wrap in each instance.

#### Parameters
|Param|Description|
|-----|-----------|
|`idSet` |  Set of ids containing an Schedule Id to retrieve and wrap. |

#### Return

**Type**

List<Schedule>

**Description**

A List<Schedule> wrappers.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if idSet is null. |

### `register(UnitOfWork saveWork)` → `void`

Registers the record this wrapper represents and the children lines to be inserted into the database.

#### Parameters
|Param|Description|
|-----|-----------|
|`saveWork` |  UnitOfWork to register to. |

### `rollback()` → `void`

Sets the Id of the record to null as well as the Ids for any child Payment Schedule Line.

### `setStageToFinished()` → `void`

Set the stage of this Schedule to Finished.

### `setStageToOngoing()` → `void`

Set the stage of this Schedule to Ongoing.

---
