# DataFactoryPaymentMethod class

Exposes constants and methods commonly used for creating and inserting Payment Method records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createCashPaymentMethod()` → `PaymentMethod__c`

Creates the default Cash Payment Method.

#### Return

**Type**

PaymentMethod__c

**Description**

a PaymentMethod__c object

### `createCheckPaymentMethod()` → `PaymentMethod__c`

Creates the default Check Payment Method.

#### Return

**Type**

PaymentMethod__c

**Description**

a PaymentMethod__c object

### `createCreditCardPaymentMethod()` → `PaymentMethod__c`

Creates the default Credit Card Payment Method.

#### Return

**Type**

PaymentMethod__c

**Description**

a PaymentMethod__c object

### `createCreditPaymentMethod()` → `PaymentMethod__c`
### `createPaymentMethod(String name, Id recordTypeId, Boolean isPayment)` → `PaymentMethod__c`

Creates a Payment Method of the specified Record Type Id and name. If it is not marked as a payment, Payment Lines will not be created when payments are made using this method.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the Payment Method |
|`Id` |  the Id of the Payment Method Record Type |
|`Boolean` |  if true, Payment Lines will be created when payments are made |

#### Return

**Type**

PaymentMethod__c

**Description**

a PaymentMethod__c object

### `createTransferPaymentMethod()` → `PaymentMethod__c`

Creates the default Transfer Payment Method.

#### Return

**Type**

PaymentMethod__c

**Description**

a PaymentMethod__c object

### `insertSystemPaymentMethods()` → `List<PaymentMethod__c>`

Creates and inserts the default Cash, Check, and Credit Card Payment Methods.

#### Return

**Type**

List<PaymentMethod__c>

**Description**

a List of PaymentMethod__c object records

---
