# DataFactoryCartItem class

Exposes constants and methods commonly used for creating and inserting Cart Item records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createCartItem(Id cartId, Id customerAcctId)` → `CartItem__c`

Creates a Cart Item for the specified Cart and Account Ids using the default record type. The Account Id specified is the customer, and does not have to be the Account to which the Cart is being billed. The default price class is inserted and used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Cart that the Cart Item is for |
|`Id` |  the Account that the Cart Item is for |

#### Return

**Type**

CartItem__c

**Description**

a CartItem__c object

### `createCartItem(Id cartId, Id customerAcctId, Id recordTypeIdToUse)` → `CartItem__c`

Creates a Cart Item using the specified Cart, Account, and record type Ids. The Account Id specified is the customer, and does not have to be the Account to which the Cart is being billed. The default price class is inserted and used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Cart that the Cart Item is for |
|`Id` |  the Account that the Cart Item is for |
|`Id` |  the record type of the Cart Item |

#### Return

**Type**

CartItem__c

**Description**

a CartItem__c object

### `insertCartItem(Id cartId, Id customerAcctId, Id recordTypeId)` → `CartItem__c`

Creates and inserts a Cart Item using the specified Cart, Account, and record type Ids. The Account Id specified is the customer, and does not have to be the Account to which the Cart is being billed. The default price class is inserted and used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Cart that the Cart Item is for |
|`Id` |  the Account that the Cart Item is for |
|`Id` |  the record type of the Cart Item |

#### Return

**Type**

CartItem__c

**Description**

a CartItem__c object

### `insertCartItem(Id cartId, Id customerAcctId)` → `CartItem__c`

Creates and inserts a Cart Item for the specified Cart and Account Ids using the default record type. The Account Id specified is the customer, and does not have to be the Account to which the Cart is being billed. The default price class is inserted and used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Cart that the Cart Item is for |
|`Id` |  the Account that the Cart Item is for |

#### Return

**Type**

CartItem__c

**Description**

a CartItem__c object

### `insertCartItem(Id customerAcctId)` → `CartItem__c`

Inserts a default Cart. Creates and inserts a Cart Item for the inserted Cart and the specified Account Id using the default record type. The Account Id specified is the customer, and will not be the Account to which the Cart is being billed. The default price class is inserted and used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Account that the Cart Item is for |

#### Return

**Type**

CartItem__c

**Description**

a CartItem__c object

### `insertCartItem()` → `CartItem__c`

Inserts a default Cart and Person Account record. Creates and inserts a Cart Item for the inserted Cart and Person Account using the default record type. The default price class is inserted and used.

#### Return

**Type**

CartItem__c

**Description**

a CartItem__c object

### `insertDonationCartItem(Id cartId, Id customerAcctId)` → `CartItem__c`

Creates and inserts a Cart Item for the specified Cart and Account Ids using the donation record type. The Account Id specified is the customer, and does not have to be the Account to which the Cart is being billed. The default price class is inserted and used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Cart that the Cart Item is for |
|`Id` |  the Account that the Cart Item is for |

#### Return

**Type**

CartItem__c

**Description**

a CartItem__c object

### `insertEventRegistrationCartItem(Id cartId, Id customerAcctId, Id eventId)` → `CartItem__c`

Creates and inserts a Cart Item for the specified Cart, Account, and Event Ids using the registration record type. The Account Id specified is the customer, and does not have to be the Account to which the Cart is being billed. The default price class is inserted and used. In addition, default event questions are inserted and used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Cart that the Cart Item is for |
|`Id` |  the Account that the Cart Item is for |
|`Id` |  the Event that the Cart Item is for |

#### Return

**Type**

CartItem__c

**Description**

a CartItem__c object

### `insertMembershipCartItem(Id cartId, Id customerAcctId)` → `CartItem__c`

Inserts default MembershipType information. Creates and inserts a Cart Item for the specified Cart and Account Ids using the membership record type. The Account Id specified is the customer, and does not have to be the Account to which the Cart is being billed. The default price class is inserted and used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Cart that the Cart Item is for |
|`Id` |  the Account that the Cart Item is for |

#### Return

**Type**

CartItem__c

**Description**

a CartItem__c object

### `insertMembershipCartItem(Id cartId, Id customerAcctId, Id membershipTypeId)` → `CartItem__c`

Creates and inserts a Cart Item for the specified Cart, Account, and MembershipType Ids using the membership record type. The Account Id specified is the customer, and does not have to be the Account to which the Cart is being billed. The default price class is inserted and used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Cart that the Cart Item is for |
|`Id` |  the Account that the Cart Item is for |
|`Id` |  the MembershipType that the Cart Item is for |

#### Return

**Type**

CartItem__c

**Description**

a CartItem__c object

---
