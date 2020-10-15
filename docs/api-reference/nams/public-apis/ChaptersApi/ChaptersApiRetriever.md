## ChaptersApiRetriever class

`NamespaceAccessible`

Responsible for retrieving [Chapter](apis/ChaptersApi/Chapter.md) instances.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `get()` → `List<Chapter>`

`NamespaceAccessible`

Returns the retrieved [Chapter](apis/ChaptersApi/Chapter.md) objects.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getById(Set<Id> recordIds)` → `List<Chapter>`

`NamespaceAccessible`

Returns [Chapter](apis/ChaptersApi/Chapter.md) objects by the record Ids for the chapter records.

##### Parameters
|Param|Description|
|-----|-----------|
|`recordIds` |  The record Ids for which to return [Chapter](apis/ChaptersApi/Chapter.md) objects. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getPlugins()` → `List<Pluggable>`

`NamespaceAccessible`

Gets the plugins associated with this retriever instance.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `with(Pluggable plugin)` → `ChaptersApiRetriever`

`NamespaceAccessible`

Extends the [Chapter](apis/ChaptersApi/Chapter.md) being retrieved based on the passed in [Pluggable](apis/Core/Pluggable.md).

##### Parameters
|Param|Description|
|-----|-----------|
|`plugin` |  [Pluggable](apis/Core/Pluggable.md) instance with the extension logic. |

<!-- panels:end -->
---
