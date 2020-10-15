## UiApiV1 class

`NamespaceAccessible`

Version 1 implementation of the [UiApi](apis/UiApi/UiApi.md). Do not call directly, but through UiApi.v1.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `record()` → `UiRecordApi`

`NamespaceAccessible`

Gets the configured [UiRecordApi](apis/UiApi/UiRecordApi.md).

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setMockRecordApi(UiRecordApi mockRecordApi)` → `void`

`NamespaceAccessible`

Sets a mock UiRecordApi. Can only be used in test context, throws an exception otherwise.

##### Parameters
|Param|Description|
|-----|-----------|
|`mockRecordApi` |  Mock UiRecordApi to set. |

##### Throws
|Exception|Description|
|---------|-----------|
|`UiApiException` |  When not used in a test context. |

<!-- panels:end -->
---
