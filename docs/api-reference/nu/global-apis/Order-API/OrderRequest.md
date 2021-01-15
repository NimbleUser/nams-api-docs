# OrderRequest class

A request class for creating an order.

---
## Constructors
### `OrderRequest(Id orderEntityId, Id orderBillToId)`

Constructor for creating a request to generate a new order.
#### Parameters
|Param|Description|
|-----|-----------|
|`orderEntityId` |  The Id of the entity which the order will be for. |
|`orderBillToId` |  The Id of the account who will be submitting the new order. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if either parameter is null. |

### `OrderRequest(Id orderIdParam)`

Constructs an OrderRequest with the intend to generate an Order wrapper based upon an existing order.
#### Parameters
|Param|Description|
|-----|-----------|
|`orderIdParam` |  The Id of the order to construct an OrderRequest for. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if orderIdParam is null. |

---
## Properties

### `BillToId` → `Id`

The Id of an account.

### `Context` → `Object>`

A map containing additional information that may be needed to create an order.

### `EntityId` → `Id`

The Id of an Entity.

### `OrderId` → `Id`

The Id of an existing order to used when building an Order wrapper.

---
