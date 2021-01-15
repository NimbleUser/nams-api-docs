# PricingProcessorService class

This class is used to retrieve IPricingProcessor classes and IPricingRule classes for particular SObjectTypes. It is also used to process SObjects using these classes.

---
## Properties

### `Instance` → `PricingProcessorService`

Gets a PricingProcessorService singleton.

---
## Methods
### `getProcessorAndRules(Request classRequest)` → `Response`

Gets the IPricingProcessor and IPricingRule classes that are configured for a particular SObjectType. The classes are cached so that callers can reference anything that the processors or rules might be storing while repricing carts.

#### Parameters
|Param|Description|
|-----|-----------|
|`classRequest` |  A request specifying the Schema.SObjectType to get classes for. |

#### Return

**Type**

Response

**Description**

A response containing the IPricingProcess class and IPricingRule classes.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if classRequest is null. |
|`ConfigurationException` |  if a PricingProcessor__mdt record does not exist for the specified SObjectType. |
|`ConfigurationException` |  if a PricingProcessor__mdt record specifies a class that does not implement IPricingProcessor. |
|`ConfigurationException` |  if a PricingRule__mdt record specifies a class that does not implement IPricingRule. |

### `newInstance()` → `PricingProcessorService`

Creates a brand new instance of PricingProcessorService with a clean cache.

#### Return

**Type**

PricingProcessorService

**Description**

A new PricingProcessorService.

---
## Inner Classes

### PricingProcessorService.Request class

A request class used for retrieving IPricingProcessor and IPricingRule classes.

---
#### Constructors
##### `Request(Schema.SObjectType objectType)`

Constructor to use when requesting IPricingProcessor and IPricingRule classes.
###### Parameters
|Param|Description|
|-----|-----------|
|`objectType` |  The Schema.SObjectType which specifies the classes to retrieve. |

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if objectType is null. |

---
#### Properties

##### `ObjectType` → `Schema.S`

The Schema.SObjectType the classes to retrieve should be configured for.

---
### PricingProcessorService.Response class

A response class which will contain the requested IPricingProcessor and IPricingRule classes.

---
#### Constructors
##### `Response(IPricingProcessor pricingProcessor, List<IPricingRule> pricingRules)`

Constructor used to create a response which contains an IPricingProcessor and a list of IPricingRule classes.
###### Parameters
|Param|Description|
|-----|-----------|
|`pricingProcessor` |  A class which implements IPricingProcessor. |
|`pricingRules` |  A list of classes implementing IPricingRule. |

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if either parameter is null. |

---
#### Properties

##### `Processor` → `IPricing`

A class that implements IPricingProcessor.

##### `Rules` → `List<IPricingRule>`

A list of classes which implement IPricingRule.

---
