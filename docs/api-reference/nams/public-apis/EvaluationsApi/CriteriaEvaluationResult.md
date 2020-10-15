## CriteriaEvaluationResult class

`NamespaceAccessible`

Result class returned by evaluating [Criterion](apis/EvaluationsApi/Criterion.md) objects.

---
### Enums
#### ResultReason


`NamespaceAccessible`

Represents a type of result SUCCESS -> Used when the evaluation was successfully performed (not skipped or errored out), whether it resulted in a match or not. INSUFFICIENT_CONTEXT -> Used when context received by the [Criterion](apis/EvaluationsApi/Criterion.md) was not enough to perform an evaluation. EXCEPTION_THROWN -> When an error occurred during an evaluation

---
### Properties

#### `Criterion` → `public`

`NamespaceAccessible`

The [Criterion](apis/EvaluationsApi/Criterion.md) object in which the evaluation was performed.

#### `Match` → `Boolean`

`NamespaceAccessible`

Whether the evaluation resulted in a match or not.

#### `Skipped` → `Boolean`

`NamespaceAccessible`

Whether the evaluation was skipped or not.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `match(Boolean match)` → `CriteriaEvaluationResult`

`NamespaceAccessible`

Sets whether the evaluation resulted in a match or not.

##### Parameters
|Param|Description|
|-----|-----------|
|`match` |  True if the evaluation resulted in a match, false otherwise. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `newInstance(Criterion criterionObject)` → `CriteriaEvaluationResult`

`NamespaceAccessible`

Creates an instance of CriteriaEvaluationResult.

##### Parameters
|Param|Description|
|-----|-----------|
|`criterionObject` |  The [Criterion](apis/EvaluationsApi/Criterion.md) object in which the evaluation was performed. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `skipped(Boolean skipped)` → `CriteriaEvaluationResult`

`NamespaceAccessible`

Sets whether the evaluation was skipped or not.

##### Parameters
|Param|Description|
|-----|-----------|
|`skipped` |  True if the evaluation was skipped, false otherwise. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `withMessage(String message)` → `CriteriaEvaluationResult`

`NamespaceAccessible`

Sets a message explaining the result.

##### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `withReason(ResultReason reason)` → `CriteriaEvaluationResult`

`NamespaceAccessible`

Sets the reason for the evaluation result.

##### Parameters
|Param|Description|
|-----|-----------|
|`reason` |  The reason for the result. |

<!-- panels:end -->
---
