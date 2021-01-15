# PaymentApplierRequest class

Creates requests intended to be used by implementors of the IPaymentApplier interface for the purposes of applying a payment to one or more orders.

---
## Constructors
### `PaymentApplierRequest(List<Order> ordersForRequest, Payment paymentForRequest)`

Constructs a PaymentApplierRequest from the specified orders, payment.
#### Parameters
|Param|Description|
|-----|-----------|
|`ordersForRequest` |  One or more orders to apply payment to. |
|`paymentForRequest` |  The payment intended to be applied to one or more specified orders. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if either argument is null. |

---
## Properties

### `AllowPartial` → `Boolean`

Determines whether the payment applier should allow partial payments. If null or false, does not allow.

### `Orders` → `List<Order>`

One or more orders to apply payment to.

### `Payment` → `global`

The payment to apply to one or more orders.

---
