# CalculateAccountFinancialsRU class

Rolls up the Total Balance and Total Money Spent of all accounts 		that have children. 		This class runs as a schedulable Batch Apex class.

---
## Constructors
### `CalculateAccountFinancialsRU()`

 Default constructor.
---
## Methods
### `execute(SchedulableContext context)` → `void`

Runs via the Apex scheduler to start the Batch Apex execution, with a batch size of 1000.

#### Parameters
|Param|Description|
|-----|-----------|
|`` | t |

### `execute(Database.BatchableContext context, List<Account> accounts)` → `void`

Runs for each Batch Apex that is being processed. 		Adds the accounts' Total Affiliate Balance and Total Affiliate Money Spent 		to their primary affiliations' Total Affiliate Balance and Total Affiliate 		Money Spent.

#### Parameters
|Param|Description|
|-----|-----------|
|`` | t |
|`A` |  List of Account objects. |

### `finish(Database.BatchableContext context)` → `void`

Runs when the Batch Apex is finished. 	Queues up a new	CalculateAccountFinancialsRU batch if there are more 		parents to roll-up to. This continues until there are no more parent 		primary affiliations. 		If an error is encountered an email is sent to NimbleUser and the 		user who scheduled or requested this job.

#### Parameters
|Param|Description|
|-----|-----------|
|`context` |  The Database.BatchableContext to log errors to etc. |

### `schedule(DateTime t)` → `void`

Schedules the class to run at the specified time, based on the TimeZone of the current User logged in.

#### Parameters
|Param|Description|
|-----|-----------|
|`t` |  the time at which the class should be run. |

### `start(Database.BatchableContext context)` → `Database.QueryLocator`

Returns a List of Accounts that have parent primary affiliations. 		It starts at the bottom of the affiliation hierarchy, accounts with primary affiliations 		but no children, and works its way up to the top 		until there are no more accounts with primary affiliations. 		The initial method called when the Batch Apex is started.

#### Parameters
|Param|Description|
|-----|-----------|
|`` | t |

#### Return

**Type**

Database.QueryLocator

**Description**

A List of Account objects.

---
