# PaymentBuilder class

Creates Payment for order.

---
## Properties

### `Instance` → `PaymentBuilder`

Singleton instance for the Payment Authorization Service.

---
## Methods
### `parseResponse(PaymentAuthorizationService.Request originatingRequest,PaymentGatewayResponse gatewayResponse)` → `PaymentAuthorizationService.Response`

Parses the gateway response and creates payment record.

#### Parameters
|Param|Description|
|-----|-----------|
|`originatingRequest` |  A request containing the payment details. |
|`gatewayResponse` |  The response from the gateway. |

#### Return

**Type**

PaymentAuthorizationService.Response

**Description**

A response containing the authorized payment or errors.

#### Throws
|Exception|Description|
|---------|-----------|
|`An` |  ArgumentNullException if request is null. |

---
