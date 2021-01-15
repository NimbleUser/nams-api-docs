# OrderAPI class

Entry point to interact with the order creation process.

---
## Properties

### `Instance` → `OrderAPI`

Returns an OrderAPI instance.

---
## Methods
### `generateOrder(Id accountId)` → `Order`

Generates a single Order for the passed in account Id. Uses the defined org's default Entity as the Order's Entity.

#### Parameters
|Param|Description|
|-----|-----------|
|`accountId` |  The account Id for which the Order will be generated. |

#### Return

**Type**

Order

**Description**

Generated Order.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if accountId is null. |
|`OrderGenerationException` |  if the org has no defined entity Id. |

### `generateOrder(Id accountId, Id entityId)` → `Order`

Generates a single Order for the passed in account Id and entity Id.

#### Parameters
|Param|Description|
|-----|-----------|
|`accountId` |  The account Id for which the Order will be generated. |
|`entityId` |  The entity Id for which the Order will be generated. |

#### Return

**Type**

Order

**Description**

Generated Order.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the arguments are null. |

### `generateOrderLines(OrderLineGeneratorRequest request)` → `OrderLineGeneratorResponse`

Generates an OrderLineGeneratorResponse with Order Lines based on the passed in request.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  OrderLineGeneratorRequest with information regarding the product Ids that will be used |

#### Return

**Type**

OrderLineGeneratorResponse

**Description**

OrderLineGeneratorResponse with the OrderLines created.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the request is null. |

### `generateOrders(OrderGeneratorRequest request)` → `OrderGeneratorResponse`

Generates a list of Orders for the passed in OrderRequests.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  OrderGeneratorRequest that contains the list of OrderRequests to generate orders for. |

#### Return

**Type**

OrderGeneratorResponse

**Description**

OrderGeneratorResponse that holds the list of generated orders.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if orderRequestsParam is null. |

### `processOrders(OrderProcessorRequest request)` → `OrderProcessorResponse`

Inserts orders, payments and transactions into the database.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  OrderProcessorRequest with information regarding the orders that will be processed. |

#### Return

**Type**

OrderProcessorResponse

**Description**

OrderProcessorResponse with information regarding the inserted orders.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the request is null. |

---
## Inner Classes

### OrderAPI.OrderGenerationException class

Exception thrown when an error occurs while generating an Order.

---
