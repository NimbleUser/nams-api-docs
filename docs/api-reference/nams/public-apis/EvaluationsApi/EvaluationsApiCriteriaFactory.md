## EvaluationsApiCriteriaFactory class

`NamespaceAccessible`

In charge of creating [Criterion](apis/EvaluationsApi/Criterion.md) instances.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `create(List<SObject> criteria)` → `List<Criterion>`

`NamespaceAccessible`

Creates a list of [Criterion](apis/EvaluationsApi/Criterion.md) based on the passed in records.

##### Parameters
|Param|Description|
|-----|-----------|
|`criteria` |  The records to use to build the instances. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `createNew(CriterionType objectType)` → `Criterion`

`NamespaceAccessible`

Creates a new [Criterion](apis/EvaluationsApi/Criterion.md).

##### Parameters
|Param|Description|
|-----|-----------|
|`objectType` |  The type of [Criterion](apis/EvaluationsApi/Criterion.md) to create. |

<!-- panels:end -->
---
