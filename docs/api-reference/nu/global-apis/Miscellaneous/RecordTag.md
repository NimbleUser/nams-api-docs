# RecordTag class

Wrapper for RecordTag__c.

---
## Constructors
### `RecordTag()`

Global parameterless constructor.
### `RecordTag(RecordTag__c recordTagRecord)`

Global constructor that wraps the passed in record.
#### Parameters
|Param|Description|
|-----|-----------|
|`records` |  Records to wrap. |
|`recordTagRecord` |  RecordTag__c record to wrap. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if records is null. |
|`ArgumentNullException` |  if recordTagRecord is null. |

---
## Properties

### `Name` → `String`

The name of the RecordTag being wrapped.

### `RecordId` → `Id`

The Id of the RecordTag being wrapped.

---
## Methods
### `getSObjectType()` → `Schema.SObjectType`

The SObjectType this wrapper represents.

#### Return

**Type**

Schema.SObjectType

**Description**

RecordTag__c.SObjectType.

---
