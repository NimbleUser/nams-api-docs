## EvaluationResult class

`NamespaceAccessible`

Result class returned by evaluating [Evaluation](apis/EvaluationsApi/Evaluation.md) objects.

---
### Properties

#### `EvaluationObject` → `Evaluation`

`NamespaceAccessible`

Evaluated [Evaluation](apis/EvaluationsApi/Evaluation.md).

#### `Results` → `List<CriteriaEvaluationResult>`

`NamespaceAccessible`

List of [CriteriaEvaluationResult](apis/EvaluationsApi/CriteriaEvaluationResult.md) the make up this result.

#### `Skipped` → `Boolean`

`NamespaceAccessible`

Whether the evaluation was skipped or not

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `addResult(CriteriaEvaluationResult result)` → `EvaluationResult`

`NamespaceAccessible`

Adds a [CriteriaEvaluationResult](apis/EvaluationsApi/CriteriaEvaluationResult.md) to the list of results.

##### Parameters
|Param|Description|
|-----|-----------|
|`result` |  The result to add. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `addResults(List<CriteriaEvaluationResult> results)` → `EvaluationResult`

`NamespaceAccessible`

Adds a list of [CriteriaEvaluationResult](apis/EvaluationsApi/CriteriaEvaluationResult.md) to the list of results.

##### Parameters
|Param|Description|
|-----|-----------|
|`results` |  The results to add. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getMessage()` → `String`

`NamespaceAccessible`

Returns a formatted message detailing everything that got evaluated.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `matches()` → `Boolean`

`NamespaceAccessible`

Whether the evaluation resulted in a match or not.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `newInstance(Evaluation evaluationObject)` → `EvaluationResult`

`NamespaceAccessible`

Creates an instance of EvaluationResult.

##### Parameters
|Param|Description|
|-----|-----------|
|`evaluationObject` |  The [Evaluation](apis/EvaluationsApi/Evaluation.md) object that was evaluated. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `skip()` → `EvaluationResult`

`NamespaceAccessible`

Marks the evaluation result as skipped.

<!-- panels:end -->
---
