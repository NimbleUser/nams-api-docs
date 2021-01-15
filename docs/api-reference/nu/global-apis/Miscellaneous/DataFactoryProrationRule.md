# DataFactoryProrationRule class

Exposes constants and methods commonly used for creating and inserting Proration Rule records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Properties

### `DEFAULT_PRORATION_RULE_NAME` → `string`

---
## Methods
### `createProrationRule()` → `ProrationRule__c`

Creates a Proration Rule using a default name.

#### Return

**Type**

ProrationRule__c

**Description**

a ProrationRule__c object

### `createProrationRule(String prorationRuleName)` → `ProrationRule__c`

Creates a Proration Rule using the specified name.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the Proration Rule |

#### Return

**Type**

ProrationRule__c

**Description**

a ProrationRule__c object

### `insertProrationRule()` → `ProrationRule__c`

Creates and inserts a Proration Rule using a default name.

#### Return

**Type**

ProrationRule__c

**Description**

a ProrationRule__c object

### `insertProrationRule(String prorationRuleName)` → `ProrationRule__c`

Creates and inserts a Proration Rule using the specified name.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the Proration Rule |

#### Return

**Type**

ProrationRule__c

**Description**

a ProrationRule__c object

---
