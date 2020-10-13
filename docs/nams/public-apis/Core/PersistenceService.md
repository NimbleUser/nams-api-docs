## PersistenceService class

`NamespaceAccessible`

Singleton service that deals with saving API Model data into the database.

---
### Constructors
<!-- panels:start -->
<!-- div:left-panel -->
#### `PersistenceService()`

`NamespaceAccessible`

Protected constructor for mocking.
<!-- panels:end -->
---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `commitWork()` → `void`

`NamespaceAccessible`

Commits all of the registered objects into the database.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getMetadataInstance()` → `MetadataPersistenceService`

`NamespaceAccessible`

Gets an instance of PersistenceService for saving Custom Metadata.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getSObjectInstance()` → `SObjectPersistenceService`

`NamespaceAccessible`

Gets an instance of PersistenceService for saving SObjects.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `register(IPersistenceSupport model)` → `void`

`NamespaceAccessible`

Registers an IPersistenceSupport to be saved to the database.

##### Parameters
|Param|Description|
|-----|-----------|
|`model` |  The IPersistenceSupport to register for database saving. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `register(List<IPersistenceSupport> models)` → `void`

`NamespaceAccessible`

Registers a IPersistenceSupport objects to be saved to the database.

##### Parameters
|Param|Description|
|-----|-----------|
|`models` |  The IPersistenceSupport objects to register for database saving. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `registerBulkHandler(SObjectType sObjectType, BulkPersistenceMessageHandler handler)` → `void`

`NamespaceAccessible`

Registers a BulkPersistenceMessageHandler instance for a given SObjectType. The BulkPersistenceMessageHandler will be notified of DML operations about to occur and will be passed all objects that will be committed to the database of the given SObjectType.

##### Parameters
|Param|Description|
|-----|-----------|
|`sObjectType` |  The SObjectType to be notified by before DML occurs. |
|`handler` |  The BulkPersistenceMessageHandler instance that will handle the message. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `registerDeleted(IPersistenceSupport model)` → `void`

`NamespaceAccessible`

Registers an IPersistenceSupport object for deletion when commitWork is called.

##### Parameters
|Param|Description|
|-----|-----------|
|`model` |  The object to register for deletion. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `registerModelDefinition(SObjectType sObjectType, Type definitionType)` → `void`

`NamespaceAccessible`

Registers a PersistenceDefinitionBase implementation class that contains the logic to use when register of a particular SObjectType.

##### Parameters
|Param|Description|
|-----|-----------|
|`sObjectType` |  The SObjectType that the type model definition being registered represents in the database. |
|`definitionType` |  The Type of a PersistenceDefinitionBase implementation. |

<!-- panels:end -->
---
