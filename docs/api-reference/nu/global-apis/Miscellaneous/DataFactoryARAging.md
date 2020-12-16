# DataFactoryARAging class

Exposes constants and methods commonly used for creating and inserting AR Aging records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createARAging(String name, Integer days, Id entityId, String message)` → `ARAging__c`

Creates an AR Aging record using the name, days, entity, and message specified.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the AR Aging record |
|`Integer` |  the day used for the AR Aging record to signal a new AR Aging stage |
|`Id` |  the Id of the Entity for which the AR Aging is for |
|`String` |  the message used for the AR Aging record |

#### Return

**Type**

ARAging__c

**Description**

an ARAging__c object

### `insertARAging(String name, Integer days, Id entityId, String message)` → `ARAging__c`

Creates and inserts an AR Aging record using the name, days, entity, and message specified.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the AR Aging record |
|`Integer` |  the day used for the AR Aging record to signal a new AR Aging stage |
|`Id` |  the Id of the Entity for which the AR Aging is for |
|`String` |  the message used for the AR Aging record |

#### Return

**Type**

ARAging__c

**Description**

an ARAging__c object

---
