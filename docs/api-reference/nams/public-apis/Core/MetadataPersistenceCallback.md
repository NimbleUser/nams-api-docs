## MetadataPersistenceCallback class

`NamespaceAccessible`

Callback class for async interactions with the persistence service.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `getJobId()` → `Id`

`NamespaceAccessible`

Gets the async job Id.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `handleResult(Metadata.DeployResult result, Metadata.DeployCallbackContext context)` → `void`

`NamespaceAccessible`

Called once the async job has finished processing the request.

##### Parameters
|Param|Description|
|-----|-----------|
|`result` |  Holds the result of the operation. |
|`context` |  Holds contextual information for the operation. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setJobId(Id jobId)` → `void`

`NamespaceAccessible`

Sets the async job Id.

##### Parameters
|Param|Description|
|-----|-----------|
|`jobId` |  The job Id to set. |

<!-- panels:end -->
---
