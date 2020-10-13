## AccountsApiV1 class

`NamespaceAccessible`

Version 1 implementation of the [AccountsApi](apis/AccountsApi/AccountsApi.md). Do not call directly, but through AccountsApi.v1.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `accountFactory()` → `AccountsApiAccountFactory`

`NamespaceAccessible`

Gets the configured AccountsApiAccountFactory.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `accountRetriever()` → `AccountsApiAccountRetriever`

`NamespaceAccessible`

Gets the configured AccountsApiAccountRetriever.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `contactFactory()` → `AccountsApiContactFactory`

`NamespaceAccessible`

Gets the configured AccountsApiContactFactory.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `contactRetriever()` → `AccountsApiContactRetriever`

`NamespaceAccessible`

Gets the configured AccountsApiContactRetriever.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setMockRetriever(AccountsApiAccountRetriever mockRetriever)` → `void`

`NamespaceAccessible`

Sets a mock AccountsApiAccountRetriever. Can only be used in test context, throws an exception otherwise.

##### Parameters
|Param|Description|
|-----|-----------|
|`mockRetriever` |  Mock AccountsApiAccountRetriever to set. |

##### Throws
|Exception|Description|
|---------|-----------|
|`AccountsApiException` |  When not used in a test context. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `settings()` → `AccountsApiSettings`

`NamespaceAccessible`

Gets the configured AccountsApiSettings.

<!-- panels:end -->
---
