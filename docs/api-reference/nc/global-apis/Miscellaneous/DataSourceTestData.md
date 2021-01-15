# DataSourceTestData class

Builder class for dealing with DataSource__c records. Solely used for testing, NOT a data factory. Default Values: Name: CurrentAccount Class__c: NC.DataSource$CurrentAccount Context__c: null

---
## Properties

### `Instance` → `DataSourceTestData`

Gets an instance of DataSourceTestData. @return DataSourceTestData instance.

---
## Methods
### `insertDataSource()` → `DataSource__c`

Inserts a DataSource__c record.

#### Return

**Type**

DataSource__c

**Description**

a DataSource__c object.

### `withClass(String className)` → `DataSourceTestData`

Sets the Class__c field for the current DataSource__c record.

#### Parameters
|Param|Description|
|-----|-----------|
|`className` |  The Class__c to set on the DataSource__c record being created. |

#### Return

**Type**

DataSourceTestData

**Description**

The current DataSourceTestData instance.

### `withContext(String context)` → `DataSourceTestData`

Sets the Context__c field for the current DataSource__c record.

#### Parameters
|Param|Description|
|-----|-----------|
|`className` |  The Context__c to set on the DataSource__c record being created. |

#### Return

**Type**

DataSourceTestData

**Description**

The current DataSourceTestData instance.

### `withName(String name)` → `DataSourceTestData`

Sets the Name field for the current DataSource__c record.

#### Parameters
|Param|Description|
|-----|-----------|
|`name` |  The Name to set on the DataSource__c record being created. |

#### Return

**Type**

DataSourceTestData

**Description**

The current DataSourceTestData instance.

---
