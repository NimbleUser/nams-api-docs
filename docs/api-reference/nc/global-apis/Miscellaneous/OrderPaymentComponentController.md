# OrderPaymentComponentController class

Used for controlling OrderPayment.component and facilitates authorizing credit card payments.

---
## Methods
### `buildPaymentAuthorizationRequest(znu.Order order)` → `znu.PaymentAuthorizationService.Request`

Builds a znu.PaymentAuthorizationService.Request for the specified znu.Order instance.

#### Parameters
|Param|Description|
|-----|-----------|
|`order` |  The znu.Order to build an authorization request for. |

#### Return

**Type**

znu.PaymentAuthorizationService.Request

**Description**

A znu.PaymentAuthorizationService.Request.

### `getEntityId()` → `Id`

Gets the znu__Entity__c Id related to the order being authorized. Used to populate the list of credit card issuers.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to handle, containing information on the event that occurred. |

#### Return

**Type**

Id

**Description**

The Entity Id related to the order being paid for.

### `getRequest()` → `znu.PaymentOptionsService.Request`

Gets the znu.PaymentOptionsService.Request related to the order currently being paid.

#### Return

**Type**

znu.PaymentOptionsService.Request

**Description**

A znu.PaymentOptionsService.Request.

### `handleAuthorizationMessage(Message message)` → `void`

Handles an AuthorizePaymentMessage, providing an opportunity to override the functionality.

#### Return

**Type**

void

**Description**

message An instance of AuthorizePaymentMessage.

---
