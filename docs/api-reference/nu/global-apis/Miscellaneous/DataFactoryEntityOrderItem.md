# DataFactoryEntityOrderItem class

Exposes constants and methods commonly used for creating and inserting Entity Order Item records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createEntityOrderItem(Id entityId, Id productCategoryConfigId, Id accountsReceivableId, Id shippingGLAcctId)` → `EntityOrderItem__c`

Creates an Entity Order Item from the specified Entity, Order Item Configuration, AR GL Account, and Shipping GL Account Ids. The Shipping GL Account Id is not required.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |
|`Id` |  the Id of the Order Item Configuration |
|`Id` |  the Id of the AR GL Account |
|`Id` |  the Id of the Shipping GL Account. Optional. |

#### Return

**Type**

EntityOrderItem__c

**Description**

a EntityOrderItem__c object

### `insertSystemEntityOrderItems(Id entityId)` → `List<EntityOrderItem__c>`

Creates and inserts Entity Order Items from the specified Entity Id for all default Order Item Configurations. A default AR GL Account and Shipping GL Account will also be inserted. This method should be used for testing purposes only.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |

#### Return

**Type**

List<EntityOrderItem__c>

**Description**

a List of EntityOrderItem__c object records

---
