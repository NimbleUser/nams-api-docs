# RecurringService class

Service in charge of operations related to the Recurring Payment feature.

---
## Properties

### `Instance` → `RecurringService`

Returns a RecurringService instance.

---
## Methods
### `generateRecurringSchedules(List<RecurringItem> recurringItems)` → `List<Schedule>`

Generates Recurring Schedule wrappers.

#### Parameters
|Param|Description|
|-----|-----------|
|`orderItems` |  Order Items we want to generate Recurring schedules for. |

#### Return

**Type**

List<Schedule>

**Description**

List of generated Recurring Schedule wrappers generated for the passed in OrderItems.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if orderItems is null. |

---
