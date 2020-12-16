# DataFactoryOrder class

Exposes constants and methods commonly used for creating and inserting Order records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createOrder(Id entityId, Id billToAcctId)` → `Order__c`

Creates an Order for the specified Entity and Account Ids. The Transaction Date is set to the current day of the User logged in. The Account specified is the Account in which the Order will be billed.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |
|`Id` |  the Id of the Account |

#### Return

**Type**

Order__c

**Description**

a Order__c object

### `insertOrder(Id entityId, Id billToAcctId)` → `Order__c`

Creates and inserts an Order for the specified Entity and Account Ids. The Transaction Date is set to the current day of the User logged in. The Account specified is the Account in which the Order will be billed.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |
|`Id` |  the Id of the Account |

#### Return

**Type**

Order__c

**Description**

a Order__c object

### `insertOrder()` → `Order__c`

Creates an Order for a default Entity and Person Account. The Transaction Date is set to the current day of the User logged in. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |
|`Id` |  the Id of the Account |

#### Return

**Type**

Order__c

**Description**

a Order__c object

---
