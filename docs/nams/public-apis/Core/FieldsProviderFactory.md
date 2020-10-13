## FieldsProviderFactory class

`NamespaceAccessible`

Factory class to retrieve IFieldsProvider implementations for different SObjectTypes.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `newInstance(SObjectType objectType)` → `FieldsProviderBase`

`NamespaceAccessible`

Gets the IFieldsProvider implementation for the passed in SObjectType.

##### Parameters
|Param|Description|
|-----|-----------|
|`objectType` |  The SObjectType to get the IFieldsProvider for. |

##### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if objectType is null. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `registerFieldsForSObjectType(SObjectType objectType, Set<String> extraFields)` → `void`

`NamespaceAccessible`

Registers extra fields for an SObjectType.

##### Parameters
|Param|Description|
|-----|-----------|
|`objectType` |  The SObjectType to register fields for. |
|`extraFields` |  The fields to register. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `registerProviderForSObjectType(SObjectType objectType, Type providerType)` → `void`

`NamespaceAccessible`

Registers an IFieldsProvider implementation for a specific SObjectType.

##### Parameters
|Param|Description|
|-----|-----------|
|`objectType` |  The SObjectType for which to register the fields provider. |
|`providerType` |  The class type for an IFieldsProvider implementation. |

<!-- panels:end -->
---
