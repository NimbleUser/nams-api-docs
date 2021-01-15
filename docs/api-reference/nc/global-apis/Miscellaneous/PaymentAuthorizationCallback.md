# PaymentAuthorizationCallback class

Implementation of ICallback that sets IsValid to false whenever the callback result is not successful. Used to store Payments for a Payment Authorization.

---
## Constructors
### `PaymentAuthorizationCallback()`

Constructs a PaymentAuthorizationCallback that defaults to being valid and has no payment.
---
## Properties

### `ErrorMessage` → `String`

Stores the error message, if any, for an unsuccessful authorization.

### `HasPayment` → `Boolean`

Defines if there is a Payment associated with the authorization. An authorization could be successful and not be attached to a Payment (e.g. Bill Me).

### `IsValid` → `Boolean`

Defines wether or not the payment authorization was successful.

### `Payment` → `znu.`

The Payment associated with the authorization.

---
