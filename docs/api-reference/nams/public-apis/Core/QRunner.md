## QRunner class

`NamespaceAccessible`

Used for executing Q queries.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `countRun(Q query)` → `Integer`

`NamespaceAccessible`

Builds a Q query for COUNT purposes and then runs it.

##### Parameters
|Param|Description|
|-----|-----------|
|`query` |  The Q query to build and run. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `newInstance()` → `QRunner`

`NamespaceAccessible`

Creates a new instance of QRunner.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `run(Q query)` → `List<SObject>`

`NamespaceAccessible`

Builds a Q query and then runs it.

##### Parameters
|Param|Description|
|-----|-----------|
|`query` |  The Q query to build and run. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setMock(QRunner runnerToSet)` → `void`

`NamespaceAccessible`

Sets a mock instance of QRunner for testing purposes.

##### Parameters
|Param|Description|
|-----|-----------|
|`runnerToSet` |  The mock instance of QRunner. |

<!-- panels:end -->
---
