# DataFactoryCart class

Exposes constants and methods commonly used for creating and inserting Cart records. 		These constants and methods are global to help aid in testing customizations and extensions 		that are created outside of the package.

---
## Methods
### `createCart(Id entityId, Id billToAcctId)` → `Cart__c`

Creates a Cart using the specified Entity and Account Ids.

#### Parameters
|Param|Description|
|-----|-----------|
|`entityId` |  The Entity that the Cart is for. |
|`billToAcctId` |  The Account that the Cart is being billed to. |

#### Return

**Type**

Cart__c

**Description**

A Cart__c object.

### `insertCart(Id entityId, Id billToAcctId)` → `Cart__c`

Creates and inserts a Cart using the specified Entity and Account Ids.

#### Parameters
|Param|Description|
|-----|-----------|
|`entityId` |  The Entity that the Cart is for. |
|`billToAcctId` |  The Account that the Cart is being billed to. |

#### Return

**Type**

Cart__c

**Description**

A Cart__c object.

### `insertCart(Id entityId)` → `Cart__c`

Creates and inserts a Cart using the specified Entity. 		A default Person Account is inserted in which the Cart is billed to.

#### Parameters
|Param|Description|
|-----|-----------|
|`entityId` |  The Entity that the Cart is for. |

#### Return

**Type**

Cart__c

**Description**

A Cart__c object.

### `insertCart()` → `Cart__c`

Creates and inserts a Cart. 		A default entity and Person Account is inserted and used as the Cart's Entity and bill to.

#### Return

**Type**

Cart__c

**Description**

A Cart__c object.

---
