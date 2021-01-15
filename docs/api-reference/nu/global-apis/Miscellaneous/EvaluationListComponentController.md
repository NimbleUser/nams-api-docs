# EvaluationListComponentController class

Controls the evaluation list Lightning component.

---
## Methods
### `getEvaluations(String businessRuleName)` → `String`

Gets a JSON serialized String of all MDT_Evaluation wrappers for the specified business rule name.

#### Parameters
|Param|Description|
|-----|-----------|
|`businessRuleNameThe` |  name of the business rule to retrieve wrappers for. |

#### Return

**Type**

String

**Description**

A JSON serialized String of all MDT_Evaluation wrappers for the specified business rule name.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if businessRuleName is null. |

---
