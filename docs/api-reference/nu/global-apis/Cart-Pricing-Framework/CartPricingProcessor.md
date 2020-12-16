# CartPricingProcessor class

This class implements IPricingProcessor. It is used in a trigger context to reprice carts after cart items are added, removed, or updated. This class will retrieve the IPricingRule classes for the CartItem__c or CartItemLine__c SObjectTypes and use them to determine which carts should be repriced. The actual calculation of special prices and DML are done by the CartPricingService.

---
## Constructors
### `CartPricingProcessor()`

Default constructor.
---
## Methods
### `getAdditionalData(PricingProcessorRequest request)` → `Object>`

This method can be overridden to get additional data based on the PricingProcessorRequest. The additional data will be represented as a map that will be provided to each of the IPricingRules used in the process method.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The PricingProcessorRequest that was passed into the process method. |

#### Return

**Type**

Object>

**Description**

Additional data represented as a Map<String, Object>.

### `process(PricingProcessorRequest request)` → `PricingProcessorResponse`

This method handles the repricing of any carts based on the specified request. First, the SObjectType will be determined from the specified request. Using that type, the IPricingRule classes are retrieved. The IPricingRule classes will then be used to determine which records should trigger repricing. This class then uses the PricingRuleResponses returned by the IPricingRules to reprice Carts with the CartPricingService.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The PricingProcessorRequest containing the records to process. |

#### Return

**Type**

PricingProcessorResponse

**Description**

A PricingProcessorResponse.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the request is null. |

---
