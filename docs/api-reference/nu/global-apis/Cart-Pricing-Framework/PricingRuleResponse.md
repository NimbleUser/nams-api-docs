# PricingRuleResponse class

The response returned by IPricingRule classes. This response contains two separate lists of records. One for the records which will be triggering repricing and one for the records that will not.

---
## Constructors
### `PricingRuleResponse()`

Default constructor.
### `PricingRuleResponse(List<SObject> recordsForRepricing, List<SObject> remainingRecords)`

Constructor which accepts the records that have been processed by an IPricingRule class.
#### Parameters
|Param|Description|
|-----|-----------|
|`recordsForPricing` |  The records which should trigger repricing. |
|`remainingRecords` |  The records which should not trigger repricing. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if either parameter is null. |

---
## Properties

### `RecordsToPrice` → `List<SObject>`

The records which meet the criteria for repricing.

### `RemainingRecords` → `List<SObject>`

The records which do not meet the criteria for repricing.

---
