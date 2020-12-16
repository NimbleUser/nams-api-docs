# ShippingService class

Service used to calculate shipping costs for each ship method.

---
## Properties

### `Instance` → `ShippingService`

Get the instance of ShippingService.

---
## Methods
### `applyShipMethod(ShippingServiceRequest request)` → `OperationResult`

Apply a shipping method to a cart.

#### Parameters
|Param|Description|
|-----|-----------|
|`ShippingServiceRequest` |  The request used to apply the shipping method. |

#### Return

**Type**

OperationResult

**Description**

An instance of OperationResult.

### `calculateShippingCosts(ShippingServiceRequest request)` → `ShippingServiceResponse`

Calculate the shipping costs for each ship method.

#### Parameters
|Param|Description|
|-----|-----------|
|`ShippingServiceRequest` |  The request used to calculate shipping costs. |

#### Return

**Type**

ShippingServiceResponse

**Description**

An instance of ShippingServiceResponse.

### `validateShippingMethod(ShippingServiceRequest request)` → `void`

Validate the shipping method set on the Cart Item defined is still valid.

#### Parameters
|Param|Description|
|-----|-----------|
|`ShippingServiceRequest` |  The request used to calculate shipping costs. |

---
