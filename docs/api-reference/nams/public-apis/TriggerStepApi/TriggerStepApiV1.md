## TriggerStepApiV1 class

`NamespaceAccessible`

Version 1 implementation of the [TriggerStepApi](apis/TriggerStepApi/TriggerStepApi.md). Do not call directly, but through TriggerStepApi.v1.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `factory()` → `TriggerStepApiFactory`

`NamespaceAccessible`

Gets the configured TriggerStepApiFactory.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `retriever()` → `TriggerStepApiRetriever`

`NamespaceAccessible`

Gets the configured TriggerStepApiRetriever.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setMockRetriever(TriggerStepApiRetriever testRetriever)` → `void`

`NamespaceAccessible`

Sets a mock TriggerStepApiRetriever. Can only be used in test context, throws an exception otherwise.

##### Parameters
|Param|Description|
|-----|-----------|
|`testRetriever` |  Mock TriggerStepApiRetriever to set. |

##### Throws
|Exception|Description|
|---------|-----------|
|`TriggerStepApiException` |  When not used in a test context. |

<!-- panels:end -->
---
