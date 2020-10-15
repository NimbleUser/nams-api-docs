## EvaluationContext class

`NamespaceAccessible`

Class that gives contextual information for an evaluation.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `forPersistenceSupport(IPersistenceSupport persistenceSupportObject)` → `EvaluationContext`

`NamespaceAccessible`

Builds an EvaluationContext with a contextual IPersistenceSupport.

##### Parameters
|Param|Description|
|-----|-----------|
|`persistenceSupportObject` |  The context object. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `forRecord(SObject record)` → `EvaluationContext`

`NamespaceAccessible`

Builds an EvaluationContext with a contextual record.

##### Parameters
|Param|Description|
|-----|-----------|
|`record` |  The context record. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `get(String key)` → `Object`

`NamespaceAccessible`

Gets the context by its key.

##### Parameters
|Param|Description|
|-----|-----------|
|`key` |  The key to get the context by. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `keySet()` → `Set<String>`

`NamespaceAccessible`

Gets a set of all context keys.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `newInstance()` → `EvaluationContext`

`NamespaceAccessible`

Creates an instance of EvaluationContext.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `put(String key, Object context)` → `EvaluationContext`

`NamespaceAccessible`

Adds a new context entry.

##### Parameters
|Param|Description|
|-----|-----------|
|`key` |  The context key. |
|`context` |  The context value. |

<!-- panels:end -->
---
