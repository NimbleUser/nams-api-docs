# MockPaymentGateway2 class

This class is used in unit tests for classes which interact with the PaymentGatewayService.

---
## Properties

### `ERROR_MESSAGE` → `String`

---
## Methods
### `setMock()` → `void`

Creates a new instance of the MockPaymentGateway and stores the instance in the PaymentGatewayService.

### `toggleSuccess()` → `Boolean`

This method can be used to toggle the success of the IPaymentGateway2 operations.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  A PaymentGatewayRequest. |
|`request` |  A PaymentGatewayRequest. |
|`request` |  A PaymentGatewayRequest. |
|`request` |  A PaymentGatewayRequest. |
|`requests` |  The Requests containing information to send to the payment gateway. |
|`requests` |  The Requests containing information to send to the payment gateway. |
|`request` |  A PaymentGatewayRequest. |
|`request` |  A PaymentGatewayRequest. |
|`request` |  A PaymentGatewayRequest. |
|`request` |  A PaymentGatewayRequest. |
|`request` |  A PaymentGatewayRequest. |

#### Return

**Type**

Boolean

**Description**

True if this mock gateway will return a successful response.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if request is null. |

---
