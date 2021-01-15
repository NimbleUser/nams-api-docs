# CalculateARAging class

Calculates an Order's AR Aging. 		This class runs as a schedulable Batch Apex class.

---
## Methods
### `execute(SchedulableContext context)` → `void`

Runs via the Apex scheduler to start the Batch Apex execution.

#### Parameters
|Param|Description|
|-----|-----------|
|`` | t |

### `execute(Database.BatchableContext context, List<Order__c> invoicedOrders)` → `void`

Runs for each Batch Apex that is being processed. 		For all orders, calculates the current AR aging. 		If the order is fully paid, the current AR aging is nulled. 		Only updates those orders where the current AR aging has changed since the last calculation.

#### Parameters
|Param|Description|
|-----|-----------|
|`` | t |
|`invoicedOrders` |  A List of Orders |

#### Return

**Type**

void

**Description**

void

### `finish(Database.BatchableContext context)` → `void`

Runs when the Batch Apex is finished. 		If an error is encountered sends and email to NimbleUser and the 		user who scheduled or requested this job.

#### Parameters
|Param|Description|
|-----|-----------|
|`context` |  The BatchableContext to send failure notifications to etc. |

### `schedule()` → `void`

Schedules the class to run every night at 1:00 AM. 		Based on the TimeZone of the current logged in user.

### `start(Database.BatchableContext context)` → `Database.QueryLocator`

Returns a List of Orders, with information such as the balance, 		invoice date, current AR aging, entity, and days outstanding. 		The initial method called when the Batch Apex is started.

#### Parameters
|Param|Description|
|-----|-----------|
|`` | t |

#### Return

**Type**

Database.QueryLocator

**Description**

A List of Orders

---
