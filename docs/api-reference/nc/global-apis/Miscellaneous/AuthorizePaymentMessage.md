# AuthorizePaymentMessage class

Message that gets broadcast with a fully built znu.Order as a parameter. Cards listening to this message sould utilize the znu.Order to handle payments based on the order's balance.

---
## Constructors
### `AuthorizePaymentMessage(znu.Order orderParam, PaymentAuthorizationCallback callback)`

Constructs a AuthorizePaymentMessage with a znu.Order as a parameter.
#### Parameters
|Param|Description|
|-----|-----------|
|`orderParam` |  znu.Order. |
|`callback` |  PaymentAuthorizationCallback instance that will hold the information regarding |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any parameter is null. |

### `AuthorizePaymentMessage(PaymentAuthorizationCallback callback)`

Constructs a AuthorizePaymentMessage with no parameter. Assumes that the card receiving this message and presumably authorizing the payment has access to the Order directly via a data source.
#### Parameters
|Param|Description|
|-----|-----------|
|`callback` |  PaymentAuthorizationCallback instance that will hold the information regarding |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any parameter is null. |

---
## Methods
### `getParameter()` → `znu.Order`

Returns the znu.Order.

#### Return

**Type**

znu.Order

**Description**

The znu.Order in this message.

### `getType()` → `Type`

Returns the Type of this message.

#### Return

**Type**

Type

**Description**

AuthorizePaymentMessage class type.

---
