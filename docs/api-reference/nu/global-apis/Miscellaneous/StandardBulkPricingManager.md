# StandardBulkPricingManager class

Exposes methods for the bulk standard Pricing Manager. Exposes methods to determine the price class and product pricing for multiple customers.

---
## Methods
### `GetPriceClasses(BulkPriceClassRequest bulkPriceClassRequest)` → `BulkPriceClassResponse`

Returns the Price Class name based on the PriceClassRequest passed in for multiple customers. If it is determined that the Account is a Member, returns the Member Price Class name; otherwise, returns the Default Price Class name.

#### Parameters
|Param|Description|
|-----|-----------|
|`BulkPriceClassRequest` |  the bulkPriceClassRequest |

#### Return

**Type**

BulkPriceClassResponse

**Description**

The BulkPriceClassResponse containing the price class names

### `GetProductPrices(BulkProductPricingRequest bulkProductPricingRequest)` → `BulkProductPricingResponse`

Gets the product pricing for each customer and returns that in the response.

#### Parameters
|Param|Description|
|-----|-----------|
|`BulkPriceClassRequest` |  the bulkPriceClassRequest |

#### Return

**Type**

BulkProductPricingResponse

**Description**

The BulkProductPricingResponse containing the product pricing

---
