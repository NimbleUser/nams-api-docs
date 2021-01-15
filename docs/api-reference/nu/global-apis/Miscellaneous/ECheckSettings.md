# ECheckSettings class

Provides utility settings functionality for the overall eCheck feature.

---
## Methods
### `isECheckEnabled()` → `Boolean`

Determines if the eCheck feature is enabled.

#### Return

**Type**

Boolean

**Description**

True if the eCheck feature is enabled, else false.

### `isECheckEnabledForPayment(Id entityId, Decimal transactionAmount)` → `Boolean`

Determines if the eCheckFeature is enabled for payment purposes.

#### Parameters
|Param|Description|
|-----|-----------|
|`entityId` |  The entity Id that will be used to process a |
|`transactionAmount` |  The amount of the transaction that will be paid through eCheck. |

#### Return

**Type**

Boolean

**Description**

True if eCheck is enabled to pay for the passed in transaction amount, false otherwise.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the arguments are null. |

---
