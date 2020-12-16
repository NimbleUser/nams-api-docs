# RecurringPriceRequest class

Used when calling out to get recurring price.

---
## Constructors
### `RecurringPriceRequest()`

Constructs a RecurringPriceRequest.
### `RecurringPriceRequest(Set<Id> scheduleIds)`

Constructs a RecurringPriceRequest.
#### Parameters
|Param|Description|
|-----|-----------|
|`scheduleIds` |  The Set<Id> to assign ScheduleIds. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if scheduleIds is null. |

---
## Properties

### `ScheduleIds` → `Set<Id>`

The Schedule Ids for this request.

---
