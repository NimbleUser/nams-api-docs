# OrderGeneratorRequest class

A request class for creating multiple orders.

---
## Constructors
### `OrderGeneratorRequest(List<OrderRequest> orderRequestsParam)`

Constructor for creating a request to generate multiple orders.
#### Parameters
|Param|Description|
|-----|-----------|
|`orderRequestsParam` |  The list of OrderRequests that will be used to generate orders. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if orderRequestsParam is null. |

---
## Properties

### `OrderRequests` → `List<OrderRequest>`

The list of OrderRequests that will be used to generate orders.

---
