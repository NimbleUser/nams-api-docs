## FactoryWithPluginTemplate class

`NamespaceAccessible`

Base class for a Factory implementation that supports plugins.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `createFromModel(List<SObject> records)` → `List<IModel>`

`NamespaceAccessible`

Creates a list of [IModel](apis/Core/IModel.md) objects based on the passed in records, making sure that the plugins are called.

##### Parameters
|Param|Description|
|-----|-----------|
|`records` |  The records for which to create model classes. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getModel(SObject record)` → `IModel`

`NamespaceAccessible`

Returns a concrete model object.

##### Parameters
|Param|Description|
|-----|-----------|
|`record` |  The record for which to build to model. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getModelType()` → `Type`

`NamespaceAccessible`

The type of object this factory creates.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `with(Pluggable plugin)` → `FactoryWithPluginTemplate`

`NamespaceAccessible`

Extends the [Chapter](apis/ChaptersApi/Chapter.md) being created based on the passed in Pluggable.

##### Parameters
|Param|Description|
|-----|-----------|
|`plugin` |  Pluggable instance with the extension logic. |

<!-- panels:end -->
---
