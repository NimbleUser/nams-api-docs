## UiRecordApi class

`NamespaceAccessible`

Provides endpoints to facilitate the display of records through a UI.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `get(UiRecordApiRequest request)` → `UiRecordApiResponse`

`NamespaceAccessible`

Gets record display information based on the passed in request.

##### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The [UiRecordApiRequest](apis/UiApi/UiRecordApiRequest.md) for which to get records for. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `with(Pluggable plugin)` → `UiRecordApi`

`NamespaceAccessible`

Adds a [Pluggable](apis/Core/Pluggable.md) to the list of plugins to execute when generating the [UiRecordApiResponse](apis/UiApi/UiRecordApiResponse.md).

##### Parameters
|Param|Description|
|-----|-----------|
|`plugin` |  The [Pluggable](apis/Core/Pluggable.md) to execute. |

<!-- panels:end -->
---
