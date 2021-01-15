# DataFactoryEntity class

Exposes constants and methods commonly used for creating and inserting Entity records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Properties

### `ACME_ENTITY_NAME` → `String`

### `BEDROCK_ENTITY_NAME` → `String`

### `DEFAULT_ENTITY_NAME` → `String`

### `ENTITY_NAME_REQUIRED` → `String`

---
## Methods
### `createEntity(String entityName, Id batchExportConfigurationId)` → `Entity__c`

Creates an Entity using the specified name and Batch Export Configuration Id.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name to give the Entity |
|`Id` |  the Id of the Batch Export Configuration to use for the Entity |

#### Return

**Type**

Entity__c

**Description**

a Entity__c object

### `createEntity(String entityName)` → `Entity__c`

Creates an Entity using the specified name.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name to give the Entity |

#### Return

**Type**

Entity__c

**Description**

a Entity__c object

### `createEntity()` → `Entity__c`

Creates an Entity using a default name.

#### Return

**Type**

Entity__c

**Description**

a Entity__c object

### `insertEntity()` → `Entity__c`

Creates and inserts an Entity using a default name. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations.

#### Return

**Type**

Entity__c

**Description**

a Entity__c object

### `insertEntity(String entityName, Id batchExportConfigurationId)` → `Entity__c`

Creates and inserts an Entity using the specified name and Batch Export Configuration Id.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name to give the Entity |
|`Id` |  the Id of the Batch Export Configuration to use for the Entity |

#### Return

**Type**

Entity__c

**Description**

a Entity__c object

### `insertEntity(String entityName)` → `Entity__c`

Creates and inserts an Entity using the name specified. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name to give the Entity |

#### Return

**Type**

Entity__c

**Description**

a Entity__c object

### `insertEntityWithGreatPlainsBatchExportConfig()` → `Entity__c`

Creates and inserts an Entity using a default name and the defined Great Plain Batch Export Configuration.

#### Return

**Type**

Entity__c

**Description**

a Entity__c object

---
