## EvaluationsApiPersistenceService class

`NamespaceAccessible`

Service in charge of persisting Evaluation objects.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `commitWork()` → `Id`

`NamespaceAccessible`

Commits all of the registered objects into the database.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `register(Evaluation objectToRegister)` → `EvaluationsApiPersistenceService`

`NamespaceAccessible`

Registers an [Evaluation](apis/EvaluationsApi/Evaluation.md) for upsert. The [Evaluation](apis/EvaluationsApi/Evaluation.md) along with all of it's internal data (criteria) will be saved into the database when commitWork is called.

##### Parameters
|Param|Description|
|-----|-----------|
|`objectToRegister` |  The [Evaluation](apis/EvaluationsApi/Evaluation.md) object to register. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `register(List<Evaluation> objectsToRegister)` → `EvaluationsApiPersistenceService`

`NamespaceAccessible`

Registers a list [Evaluation](apis/EvaluationsApi/Evaluation.md) for upsert. The [Evaluation](apis/EvaluationsApi/Evaluation.md) along with all of its internal data (criteria) will be saved into the database when commitWork is called.

##### Parameters
|Param|Description|
|-----|-----------|
|`objectsToRegister` |  The list of [Evaluation](apis/EvaluationsApi/Evaluation.md) object to register. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setCallback(MetadataPersistenceCallback callback)` → `EvaluationsApiPersistenceService`

`NamespaceAccessible`

Sets the callback to be executed after the async process has finished.

##### Parameters
|Param|Description|
|-----|-----------|
|`callback` |  The callback to execute. |

<!-- panels:end -->
---
