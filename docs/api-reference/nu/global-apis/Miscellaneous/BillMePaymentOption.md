# BillMePaymentOption class

The Bill Me Payment Option implementation.

---
## Constructors
### `BillMePaymentOption(PaymentOptionsService.Request request)`

Constructor to build a BillMePaymentOption. Calls the BillMeService to get the status for included request.
#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  PaymentOptionsService.Request with the necessary information to build a BillMeService.Request. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the request is null. |
|`NUException` |  if the returned BillMeService.Status is null or empty. |

---
## Methods
### `getIsAvailable()` → `Boolean`

Indicates if Bill Me as a payment option is available.

#### Return

**Type**

Boolean

**Description**

Boolean indicating if Bill Me is available based on the BillMeService.Status.

### `getMessage()` → `String`

Message for the Bill Me payment option.

#### Return

**Type**

String

**Description**

String with the message for this payment option based on the BillMeService.Status.

### `getName()` → `String`

Returns the contents of the PayLaterBillMe label.

#### Return

**Type**

String

**Description**

String with the contents of the PayLaterBillMe label.

---
