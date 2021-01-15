# OrderService class

Handle interactions with Orders.

---
## Properties

### `Instance` → `OrderService`

Creates, caches, and provides a singleton instance of the OrderService. @return An instance of the OrderService.

---
## Methods
### `convertOrderToCart(Id orderId)` → `Id`

Converts the specified order to a cart, setting the Identifier__c field to the Id of the order, and setting IsCommunityEditable__c to false for any CartItem__c and CartItemLine__c associated with the newly created Cart. Also converts order items and order item lines to their cart counterparts, as well as creates cart payments for existing payments.

#### Parameters
|Param|Description|
|-----|-----------|
|`orderId` |  The Id of the order to convert to a cart. |

#### Return

**Type**

Id

**Description**

The Id of the converted cart.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the provided orderId is null. |
|`ArgumentException` |  if an order record matching the provided orderId cannot be found. |

### `getAdjustmentCart(Request adjustmentRequest)` → `Response`

Fetches existing adjustment carts or creates them based on the request. Includes only the order items specified in the request. If no order items are specified includes all order items. If an adjustments exist, verifies that the AdjustmentVersion__c is valid. If it is not, the old adjustment cart is deleted and a new one created / returned.

#### Parameters
|Param|Description|
|-----|-----------|
|`adjustmentRequest` |  An OrderService.Request detailing how the adjustment cart should be created/fetched. |

#### Return

**Type**

Response

**Description**

An OrderService.Response detailing the cart that was retrieved.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any parameter is null. |

---
## Inner Classes

### OrderService.Request class

Request objects for calling OrderService endpoints.

---
#### Constructors
##### `Request(Id accountIdArg, Id orderIdArg, List<Id> orderItemIdsArg, String adjustmentTypeArg)`

Constructs an order service request. Includes only the specified order items from the relevant order. If no order item Id's are specified every item in the order is included.
###### Parameters
|Param|Description|
|-----|-----------|
|`accountIdArg` |  The Id of an account. |
|`orderIdArg` |  The Id of an order. |
|`orderItemIdsArg` |  The Id's of any order items relevant to this request. |
|`adjustmentTypeArg` |  The type of adjustment that will be made to the order. "Cancel" or "Edit". |

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any parameter is null. |

##### `Request(Id accountIdArg, Id orderIdArg, String adjustmentTypeArg)`

Constructs an order request. Includes every order item in the relevant order.
###### Parameters
|Param|Description|
|-----|-----------|
|`accountIdArg` |  The Id of an account. |
|`orderIdArg` |  The Id of an order. |
|`adjustmentTypeArg` |  The type of adjustment that will be made to the order. "Cancel" or "Edit". |

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any parameter is null. |

---
### OrderService.Response class

Responses containing adjustment carts and operation results.

---
#### Methods
##### `getCartId()` → `Id`

Returns Id of the cart record contained in this response.

###### Parameters
|Param|Description|
|-----|-----------|
|`cartIdArg` |  The Id of the cart record to return in this response. |
|`ex` |  The exception to store in the failed response. |

###### Return

**Type**

Id

**Description**

A cart Id.

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if cartArg is null. |
|`ArgumentNullException` |  if ex is null. |

##### `getIsSuccessful()` → `Boolean`

Determines if the OperationResult was successful.

###### Return

**Type**

Boolean

**Description**

True if the OperationResult was successful. Else false.

##### `getOperationResult()` → `OperationResult`

Returns the OperationResult instance this response wraps.

###### Return

**Type**

OperationResult

**Description**

An OperationResult instance.

---
