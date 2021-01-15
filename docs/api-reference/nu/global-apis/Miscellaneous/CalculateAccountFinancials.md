# CalculateAccountFinancials class

Calculates an Account's total balance and total money spent. 		This class runs as schedulable Batch Apex class.

---
## Constructors
### `CalculateAccountFinancials()`

Default constructor
---
## Methods
### `execute(SchedulableContext context)` → `void`

Runs via the Apex scheduler to start the Batch Apex execution.

#### Parameters
|Param|Description|
|-----|-----------|
|`` | t |

### `execute(Database.BatchableContext context, List<Account> accounts)` → `void`

Runs for each Batch Apex that is being processed. 		Calls a private method to perform the necessary calculations on the List of Accounts passed in.

#### Parameters
|Param|Description|
|-----|-----------|
|`` | t |
|`accounts` |  The List of Account objects passed in. |

### `finish(Database.BatchableContext context)` → `void`

Runs when the Batch Apex is finished. 		Schedules the CalculateAccountFinancialsRU class to begin in one minute. 		Sends an error email, if an error is encountered, to NimbleUser and the 		user who scheduled or requested this job.

#### Parameters
|Param|Description|
|-----|-----------|
|`context` |  The Database.BatchableContext to log errors to etc. |

### `schedule()` → `void`

Schedules the class to run every night at 1am. 		Based on the TimeZone of the current logged in user.

### `start(Database.BatchableContext context)` → `Database.QueryLocator`

Returns a List of Accounts, with the Balance and Grand Total of all of their related Orders. 		The initial method called when the Batch Apex is started.

#### Parameters
|Param|Description|
|-----|-----------|
|`` | t |

#### Return

**Type**

Database.QueryLocator

**Description**

A List of Account objects

---
