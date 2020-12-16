# DataFactoryCommittee class

Exposes constants and methods commonly used for creating and inserting Committee records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createCommittee()` → `Committee__c`

Creates a Committee using a default name.

#### Return

**Type**

Committee__c

**Description**

a Committee__c object

### `createCommittee(String committeeName)` → `Committee__c`

Creates a Committee using the specified name.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the Committee |

#### Return

**Type**

Committee__c

**Description**

a Committee__c object

### `insertCommittee()` → `Committee__c`

Creates and inserts a Committee using a default name.

#### Return

**Type**

Committee__c

**Description**

a Committee__c object

### `insertCommittee(String committeeName)` → `Committee__c`

Creates and inserts a Committee using the specified name.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the Committee |

#### Return

**Type**

Committee__c

**Description**

a Committee__c object

---
