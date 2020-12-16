# DataFactoryEntityCrossover class

Exposes methods commonly used for creating and inserting Entity Crossover records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createEntityCrossover(Id primaryEntityId, Id secondaryEntityId, Id dueToGLAccountId, Id dueFromGLAccountId)` → `EntityCrossover__c`

Creates an Entity Crossover using the specified primary, secondary entity Ids and due-to, due-from GL accounts.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the primary Entity |
|`Id` |  the secondary Entity |
|`Id` |  the due-to GL Account |
|`Id` |  the due-from GL Account |

#### Return

**Type**

EntityCrossover__c

**Description**

a EntityCrossover__c object

### `insertEntityCrossover(Id primaryEntityId, Id secondaryEntityId, Id dueToGLAccountId, Id dueFromGLAccountId)` → `EntityCrossover__c`

Creates and inserts an Entity Crossover using the specified primary, secondary entity Ids and due-to, due-from GL accounts.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the primary Entity |
|`Id` |  the secondary Entity |
|`Id` |  the due-to GL Account |
|`Id` |  the due-from GL Account |

#### Return

**Type**

EntityCrossover__c

**Description**

a EntityCrossover__c object

### `insertEntityCrossover(Id primaryEntityId, Id secondaryEntityId)` → `EntityCrossover__c`

Creates and inserts an Entity Crossover using the specified primary, secondary entity Ids. To be used ONLY for unit tests.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the primary Entity |
|`Id` |  the secondary Entity |

#### Return

**Type**

EntityCrossover__c

**Description**

a EntityCrossover__c object

---
