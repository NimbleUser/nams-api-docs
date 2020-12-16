# RefundOptions class

Utilized for determining the various refund options available for an adjustment cart of an existing order.

---
## Methods
### `getIsWebRefundable()` → `Boolean`

Determines if this instance of RefundOptions is web refundable. The criteria for that is as follows: - If there are zero refund options, we return true since that should indicate that the cart does not require a refund. - If it contains 1 option and the payment for that option is web refundable, this option is web refundable.

#### Return

**Type**

Boolean

**Description**

True if this instance of RefundOptions is web refundable, else false.

### `getMessage()` → `String`

A message to display to users depending on the number of refund options. - If zero options, a blank String. - If one option, the message from the first option Payment instance. - If more than one option, a message explaining it cannot be done without staff help.

#### Return

**Type**

String

**Description**

A String message to display to users based upon the conditions of this RefundOptions instance.

### `getRefundOptions()` → `List<RefundOptions.Option>`

Gets the list of RefundOptions.Option for this instance of RefundOptions.

#### Parameters
|Param|Description|
|-----|-----------|
|`refundOptionsRequest` |  An instance of RefundOptions.Request to use when instantiating the RefundOptions. |

#### Return

**Type**

List<RefundOptions.Option>

**Description**

A List<RefundOptions.Option> of refund options for this instance of RefundOptions.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if refundOptionsRequest is null. |

### `hasRefundOptions()` → `Boolean`

Determines if this instance of RefundOptions has refund possibilities.

#### Return

**Type**

Boolean

**Description**

True if this instance of RefundOptions has refund possibilities, else false.

---
## Inner Classes

### RefundOptions.Option class

A class for creating individual refund options based upon payment lines.

---
#### Methods
##### `getTotalRefund()` → `Decimal`

Calculates the total balance of all cart items associated with this option.

###### Parameters
|Param|Description|
|-----|-----------|
|`wrappedPayment` |  The payment line associated with the refund option being constructed. |
|`cartItemsDomain` |  An instance of the CartItems domain class for managing relevant cart items. |

###### Return

**Type**

Decimal

**Description**

The decimal value of the total refund.

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if wrappedPayment or cartItemsDomain are null. |

---
