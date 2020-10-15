## CashPaymentDetails class

Cash payment details.

---
### Properties

#### `PAYMENT_TYPE` → `String`

Constant for getting the Cash payment type.

#### `entityId` → `Id`

The entity Id from the lightning component.

#### `methodId` → `Id`

The selected payment method Id from the lightning component.

#### `note` → `String`

The note from the lightning component.

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

Returns the Id of the payer account.
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
#### `newInstance()` → `CashPaymentDetails`

Creates a new instance of CashPaymentDetails.
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
