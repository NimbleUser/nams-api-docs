# DeferredRevenueRecognizerJob class

A schedulable Batch Apex class that recognizes deferred revenue 		based on the date that the class is run.

---
## Constructors
### `DeferredRevenueRecognizerJob()`

Default constructor.
### `DeferredRevenueRecognizerJob(Date recognitionDate)`

Creates a new instance of the class. 		Sets the recognition date to the date specified. 		This is currently used for testing purposes.
#### Parameters
|Param|Description|
|-----|-----------|
|`recognitionDate` |  The date used to determine what deferred revenue to recognize. |

---
## Methods
### `execute(SchedulableContext context)` → `void`

Runs via the Apex scheduler to start the Batch Apex execution.

#### Parameters
|Param|Description|
|-----|-----------|
|`` | t |

### `execute(Database.BatchableContext context, List<DeferredSchedule__c> deferredSchedulesToRecognize)` → `void`

Runs for each Batch Apex that is being processed. 		Calls a private method to perform the necessary calculations 			on the List of Deferred Schedules passed in. 		Specifically, it creates necessary Batches, Transactions, and 			updates the Deferred Schedules based on the result of the 			recognition.

#### Parameters
|Param|Description|
|-----|-----------|
|`` | t |
|`deferredSchedulesToRecognize` |  The List of Deferred Schedules. |

#### Return

**Type**

void

**Description**

void

### `finish(Database.BatchableContext context)` → `void`

Runs when the Batch Apex is finished. If an error is encountered send an email to NimbleUser and the user who scheduled or requested this job. Also schedules the BatchTotalUpdater in response to any created transactions.

### `schedule()` → `void`

Schedules the class to run every night at 1:00 AM. 		Based on the TimeZone of the currently logged in User.

### `start(Database.BatchableContext context)` → `Database.QueryLocator`

Returns a List of Deferred Schedules, where the remaining recognition count is greater than 0. 		The initial method called when the Batch Apex is started.

#### Parameters
|Param|Description|
|-----|-----------|
|`` | t |

#### Return

**Type**

Database.QueryLocator

**Description**

A List of Deferred Schedules.

---
