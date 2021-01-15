# PricingRuleRequest class

A request for IPricingRule classes. This class contains the records which need to be evaluated by an IPricingRule as well as any additional data which might be necessary.

---
## Constructors
### `PricingRuleRequest(List<SObject> recordsToEvaluate)`

Constructor that creates a new instance from a list of SObjects.
#### Parameters
|Param|Description|
|-----|-----------|
|`recordsToEvaluate` |  The records which will be evaluated by an IPricingRule. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if recordsToEvaluate is null. |

---
## Properties

### `Context` → `Object>`

A map containing additional data which may be necessary for evaluating the provided records.

### `Records` → `List<SObject>`

The records which will be evaluated by an IPricingRule.

---
