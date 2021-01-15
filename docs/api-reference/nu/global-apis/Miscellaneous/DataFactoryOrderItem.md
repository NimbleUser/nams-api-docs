# DataFactoryOrderItem class

Exposes constants and methods commonly used for creating and inserting Order Item records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createOrderItem(Id customerId, Id priceClassId, Id orderId, Id recordTypeId)` → `OrderItem__c`

Creates an Order Item using the specified Account, Price Class, Order, and Record Type Ids. The Account Id specified is the customer, and does not have to be the Account to which the Order is being billed.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Account that the Order Item is for |
|`Id` |  the Id of the Price Class |
|`Id` |  the Id of the Order that the Order Item is for |
|`Id` |  the Id of the Order Item Record Type |

#### Return

**Type**

OrderItem__c

**Description**

a OrderItem__c object

### `createOrderItem(Id entityId, Id customerId, Id priceClassId, Id orderId, Id recordTypeId)` → `OrderItem__c`

Creates an Order Item using the specified Entity, Account, Price Class, Order, and Record Type Ids. The Account Id specified is the customer, and does not have to be the Account to which the Order is being billed. A default AR GL Account is also inserted and used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |
|`Id` |  the Account that the Order Item is for |
|`Id` |  the Id of the Price Class |
|`Id` |  the Id of the Order that the Order Item is for |
|`Id` |  the Id of the Order Item Record Type |

#### Return

**Type**

OrderItem__c

**Description**

a OrderItem__c object

### `createOrderItem(Id entityId, Id customerId)` → `OrderItem__c`

Creates an Order Item using the specified Entity and Account Ids. The default Record Type is used. A default Order, Price Class, and AR GL Account are also inserted and used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |
|`Id` |  the Account that the Order Item is for |

#### Return

**Type**

OrderItem__c

**Description**

a OrderItem__c object

### `createOrderItem(Id entityId, Id customerId, Id recordTypeId)` → `OrderItem__c`

Creates an Order Item using the specified Entity, Account, and Record Type Ids. A default Order, Price Class, and AR GL Account are also inserted and used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |
|`Id` |  the Account that the Order Item is for |
|`Id` |  the Id of the Order Item Record Type |

#### Return

**Type**

OrderItem__c

**Description**

a OrderItem__c object

### `insertMembershipOrderItem(Id entityId, Id customerId)` → `OrderItem__c`

Creates and inserts a membership Order Item using the specified Entity and Account Id. A default Order, Price Class, and AR GL Account are also inserted and used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |
|`Id` |  the Account that the Order Item is for |

#### Return

**Type**

OrderItem__c

**Description**

a OrderItem__c object

### `insertOrderItem(Id entityId, Id customerId, Id recordTypeId)` → `OrderItem__c`

Creates and inserts an Order Item using the specified Entity, Account, and Record Type Ids. A default Order, Price Class, and AR GL Account are also inserted and used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |
|`Id` |  the Account that the Order Item is for |
|`Id` |  the Id of the Order Item Record Type |

#### Return

**Type**

OrderItem__c

**Description**

a OrderItem__c object

### `insertOrderItem(Id entityId, Id customerId)` → `OrderItem__c`

Creates and inserts an Order Item using the specified Entity and Account Ids. The default Record Type is used. A default Order, Price Class, and AR GL Account are also inserted and used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |
|`Id` |  the Account that the Order Item is for |

#### Return

**Type**

OrderItem__c

**Description**

a OrderItem__c object

### `insertOrderItem(Id entityId, Id customerId, Id priceClassId, Id orderId, Id recordTypeId)` → `OrderItem__c`

Creates and inserts an Order Item using the specified Entity, Account, Price Class, Order, and Record Type Ids. The Account Id specified is the customer, and does not have to be the Account to which the Order is being billed. A default AR GL Account is also inserted and used.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |
|`Id` |  the Account that the Order Item is for |
|`Id` |  the Id of the Price Class |
|`Id` |  the Id of the Order that the Order Item is for |
|`Id` |  the Id of the Order Item Record Type |

#### Return

**Type**

OrderItem__c

**Description**

a OrderItem__c object

### `insertOrderItem()` → `OrderItem__c`

Creates and inserts an Order Item using a default Entity and Individual Account. The default Record Type is used. A default Order, Price Class, and AR GL Account are also inserted and used. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations. This method should be used for testing purposes only.

#### Return

**Type**

OrderItem__c

**Description**

a OrderItem__c object

---
