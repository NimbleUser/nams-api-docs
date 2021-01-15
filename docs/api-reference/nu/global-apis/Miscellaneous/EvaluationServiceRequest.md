# EvaluationServiceRequest class

Represents a request for the EvaluationService.

---
## Constructors
### `EvaluationServiceRequest(String businessRuleNameParam, IEvaluation fallbackEvaluatorParam, Object dataParam)`

Request an evaluation for the specified business rule name and fallback evaluator.
#### Parameters
|Param|Description|
|-----|-----------|
|`businessRuleNameParam` |  The business rule to request an IEvaluation for. |
|`fallbackHandlerParam` |  An IEvaluation to return if no configured evaluators are found |
|`dataParam` |  An optional object to pass into the IEvaluation evaluation process. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if businessRuleNameParam or fallbackEvaluatorParam argument are null. |

---
