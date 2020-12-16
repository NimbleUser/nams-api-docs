# PricingFrameworkTestHelpers class

This class is used to register IPricingProcessor and IPricingRule implementations in the PricingProcessorService cache for mocking unit tests.

---
## Methods
### `setPricingProcessor(Schema.SObjectType objectType, IPricingProcessor processor)` → `void`

This method adds an IPricingProcessor instance to the PricingProcessorService cache for the specified SObjectType.

#### Parameters
|Param|Description|
|-----|-----------|
|`objectType` |  A Schema.SObjectType. |
|`processor` |  An instance of IPricingProcessor. |

### `setPricingRules(Schema.SObjectType objectType, IPricingRule pricingRule)` → `void`

This method adds an IPricingRule instance to the PricingProcessorService cache for the specified SObjectType.

#### Parameters
|Param|Description|
|-----|-----------|
|`objectType` |  A Schema.SObjectType. |
|`pricingRule` |  An instance of IPricingRule. |

### `setPricingRules(Schema.SObjectType objectType, List<IPricingRule> pricingRules)` → `void`

This method adds IPricingRule instances to the PricingProcessorService cache for the specified SObjectType.

#### Parameters
|Param|Description|
|-----|-----------|
|`objectType` |  A Schema.SObjectType. |
|`pricingRules` |  A list containing instances of IPricingRule. |

---
