## AccountBase class

`NamespaceAccessible`

Represents an Organization or a Person Account.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `get(Schema.SObjectField field)` → `Object`

`NamespaceAccessible`

Gets value based on an SObjectField.

##### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The field to get the value from. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `get(String fieldName)` → `Object`

`NamespaceAccessible`

Gets value based on an SObjectField name.

##### Parameters
|Param|Description|
|-----|-----------|
|`fieldName` |  The field to get the value from. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getId()` → `String`

`NamespaceAccessible`

Returns the Id of the wrapped record.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getName()` → `String`

`NamespaceAccessible`

Returns the Name of the wrapped record.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getRecord()` → `SObject`

`NamespaceAccessible`

The wrapped SObject that should be saved into the database.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `put(Schema.SObjectField field, Object value)` → `void`

`NamespaceAccessible`

Sets field value based on an SObjectField.

##### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The field to get the value from. |
|`value` |  Value to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `put(String fieldName, Object value)` → `void`

`NamespaceAccessible`

Sets field value based on an SObjectField.

##### Parameters
|Param|Description|
|-----|-----------|
|`fieldName` |  The field to get the value from. |
|`value` |  Value to set. |

<!-- panels:end -->
---
