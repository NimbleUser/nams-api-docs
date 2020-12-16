# Payment class

A base class utilized for wrapping Payment__c records generically.

---
## Properties

### `Amount` → `Decimal`

The amount associated with this payment.

### `BatchId` → `Id`

The batch to place generated transactions in for this payment.

### `EntityId` → `Id`

The entity, related to the entity payment method associated with this payment.

### `EntityPaymentMethodId` → `Id`

The entity payment method Id associated with this payment.

### `GLAccountId` → `Id`

The credit GL Account associated with this payment.

### `IsExpressPayment` → `Boolean`

Denotes if this statement was made via Express functionality in order to stamp it on the eventual Payment__c.ExpressPayment__c field.

### `Note` → `String`

The note associated with this payment.

### `PayerId` → `Id`

The payer Id associated with this payment.

### `PaymentDate` → `Date`

The payment date associated with this payment.

### `RecordId` → `Id`

Accessor for the Id of the wrapped record.

### `Source` → `String`

The source associated with this payment.

---
## Methods
### `addValueToField(Schema.SObjectField field, Object value)` → `void`

Assign a value to an Schema.SObjectField to assign it to the SObject this wrapper represents before it is built.

#### Parameters
|Param|Description|
|-----|-----------|
|`field` |  Schema.SObjectField to assign the value to. |
|`value` |  The value that will be assigned to the field. |

---
