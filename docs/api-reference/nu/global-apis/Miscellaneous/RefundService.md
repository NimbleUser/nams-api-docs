# RefundService class

Various utility methods for determining available refund options.

---
## Properties

### `Instance` → `RefundService`

Gets an instance of RefundOptionService. @return RefundOptionService instance.

---
## Methods
### `getRefundOptions(RefundService.Request request)` → `RefundOptions`

Determines the RefundOptions available for the specified cart.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  A RefundService.Request object containing the cart Id and account Id |

#### Return

**Type**

RefundOptions

**Description**

An instance of RefundOptions containing available refund options.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if a null request parameter is provided. |

### `processRefund(RefundOptions options)` → `OperationResult`

Using previously generated refund options, processes the refund for an adjustment cart. Before processing the refund, the refund is validated by ensuring the payments and cart have not changed since the refund was first calculated.

#### Parameters
|Param|Description|
|-----|-----------|
|`options` |  A RefundOptions instance containing the information needed to process the refund. |

#### Return

**Type**

OperationResult

**Description**

An instance of OperationResult.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if a null options parameter is provided. |

---
## Inner Classes

### RefundService.Request class

A request to retrieve refund options.

---
#### Constructors
##### `Request(Id cartIdArg, Id accountIdArg)`

Constructs a request.
###### Parameters
|Param|Description|
|-----|-----------|
|`cartIdArg` |  the Id of the cart for which this request is being made. |
|`accountIdArg` |  The Id of the account for which this request is being made. |

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if either parameter is null. |

---
