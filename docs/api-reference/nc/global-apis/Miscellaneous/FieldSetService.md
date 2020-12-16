# FieldSetService class

service for getting fields in a particular field set

---
## Properties

### `Instance` → `FieldSetService`

Gets an instance of FieldSetService. @return FieldSetService instance.

---
## Methods
### `getFieldValue(SObject record, String fieldPath)` → `Object`

Recursively digs through the specified record / path to retrieve the ultimate field value.

#### Parameters
|Param|Description|
|-----|-----------|
|`record` |  The record to traverse through to get data. |
|`fieldPath` |  A path to traverse through e.g. lookup paths etc. |

#### Return

**Type**

Object

**Description**

The value of the field specified on the record specified.

#### Throws
|Exception|Description|
|---------|-----------|
|`NUArgumentNullException` |  if either argument is null. |

### `readFieldSetMembers(String fieldSetName, List<SObject> sObjectRecords)` → `List<Schema.FieldSetMember>>`

Reads the fieldset being displayed in this component for each SObject.

#### Parameters
|Param|Description|
|-----|-----------|
|`fieldSetName` |  name of the field set to read. |
|`records` |  The list of SObjects this fieldset relates to. |

#### Return

**Type**

List<Schema.FieldSetMember>>

**Description**

Map<Id, List<Schema.FieldSetMember>> A map of SObject Id's to their fields in the FieldSet.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any argument is null. |

---
