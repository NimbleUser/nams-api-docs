# StoredPaymentPaymentOption class

The Stored Payment Payment Option implementation.

---
## Constructors
### `StoredPaymentPaymentOption(PaymentOptionsService.Request requestParam)`

Constructor to build a StoredPaymentPaymentOption. Gets the Account and Entity Id from the request.
#### Parameters
|Param|Description|
|-----|-----------|
|`requestParam` |  The PaymentOptionsService.Request instance that contains relevant information. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the request is null. |

---
## Methods
### `getIsAvailable()` → `Boolean`

Identifies if the Payment Option is available.

#### Return

**Type**

Boolean

**Description**

True if (1)The Stored Payment feature is enabled. (2)The Entity specified in the PaymentStorageRequest

### `getName()` → `String`

Return the String with the contents of the PayNowStoredPayment label.

#### Return

**Type**

String

**Description**

String with the contents of the PayNowStoredPayment label.

---
