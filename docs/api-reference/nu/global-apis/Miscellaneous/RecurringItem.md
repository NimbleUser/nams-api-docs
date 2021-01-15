# RecurringItem class

A class with input values required for recurring an order item.

---
## Constructors
### `RecurringItem()`

Creates a RecurringItem instance.
### `RecurringItem(OrderItem recurringOrderItem, String paymentMethod, Id externalPaymentProfileIId)`

Creates an object of RecurringItem.
#### Parameters
|Param|Description|
|-----|-----------|
|`recurringOrderItem` |  The order item object to recur. |
|`paymentMethod` |  The payment method to use for recurring. |
|`externalPaymentProfileIId` |  The Id of external payment profile to use for recurring. |

---
## Properties

### `ExternalPaymentProfileId` → `Id`

The Id of external payment profile to use for recurring.

### `PaymentMethod` → `String`

The payment method to use for recurring.

### `PaymentMode` → `Schedule.PaymentStrategy`

Schedule.PaymentStrategy that represents how the recurring order will be paid.

### `ProductFrequencyMap` → `Id>`

Optional map of Frequency Id by Product Id. If not provided, the frequency configured on the recurring eligible product will be used.

### `RecurringOrderItem` → `OrderItem`

The Order Item wrappers for which schedules will be generated.

---
