## OrderItemPaymentApplier class

Order Item payment applier which creates a Payment Line for each active Order Item with a balance. Payment is applied in the order of OrderItem.PaymentSortOrder.

---
### Constructors
<!-- panels:start -->
<!-- div:left-panel -->
#### `OrderItemPaymentApplier(List<OrderItem> orderItems)`

Constructs a new instance of OrderItemPaymentApplier
##### Parameters
|Param|Description|
|-----|-----------|
|`orderItems` |  The order items that the strategy will apply payment to. |

<!-- panels:end -->
---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `createLines(PaymentBase payment)` → `void`

Creates payment lines for the passed in payment.
##### Parameters
|Param|Description|
|-----|-----------|
|`payment` |  The payment to generate lines for. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `newInstance(Set<Id> orderItemIds)` → `OrderItemPaymentApplier`

Constructs a new instance of OrderItemPaymentApplier for the passed in Id's.
##### Parameters
|Param|Description|
|-----|-----------|
|`orderItemIds` |  The order item Id's that the strategy will apply payment to. |

<!-- panels:end -->
---
