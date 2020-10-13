## MetadataPersistenceService class

`NamespaceAccessible`

[PersistenceService](apis/Core/PersistenceService.md) implementation that deals with persisting custom metadata records.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `get()` → `MetadataPersistenceService`

`NamespaceAccessible`

Creates an instance of SObjectPersistenceService.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setCallback(MetadataPersistenceCallback callback)` → `void`

`NamespaceAccessible`

Sets the [MetadataPersistenceCallback](apis/Core/MetadataPersistenceCallback.md) implementation for this service. The callback will have the job Id of the async process once `commitWork` has been called and the handler method will be executed after the async process has been executed.

##### Parameters
|Param|Description|
|-----|-----------|
|`callback` |  The callback for this service. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setMockService(MetadataPersistenceService mockService)` → `void`

`NamespaceAccessible`

Sets a mock MetadataPersistenceService instance to be used during unit testing.

##### Parameters
|Param|Description|
|-----|-----------|
|`mockService` |  The mock instance to set. |

<!-- panels:end -->
---
