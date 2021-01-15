# ShippingServiceRequest class

Request class used for ShippingService.

---
## Constructors
### `ShippingServiceRequest(Id cartId, Id accountId, Address shippingAddress)`

Construct a ShippingServiceRequest.
#### Parameters
|Param|Description|
|-----|-----------|
|`cartId` |  The cart ID to use for this request. |
|`accountId` |  The account ID used for this request. |
|`shippingAddress` |  The shipping address to use. |

### `ShippingServiceRequest(Order orderInstance, Id accountId, Address shippingAddress)`

Constructs a ShippingServiceRequest with the passed in Order.
#### Parameters
|Param|Description|
|-----|-----------|
|`orderInstance` |  The order to which shipment should be applied to. |
|`accountId` |  The account Id used for this request. |
|`shippingAddress` |  The shipping address to use for this request. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the arguments are null. |

### `ShippingServiceRequest(OrderItem orderItemInstance, Id accountId, Address shippingAddress)`

Constructs a ShippingServiceRequest with the passed in OrderItem.
#### Parameters
|Param|Description|
|-----|-----------|
|`orderInstance` |  The order item to which shipment should be applied to. |
|`accountId` |  The account Id used for this request. |
|`shippingAddress` |  The shipping address to use for this request. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the arguments are null. |

### `ShippingServiceRequest(Id cartId, Id accountId, Id shipMethodId, Address shippingAddress)`

Construct a ShippingServiceRequest.
#### Parameters
|Param|Description|
|-----|-----------|
|`cartId` |  The cart Id to use for this request. |
|`accountId` |  The account Id used for this request. |
|`shipMethodId` |  The ship method Id used for this request. |
|`shippingAddress` |  The shipping address to use. |

### `ShippingServiceRequest(Order orderInstance, Id accountId, Id shipMethodId, Address shippingAddress)`

Constructs a ShippingServiceRequest with the passed in Order.
#### Parameters
|Param|Description|
|-----|-----------|
|`orderInstance` |  The order to which shipment should be applied to. |
|`accountId` |  The account Id used for this request. |
|`shipMethodId` |  The ship method Id used for this request. |
|`shippingAddress` |  The shipping address to use for this request. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the arguments are null. |

### `ShippingServiceRequest(OrderItem orderItemInstance, Id accountId, Id shipMethodId, Address shippingAddress)`

Constructs a ShippingServiceRequest with the passed in OrderItem.
#### Parameters
|Param|Description|
|-----|-----------|
|`orderInstance` |  The order item to which shipment should be applied to. |
|`accountId` |  The account Id used for this request. |
|`shipMethodId` |  The ship method Id used for this request. |
|`shippingAddress` |  The shipping address to use for this request. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the arguments are null. |

---
## Properties

### `AccountId` → `Id`

The account used for this request.

### `CartId` → `Id`

The cart used for this request.

### `OrderInstance` → `Order`

Order instance for this request.

### `OrderItemInstance` → `OrderItem`

Shippable order item instance for this request. Use when applying different shipment information to different items in the same order.

### `ShipMethodId` → `Id`

The ship method to apply.

### `ShippingAddress` → `Address`

The shipping address to use.

---
