## Tracer class

`NamespaceAccessible`

Tracer class to retrieve stack trace relevant information.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `getLastTrace()` → `Trace`

`NamespaceAccessible`

Gets the most recent stack trace.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getTrace()` → `String`

`NamespaceAccessible`

Gets the stack trace.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getTrace(Set<String> classNamesToSkip)` → `String`

`NamespaceAccessible`

Gets the stack trace returns a stack trace where the passed in class names are ignored.

##### Parameters
|Param|Description|
|-----|-----------|
|`classNamesToSkip` |  The class names to be skipped. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getTraces()` → `List<Trace>`

`NamespaceAccessible`

Gets the stack traces.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `newInstance()` → `Tracer`

`NamespaceAccessible`

Creates an instance of Tracer.

<!-- panels:end -->
---
