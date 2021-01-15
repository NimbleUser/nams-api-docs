# DataFactoryEntityPaymentMethod class

Exposes constants and methods commonly used for creating and inserting Entity Payment Method records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createEntityPaymentMethod(Id entityId, Id paymentMethodId)` → `EntityPaymentMethod__c`

Creates an Entity Payment Method from the specified the Entity and Payment Method Ids.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |
|`Id` |  the Id of the Payment Method |

#### Return

**Type**

EntityPaymentMethod__c

**Description**

a EntityPaymentMethod__c object

### `insertSystemEntityPaymentMethods(Id entityId)` → `List<EntityPaymentMethod__c>`

Creates and inserts Entity Payment Methods from the specified Entity Id for all default Payment Methods. A default Bank Account and Bank GL Account will also be inserted. This method should be used for testing purposes only.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |

#### Return

**Type**

List<EntityPaymentMethod__c>

**Description**

a List of EntityPaymentMethod__c object records

---
