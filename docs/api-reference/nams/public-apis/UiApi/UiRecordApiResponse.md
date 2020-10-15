## UiRecordApiResponse class

`NamespaceAccessible`

Response class that provides information about records to retrieved for UI display.

---
### Constructors
<!-- panels:start -->
<!-- div:left-panel -->
#### `UiRecordApiResponse()`

`NamespaceAccessible`

Constructs a new UiRecordApiResponse.
<!-- panels:end -->
---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `addError(String errorToAdd)` → `void`

`NamespaceAccessible`

Adds an error to this response.

##### Parameters
|Param|Description|
|-----|-----------|
|`errorToAdd` |  The error to add. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getCount()` → `Integer`

`NamespaceAccessible`

The total number of records returned.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getErrors()` → `List<String>`

`NamespaceAccessible`

Returns all errors in this response.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getFieldSet()` → `Schema.FieldSet`

`NamespaceAccessible`

Represents UI columns, with information about a particular object's fields. Be aware that this value could be null if the request did not include a FieldSet name.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getFields()` → `List<String>`

`NamespaceAccessible`

Returns the list of fields to display from this response.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getRecords()` → `List<SObject>`

`NamespaceAccessible`

The collection of records returned.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getSObjectType()` → `SObjectType`

`NamespaceAccessible`

Gets the SObjectType for which records where requested.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getTotalRecordCount()` → `Integer`

`NamespaceAccessible`

Gets the total record count, which is the number of records that exist for the provided filters regardless of page size.

##### Throws
|Exception|Description|
|---------|-----------|
|`UiApiException` |  if the total record count was not set for this response. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `hasErrors()` → `Boolean`

`NamespaceAccessible`

Returns whether this response has errors or not.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setFieldSet(FieldSet fieldSetToSet)` → `void`

`NamespaceAccessible`

Sets a FieldSet for this response.

##### Parameters
|Param|Description|
|-----|-----------|
|`fieldSetToSet` |  The FieldSet to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setFields(List<String> fields)` → `void`

`NamespaceAccessible`

Sets the queried fields.

##### Parameters
|Param|Description|
|-----|-----------|
|`fields` |  The requested queried fields. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setRecords(List<SObject> records)` → `void`

`NamespaceAccessible`

Sets records for this response.

##### Parameters
|Param|Description|
|-----|-----------|
|`records` |  The records to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setSObjectType(SObjectType objectType)` → `void`

`NamespaceAccessible`

Sets the SObjectType for this response.

##### Parameters
|Param|Description|
|-----|-----------|
|`objectType` |  The SObjectType to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setTotalRecordCount(Integer count)` → `void`

`NamespaceAccessible`

Sets the total record count, which is the number of records that exist for the provided filters regardless of page size.

##### Parameters
|Param|Description|
|-----|-----------|
|`count` |  The total record count to set. |

<!-- panels:end -->
---
