## ChaptersApiV1 class

`NamespaceAccessible`

Version 1 implementation of the ChaptersApi. Do not call directly, but through ChaptersApi.v1.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `factory()` → `ChaptersApiFactory`

`NamespaceAccessible`

Gets the configured [ChaptersApiFactory](apis/ChaptersApi/ChaptersApiFactory.md).

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `retriever()` → `ChaptersApiRetriever`

`NamespaceAccessible`

Gets the configured [ChaptersApiRetriever](apis/ChaptersApi/ChaptersApiRetriever.md).

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `service()` → `ChaptersApiService`

`NamespaceAccessible`

Gets the configured [ChaptersApiService](apis/ChaptersApi/ChaptersApiService.md).

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setMockRetriever(ChaptersApiRetriever mockRetriever)` → `void`

`NamespaceAccessible`

Sets a mock ChaptersApiRetriever. Can only be used in test context, throws an exception otherwise.

##### Parameters
|Param|Description|
|-----|-----------|
|`mockRetriever` |  Mock ChaptersApiRetriever to set. |

##### Throws
|Exception|Description|
|---------|-----------|
|`ChaptersApiException` |  When not used in a test context. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setMockService(ChaptersApiService mockService)` → `void`

`NamespaceAccessible`

Sets a mock ChaptersApiService. Can only be used in test context, throws an exception otherwise.

##### Parameters
|Param|Description|
|-----|-----------|
|`mockService` |  Mock ChaptersApiService to set. |

##### Throws
|Exception|Description|
|---------|-----------|
|`ChaptersApiException` |  When not used in a test context. |

<!-- panels:end -->
---
