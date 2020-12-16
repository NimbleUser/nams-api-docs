# OrderProcessorRequest class

Request to be passed into an IOrderProcessor implementation with information regarding the orders to process.

---
## Constructors
### `OrderProcessorRequest(List<Order> ordersParam)`

Constructs an OrderProcessorRequest with a list of new orders to process.
#### Parameters
|Param|Description|
|-----|-----------|
|`orderIdsByPayment` |  The map of Payment to set of Order Ids. |
|`ordersParam` |  Orders to process. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if orderIdsByPayment is null. |
|`ArgumentNullException` |  if ordersParam is null. |

### `OrderProcessorRequest(List<Order> ordersParam, Payment paymentParam)`

Constructs an OrderProcessorRequest with a list of new orders to process and a payment to process.
#### Parameters
|Param|Description|
|-----|-----------|
|`ordersParam` |  Orders to process. |
|`paymentParam` |  Payment to process. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if either argument is null. |

### `OrderProcessorRequest(Map<Payment, List<Order>> ordersByPayment)`

Constructs an OrderProcessorRequest with a map of Payments to list of Orders, to apply multiple payments to multiple orders in bulk.
#### Parameters
|Param|Description|
|-----|-----------|
|`ordersByPayment` |  The map of Payment to list of Orders. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if ordersByPayment is null. |

### `OrderProcessorRequest(Set<Id> existingOrderIdsParam, Payment paymentParam)`

Constructs an OrderProcessorRequest with a list of existing order Ids to apply a payment to.
#### Parameters
|Param|Description|
|-----|-----------|
|`existingOrderIdsParam` |  Order Ids to apply the payment to. |
|`paymentParam` |  Payment to process. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if either argument is null. |

### `OrderProcessorRequest(Map<Payment, Set<Id>> orderIdsByPayment)`

Constructs an OrderProcessorRequest with a map of Payments to set of Order Ids, to apply multiple payments to multiple orders in bulk.
#### Parameters
|Param|Description|
|-----|-----------|
|`orderIdsByPayment` |  The map of Payment to set of Order Ids. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if orderIdsByPayment is null. |

---
## Properties

### `AllowPartialPayment` → `Boolean`

When processing orders, determines if the specified Payment should allow for partial application to one or more orders contain a balance greater than the total payment amount.

### `BatchId` → `Id`

The Id of a batch to associate with the order(s) / processed payment(s).

### `BatchSize` → `Integer`

Optional property that indicates the batch size of an asynchronous execution.

### `Orders` → `List<Order>`

List of orders that will be processed.

### `ProcessAsync` → `Boolean`

Whether or not to process the orders asynchronously. If true, a batch job will be spawned.

### `ValidateTaxes` → `Boolean`

Whether or not the taxes that are currently on the Order should be validated during submission. True by default.

---
