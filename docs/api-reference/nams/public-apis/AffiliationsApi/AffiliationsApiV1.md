## AffiliationsApiV1 class

`NamespaceAccessible`

Version 1 implementation of the [AffiliationsApi](apis/AffiliationsApi/AffiliationsApi.md). Do not call directly, but through AffiliationsApi.v1.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `factory()` → `AffiliationsApiFactory`

`NamespaceAccessible`

Gets the configured [AffiliationsApiFactory](apis/AffiliationsApi/AffiliationsApiFactory.md).

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `persistenceService()` → `AffiliationsApiPersistenceService`

`NamespaceAccessible`

Gets the configured [AffiliationsApiPersistenceService](apis/AffiliationsApi/AffiliationsApiPersistenceService.md).

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `retriever()` → `AffiliationsApiRetriever`

`NamespaceAccessible`

Gets the configured [AffiliationsApiRetriever](apis/AffiliationsApi/AffiliationsApiRetriever.md).

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `service()` → `AffiliationsApiService`

`NamespaceAccessible`

Gets the configured [AffiliationsApiService](apis/AffiliationsApi/AffiliationsApiService.md).

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setMockPersistenceService(AffiliationsApiPersistenceService mockPersistenceService)` → `void`

`NamespaceAccessible`

Sets a mock [AffiliationsApiPersistenceService](apis/AffiliationsApi/AffiliationsApiPersistenceService.md). Can only be used in test context, throws an exception otherwise.

##### Parameters
|Param|Description|
|-----|-----------|
|`mockPersistenceService` |  Mock [AffiliationsApiPersistenceService](apis/AffiliationsApi/AffiliationsApiPersistenceService.md) to set. |

##### Throws
|Exception|Description|
|---------|-----------|
|`AffiliationsApiException` |  When not used in a test context. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setMockRetriever(AffiliationsApiRetriever mockRetriever)` → `void`

`NamespaceAccessible`

Sets a mock [AffiliationsApiRetriever](apis/AffiliationsApi/AffiliationsApiRetriever.md). Can only be used in test context, throws an exception otherwise.

##### Parameters
|Param|Description|
|-----|-----------|
|`mockRetriever` |  Mock [AffiliationsApiRetriever](apis/AffiliationsApi/AffiliationsApiRetriever.md) to set. |

##### Throws
|Exception|Description|
|---------|-----------|
|`AffiliationsApiException` |  When not used in a test context. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setMockService(AffiliationsApiService mockService)` → `void`

`NamespaceAccessible`

Sets a mock [AffiliationsApiService](apis/AffiliationsApi/AffiliationsApiService.md). Can only be used in test context, throws an exception otherwise.

##### Parameters
|Param|Description|
|-----|-----------|
|`mockService` |  Mock [AffiliationsApiService](apis/AffiliationsApi/AffiliationsApiService.md) to set. |

##### Throws
|Exception|Description|
|---------|-----------|
|`AffiliationsApiException` |  When not used in a test context. |

<!-- panels:end -->
---
