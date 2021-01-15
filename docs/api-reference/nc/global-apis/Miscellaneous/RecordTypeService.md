# RecordTypeService class

This service class is used get record type information.

---
## Properties

### `Instance` → `RecordTypeService`

An instance of RecordTypeService.

---
## Methods
### `getRecordTypeInfosById(Schema.SObjectType sObjectType, List<String> recordTypeNames)` → `Schema.RecordTypeInfo>`

Gets all Record Type Infos besides the Master record type for a given SObjectType that have the specified names.

#### Parameters
|Param|Description|
|-----|-----------|
|`sObjectType` |  The Schema.SObjectType to get record types for. |
|`recordTypeNames` |  The names of the Record Types to retrieve. |

#### Return

**Type**

Schema.RecordTypeInfo>

**Description**

A map of Schema.RecordTypeInfo by Id.

### `getRecordTypes(Schema.SObjectType sObjectType)` → `List<RecordTypeService.RecordType>`

Gets all Record Types besides the Master record type for the specified SObject Type.

#### Parameters
|Param|Description|
|-----|-----------|
|`sObjectType` |  The Schema.SObjectType to get record types for. |

#### Return

**Type**

List<RecordTypeService.RecordType>

**Description**

A list of RecordTypeService.RecordType.

### `isFilteringAllowed(Schema.SObjectType sObjectType)` → `Boolean`

Determines whether or not a given SObjectType should allow filtering by record types.

#### Parameters
|Param|Description|
|-----|-----------|
|`sObjectType` |  The Schema.SObjectType to check. |

#### Return

**Type**

Boolean

**Description**

True if the SObjectType has at least two record types besides the Master record type.

---
## Inner Classes

### RecordTypeService.RecordType class

A wrapper class for Schema.RecordTypeInfo that Community Hub pages can use for displaying record type choices. Necessary because Schema.RecordTypeInfo can not be serialized.

---
#### Constructors
##### `RecordType(Schema.RecordTypeInfo recordTypeInfo)`

Class constructor.
---
#### Properties

##### `Description` → `String`

Description of a record type.

##### `IsAvailable` → `Boolean`

Availability of the record type for the current user.

##### `Name` → `String`

Name of a record type.

##### `RecordTypeId` → `Id`

Id of a record type.

---
### RecordTypeService.TypeNotFoundException class

Exception thrown when a specified record type can not be found.

---
