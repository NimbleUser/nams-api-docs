# IPricingRule interface

This interface is used to evaluate records to determine if they require repricing.

---
## Methods
### `evaluate(PricingRuleRequest request)` → `PricingRuleResponse`

This method is implemented to specify the logic which determines if a record meets criteria which would require carts to be repriced.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The PricingRuleRequest containing the records to evaluate. |

#### Return

**Type**

PricingRuleResponse

**Description**

A PricingRuleResponse containing the records that should trigger repricing and the records that do not.

---
