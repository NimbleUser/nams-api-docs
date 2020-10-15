## Pluggable class

`NamespaceAccessible`

Base class for API plugins to extend from.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `onAfterCreate(List<Object> generatedWrappers)` → `void`

`NamespaceAccessible`

Called by a factory after its base objects are built.

##### Parameters
|Param|Description|
|-----|-----------|
|`generatedWrappers` |  The resulting wrapped base objects. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `onBeforeCreate(List<Object> queriedRecords)` → `void`

`NamespaceAccessible`

Called by a factory before its base objects are built. Use this method to query additional data that can be used in the `onCreate` method.

##### Parameters
|Param|Description|
|-----|-----------|
|`queriedRecords` |  The records that were queried to query for more data. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `onCreate(Object originalRecord, Object generatedWrapper)` → `void`

`NamespaceAccessible`

Called by a factory when its base objects are being built. Use this method to modify the base object that will result from the factory call.

##### Parameters
|Param|Description|
|-----|-----------|
|`originalRecord` |  The source Object from which a wrapper was generated. |
|`generatedWrapper` |  The resulting wrapped base object. |

<!-- panels:end -->
---
