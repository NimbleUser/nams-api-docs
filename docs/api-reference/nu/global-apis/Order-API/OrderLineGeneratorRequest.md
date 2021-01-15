# OrderLineGeneratorRequest class

Request that will be passed into an IOrderLineGenerator in order to generate Order Lines.

---
## Constructors
### `OrderLineGeneratorRequest(Id accountId, DateTime transactionDate)`

Constructs an OrderLineGeneratorRequest based on the passed in parameters.
#### Parameters
|Param|Description|
|-----|-----------|
|`accountId` |  Account Id for whom order lines will be generated. |
|`transactionDate` |  Date of the transaction. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the arguments is null. |

---
## Properties

### `AccountId` → `Id`

Account Id for whom order lines will be generated.

### `ProductPricingInfos` → `List<ProductPricingInfo>`

List of ProductPricingInfo that contains information regarding the products that will be used to create the order lines, like product Id and quantity.

### `TransactionDate` → `DateTime`

Date of the transaction.

---
## Methods
### `addProductPricingInfo(ProductPricingInfo productPricingInfoParam)` → `void`

Adds a ProductPricingInfo to the request, with information regarding the product for which the OrderLine will be created.

#### Parameters
|Param|Description|
|-----|-----------|
|`productPricingInfoParam` |  The ProductPricingInfo to add. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if productPricingInfoParam is null. |

---
