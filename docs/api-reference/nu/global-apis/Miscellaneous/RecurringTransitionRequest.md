# RecurringTransitionRequest class

Request class for interacting with IRecurringTransition implementations.

---
## Constructors
### `RecurringTransitionRequest(OrderItem recurringOrderItem)`

Constructs a new RecurringTransitionRequest instance.
#### Parameters
|Param|Description|
|-----|-----------|
|`recurringOrderItem` |  The recurring item we want to transition. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if recurringOrderItem is null. |

---
## Properties

### `IsRepricingAllowed` → `Boolean`

Account Id for whom order lines will be generated.

### `RecurringItem` → `OrderItem`

The recurring item we want to transition.

---
