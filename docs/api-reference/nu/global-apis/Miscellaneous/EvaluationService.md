# EvaluationService class

A service to facilitate the logical evaluation of business rules.

---
## Properties

### `ADDITIONAL_SETTINGS_MAP_KEY` → `String`

### `Instance` → `EvaluationService`

A singleton for all service iterations.

---
## Methods
### `evaluate(EvaluationServiceRequest request)` → `EvaluationServiceResponse`

Evaluates the specified request. Depending on configuration, this could operate in a chain-like series of evaluations, returning a single response.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The request to evaluate. |

#### Return

**Type**

EvaluationServiceResponse

**Description**

An EvaluationServiceResponse containing the final IEvaluation for obtaining a Boolean result.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if request is null. |

---
