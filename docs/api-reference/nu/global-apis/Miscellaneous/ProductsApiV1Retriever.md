# ProductsApiV1Retriever class

Responsible for retrieving products and returning the corresponding ProductBase instances.

---
## Constructors
### `ProductsApiV1Retriever()`

Create a new RetrieverImpl instance, setting any default plugins.
---
## Methods
### `count()` → `Integer`

Returns the number of products that would result from executing the query.

#### Return

**Type**

Integer

**Description**

The number of products that would result from the query execution.

### `get()` → `List<ProductBase>`

Gets products based on the provided plugins.

#### Return

**Type**

List<ProductBase>

**Description**

Wrapped products.

#### Throws
|Exception|Description|
|---------|-----------|
|`ProductsApiException` |  if any error occurs getting the records. |

### `getById(Set<Id> recordIds)` → `List<ProductBase>`

Get Product objects by their record Ids. Ids must be of type NU__Product__c.

#### Parameters
|Param|Description|
|-----|-----------|
|`recordIds` |  NU__Product__c record Ids to get Products by. |

#### Return

**Type**

List<ProductBase>

**Description**

Wrapped products.

#### Throws
|Exception|Description|
|---------|-----------|
|`ProductsApiException` |  if record Ids are not of type NU__Product__c, |

### `with(Pluggable plugin)` → `ProductsApiRetriever`

Extends the ProductBase being retrieved based on the passed in plugin.

#### Parameters
|Param|Description|
|-----|-----------|
|`plugin` |  Pluggable instance with the extension logic. |

#### Return

**Type**

ProductsApiRetriever

**Description**

Updated ProductsApiV1Retriever instance with the registered extension.

### `withAttributes()` → `ProductsApiV1Retriever`

Extends the ProductBase being retrieved to include their attributes information.

#### Return

**Type**

ProductsApiV1Retriever

**Description**

Updated ProductsApiV1Retriever instance with the ProductsWithAttributesPlugin plugin.

### `withPrices()` → `ProductsApiV1Retriever`

Extends the ProductBase being retrieved to include their prices information.

#### Return

**Type**

ProductsApiV1Retriever

**Description**

Updated ProductsApiV1Retriever instance with the registered plugin.

### `withPrices(Id accountId)` → `ProductsApiV1Retriever`

Extends the ProductBase being retrieved to include their prices information.

#### Parameters
|Param|Description|
|-----|-----------|
|`accountId` |  Account Id to get the prices for. |

#### Return

**Type**

ProductsApiV1Retriever

**Description**

Updated ProductsApiV1Retriever instance with the ProductsWithAttributesPlugin plugin.

### `withVariants()` → `ProductsApiV1Retriever`

Extends the ProductBase being retrieved to include their variants information.

#### Return

**Type**

ProductsApiV1Retriever

**Description**

Updated ProductsApiV1Retriever instance with the ProductsWithVariantsPlugin plugin.

### `withVariants(QCondition condition)` → `ProductsApiV1Retriever`

Extends the ProductBase being retrieved to include their variants information.

#### Parameters
|Param|Description|
|-----|-----------|
|`condition` |  The condition to apply to the ChildProducts__r sub-query. |

#### Return

**Type**

ProductsApiV1Retriever

**Description**

Updated ProductsApiV1Retriever instance with the ProductsWithVariantsPlugin plugin.

### `withVariants(List<QCondition> conditions)` → `ProductsApiV1Retriever`

Extends the ProductBase being retrieved to include their variants information.

#### Parameters
|Param|Description|
|-----|-----------|
|`conditions` |  The conditions to apply to the ChildProducts__r sub-query. |

#### Return

**Type**

ProductsApiV1Retriever

**Description**

Updated ProductsApiV1Retriever instance with the ProductsWithVariantsPlugin plugin.

---
