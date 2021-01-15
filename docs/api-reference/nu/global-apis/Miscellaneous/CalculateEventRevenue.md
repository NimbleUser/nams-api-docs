# CalculateEventRevenue class

Calculates an Event's current revenue. 		This class runs as a schedulable Batch Apex class.

---
## Methods
### `execute(SchedulableContext context)` → `void`

Runs via the Apex scheduler to start the Batch Apex execution, with a batch size of 1.

#### Parameters
|Param|Description|
|-----|-----------|
|`` | t |

### `execute(Database.BatchableContext context, List<Event__c> events)` → `void`

Runs for each Batch Apex that is being processed. 		For all events, calculates the current revenue of that event. 		Only updates those events where the current revenue has changed since the last calculation.

#### Parameters
|Param|Description|
|-----|-----------|
|`` | t |
|`events` |  The List of Events |

#### Return

**Type**

void

**Description**

void

### `finish(Database.BatchableContext context)` → `void`

Runs when the Batch Apex is finished. 		If an error is encountered sends an email to NimbleUser and the 		user who scheduled or requested this job.

### `schedule()` → `void`

Schedules the class to run every night at 1:00 AM. 		Based on the TimeZone of the current logged in User.

### `start(Database.BatchableContext context)` → `Database.QueryLocator`

Returns a List of Events (with a list size of 1) and the revenue field to be calculated. 		The initial method called when the Batch Apex is started.

#### Parameters
|Param|Description|
|-----|-----------|
|`` | t |

#### Return

**Type**

Database.QueryLocator

**Description**

A List of Events

---
