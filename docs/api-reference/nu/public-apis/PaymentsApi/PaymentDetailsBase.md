## PaymentDetailsBase class

Represents Payment Details for the payment being made.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `build(SObject record)` → `PaymentDetailsBase`

Builder method to initialize a PaymentDetailsBase with information from an SObject.
##### Parameters
|Param|Description|
|-----|-----------|
|`record` |  The record to use to initialize the instance. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getEntityId()` → `Id`

Returns the Id of the payment method entity.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getMethodId()` → `Id`

Returns the Id of the chosen payment method.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getNote()` → `String`

Returns the note for the payment.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getPaymentData()` → `Object>`

Returns data specific to the payment type.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getType()` → `String`

Returns the Type of Payment Details.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setEntityId(Id entityId)` → `PaymentDetailsBase`

Sets the Id of the payment method entity.
##### Parameters
|Param|Description|
|-----|-----------|
|`entityId` |  The entity Id of the payment method. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setMethodId(Id paymentMethodId)` → `PaymentDetailsBase`

Sets the Id of the payment method.
##### Parameters
|Param|Description|
|-----|-----------|
|`paymentMethodId` |  Payment method Id to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setNote(String note)` → `PaymentDetailsBase`

Sets the note for the payment.
##### Parameters
|Param|Description|
|-----|-----------|
|`note` |  The payment note. |

<!-- panels:end -->
---
