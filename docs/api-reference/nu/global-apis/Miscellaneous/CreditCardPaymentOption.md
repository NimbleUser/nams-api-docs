# CreditCardPaymentOption class

The Credit Card Payment Option implementation.

---
## Constructors
### `CreditCardPaymentOption(PaymentOptionsService.Request request)`

Global constructor.
#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  PaymentOptionsService.Request. Not used. |

---
## Methods
### `getIsAvailable()` → `Boolean`

Indicates if this payment option is available.

#### Return

**Type**

Boolean

**Description**

Always true.

### `getMessage()` → `String`

Message for this payment option.

#### Return

**Type**

String

**Description**

Always a blank string.

### `getName()` → `String`

Name for this payment option.

#### Return

**Type**

String

**Description**

String with the contents of the PayNowCreditCard label.

---
