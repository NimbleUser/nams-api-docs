# DataFactoryCartPaymentLine class

Exposes constants and methods commonly used for creating and inserting Cart Payment Line records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createPaymentLine(Id cartItemId, Decimal paymentAmt)` → `CartPaymentLine__c`

Creates a Cart Payment Line using the specified Cart Item Id.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Cart Item |
|`Decimal` |  the payment amount |

#### Return

**Type**

CartPaymentLine__c

**Description**

a CartPaymentLine__c object

### `createPaymentLine(Id cartPaymentId, Id cartItemId, Decimal paymentAmt)` → `CartPaymentLine__c`

Creates a Cart Payment Line using the specified Cart Payment and Cart Item Ids.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Cart Payment |
|`Id` |  the Id of the Cart Item |
|`Decimal` |  the payment amount |

#### Return

**Type**

CartPaymentLine__c

**Description**

a CartPaymentLine__c object

### `insertFullPaymentCartPaymentLines(List<CartItem__c> cartItemsToPay)` → `List<CartPaymentLine__c>`

Creates Cart Payment Lines for the specified Cart Items using the Cash payment method, paying off balances in full.

#### Parameters
|Param|Description|
|-----|-----------|
|`List<CartItem__c>` |  the List of Cart Items to be paid |

#### Return

**Type**

List<CartPaymentLine__c>

**Description**

a List of CartPaymentLine__c object records

### `insertPaymentLine(Id cartPaymentId, Id cartItemId, Decimal paymentAmt)` → `CartPaymentLine__c`

Creates and inserts a Cart Payment Line using the specified Cart Payment and Cart Item Ids.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Cart Payment |
|`Id` |  the Id of the Cart Item |
|`Decimal` |  the payment amount |

#### Return

**Type**

CartPaymentLine__c

**Description**

a CartPaymentLine__c object

---
